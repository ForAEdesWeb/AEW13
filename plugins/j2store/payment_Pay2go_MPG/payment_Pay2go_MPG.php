<?php 

defined('_JEXEC') or die('Restricted access');
require_once (JPATH_ADMINISTRATOR.DS.'components'.DS.'com_j2store'.DS.'library'.DS.'plugins'.DS.'payment.php');

class plgJ2StorePayment_Pay2go_MPG extends J2StorePaymentPlugin
{
    var $_element = 'payment_Pay2go_MPG';

	function plgJ2StorePayment_online(& $subject, $config) 
	{
		parent::__construct($subject, $config);
				
		$this->loadLanguage( '', JPATH_ADMINISTRATOR );
	}

    function _prePayment( $data )
    {
		$vars 							= new JObject();
		
        $vars->order_id 				= $data['order_id'];
        $vars->orderpayment_id 			= $data['orderpayment_id'];
        $vars->orderpayment_amount 		= $data['orderpayment_amount'];
        $vars->orderpayment_type 		= $this->_element;
        $vars->offline_payment_method	= JRequest::setVar('offline_payment_method', $data);
		$vars->nw_username				= $data['orderinfo']['billing_first_name'].$data['orderinfo']['billing_last_name'];
		$vars->nw_useremail				= $data['orderinfo']['billing_email'];
		$vars->nw_userphone				= $data['orderinfo']['billing_phone_2'];
		
		$vars->onbeforepayment_text 	= $this->params->get('onbeforepayment', '');
		
        $html							= $this->_getLayout('prepayment', $vars);
	
        return $html;
    }
    
    function _postPayment( $data )
    {
        $orderpayment_id 		= JRequest::getVar('orderpayment_id');
        $offline_payment_method	= JRequest::getVar('offline_payment_method');
        $formatted 				= array( 'offline_payment_method' => $offline_payment_method );
		$nw_uname				= JRequest::getVar('nw_username');
		$nw_uemail				= JRequest::getVar('nw_useremail');
		$nw_uphone				= JRequest::getVar('nw_userphone');
		
        JTable::addIncludePath( JPATH_ADMINISTRATOR.DS.'components'.DS.'com_j2store'.DS.'tables' );
		
        $orderpayment = JTable::getInstance('Orders', 'Table');
        $orderpayment->load( $orderpayment_id );
		$orderpayment->transaction_details 	= '訂單完成，等待付款！'; 
        $orderpayment->transaction_status 	= '本次交易使用第三方線上金流模組。'; 
        $orderpayment->order_state 			= 'Pending';
        $orderpayment->order_state_id 		= 4; // PENDING 4
		       
        if ($orderpayment->save())
        {
			JLoader::register( 'J2StoreHelperCart', JPATH_SITE.DS.'components'.DS.'com_j2store'.DS.'helpers'.DS.'cart.php');
            J2StoreHelperCart::removeOrderItems( $orderpayment->id );			
        }
        else
        {
        	$errors[] = $orderpayment->getError(); 
        }

		$user = JFactory::getUser();
        
		if($user->id>0)
        {
			$userprofile 	  = JUserHelper::getProfile($user->id);
			$vars 			  = new JObject();
			$vars->user_name  = $user->name;
			$vars->user_email = $user->email;
		}
        else
        {
			$vars->user_name  = $nw_uname;
			$vars->user_email = $nw_uemail;
			$vars->user_phone = $nw_uphone;
		}
        		
		$vars->orderpayment_id 		= $orderpayment->id;
		$vars->ezship_email			= $this->params->get('ezmail');
		$vars->ret_url 				= JURI::base().'index.php/component/nicepayment';
		$vars->orderpayment_amount 	= ceil($orderpayment->orderpayment_amount);
		$vars->paymethod 			= $offline_payment_method;
		$pay2go_message 			= '';
		$pay2go_message 			= $this->Pay2go_MPG($orderpayment->orderpayment_amount, $orderpayment->id);

        require_once(JPATH_SITE.DS.'components'.DS.'com_j2store'.DS.'helpers'.DS.'orders.php');
		
		// 寄信錯誤
        // J2StoreOrdersHelper::sendUserEmail($orderpayment->user_id, $orderpayment->order_id, $orderpayment->transaction_status, $orderpayment->order_state, $orderpayment->order_state_id);
	   
		return $pay2go_message;
    }
    
    function _renderForm( $data )
    {
    	$user 					= JFactory::getUser();  
		
        $vars 					= new JObject();
        $vars->payment_method 	= $this->_paymentMethods();
		$vars->onselection_text	= $this->params->get('onselection', '');
		
        $html 					= $this->_getLayout('form', $vars);
		
        return $html;
    }
    
    function _verifyForm( $submitted_values )
    {
        $object = new JObject();
        $object->error = false;
        $object->message = '';
        $user = JFactory::getUser();
 
        foreach ($submitted_values as $key=>$value) 
        {
            switch ($key) 
            {
                case "offlinetype":
                    if (!isset($submitted_values[$key]) || !JString::strlen($submitted_values[$key])) 
                    {
                        $object->error = true;
                        $object->message .= "<li>".JText::_( "J2STORE_online_PAYMENT_TYPE_INVALID" )."</li>";
                    } 
                  break;
					default:
                  break;
            }
        }   
            
        return $object;
    }

    function _paymentMethods( $field='offline_payment_method', $default='', $options='' )
    {
        $types = array();
        
        if ($this->params->get('Pay2go_shop')) 
        {
            $types[] = JHTML::_('select.option', 'Pay2Go','Pay2Go' );    
        }
        
        if(count($types)) 
        {       
			$return = JHTML::_('select.genericlist', $types, $field, $options, 'value','text', $default);
		} 
        else 
        {
			$return = '';
		} 
        
        return $return;
    }

	function Pay2go_MPG($order_amt, $order_id)
    {
		$TestMode         	= $this->params->get('Pay2go_TestMode');
		
		$CREDIT           	= $this->params->get('Pay2go_CREDIT');
		$WEBATM           	= $this->params->get('Pay2go_WEBATM');
		$VACC             	= $this->params->get('Pay2go_VACC');
		$CVS           	  	= $this->params->get('Pay2go_CVS');
		$BARCODE          	= $this->params->get('Pay2go_BARCODE');
		$ALIPAY           	= $this->params->get('Pay2go_ALIPAY');
		$TENPAY          	= $this->params->get('Pay2go_TENPAY');
		
        $MerchantID         = $this->params->get('MerchantID');
        $hashkey            = $this->params->get('hashkey');
        $hashiv             = $this->params->get('hashiv');
        $ExpireDate         = date("Ymd",strtotime('+'.(int)$this->params->get('ExpireDate').'day'));
        $amt                = (int)$order_amt;
        $ReturnURL          = JURI::base().'index.php/component/pay2go_view';
        $NotifyURL          = JURI::base().'index.php/component/pay2go_mpg';
        $ClientBackURL      = '';
        $Email              = JRequest::getVar('nw_useremail');
        $LoginType          = '0';
        $MerchantOrderNo    = $order_id;
        
        $timestamp          = time();
        $version            = '1.1';
        $RespondType        = 'String';
        $itemdesc           = $this->params->get('Order_Desc');

        $check_code = "&Amt=".$amt."&MerchantID=".$MerchantID."&MerchantOrderNo=".$MerchantOrderNo."&TimeStamp=".$timestamp."&Version=".$version;
        $check_code = "HashKey=".$hashkey.$check_code."&HashIV=".$hashiv;
        $check_code = strtoupper(hash("sha256", $check_code));
		
		$postURL = ($TestMode == '1') ? 'https://capi.pay2go.com/MPG/mpg_gateway' : 'https://api.pay2go.com/MPG/mpg_gateway';
				
		$results    = "<form method='post' action='".$postURL."'  name='Pay2go'>";
		$results   .= "<input type='hidden' name='MerchantID' value='".$MerchantID."' />";
		$results   .= "<input type='hidden' name='HashKey' value='".$hashkey."' />";
		$results   .= "<input type='hidden' name='HashIV' value='".$hashiv."' />";
		$results   .= "<input type='hidden' name='RespondType' value='".$RespondType."' />";
		$results   .= "<input type='hidden' name='CheckValue' value='".$check_code."' />";
		$results   .= "<input type='hidden' name='TimeStamp' value='".time()."' />";
		$results   .= "<input type='hidden' name='Version' value='".$version."' />";
		$results   .= "<input type='hidden' name='MerchantOrderNo' value='".$MerchantOrderNo."' />";
		$results   .= "<input type='hidden' name='Amt' value='".$amt."' />";
		$results   .= "<input type='hidden' name='ItemDesc' value='".$itemdesc."' />";
		$results   .= "<input type='hidden' name='ExpireDate' value='".$ExpireDate."' />";
		$results   .= "<input type='hidden' name='ReturnURL' value='".$ReturnURL."' />";
		$results   .= "<input type='hidden' name='NotifyURL' value='".$NotifyURL."' />";
		$results   .= "<input type='hidden' name='ClientBackURL' value='".$ClientBackURL."' />";
		$results   .= "<input type='hidden' name='Email' value='".$Email."' />";
		$results   .= "<input type='hidden' name='LoginType' value='".$LoginType."' />";	
		
		$results   .= "<input type='hidden' name='CREDIT' value='".$CREDIT."' />";
		$results   .= "<input type='hidden' name='WEBATM' value='".$WEBATM."' />";
		$results   .= "<input type='hidden' name='VACC' value='".$VACC."' />";
		$results   .= "<input type='hidden' name='CVS' value='".$CVS."' />";
		$results   .= "<input type='hidden' name='BARCODE' value='".$BARCODE."' />";
		
		$results   .= "<input type='hidden' name='ALIPAY' value='".$ALIPAY."' />";
		$results   .= "<input type='hidden' name='TENPAY' value='".$TENPAY."' />";
				
		if($ALIPAY == '1' || $TENPAY == '1')
		{
			$results   .= "<input type='hidden' name='Receiver' value='".JRequest::getVar('nw_username')."' />";
			$results   .= "<input type='hidden' name='Tel1' value='".JRequest::getVar('nw_userphone')."' />";
			$results   .= "<input type='hidden' name='Tel2' value='".JRequest::getVar('nw_userphone')."' />";
			
			$results   .= "<input type='hidden' name='Count' value='1' />";
			
			$results   .= "<input type='hidden' name='Title1' value='".$this->params->get('Order_Desc')."' />";
			$results   .= "<input type='hidden' name='Desc1' value='".$this->params->get('Order_Desc')."' />";
			$results   .= "<input type='hidden' name='Pid1' value='".$order_id."' />";
			$results   .= "<input type='hidden' name='Qty1' value='1' />";
			$results   .= "<input type='hidden' name='Price1' value='".$amt."' />";
		}

		$results   .= "</form></body><script>Pay2go.submit();</script>";
            
		return $results;
	}

}