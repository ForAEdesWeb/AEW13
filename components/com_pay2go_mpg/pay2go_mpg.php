<?php
	
	JTable::addIncludePath(JPATH_ADMINISTRATOR.'/components/com_j2store/tables');
	$order = JTable::getInstance('Orders', 'Table');
	
	$ncp             = & JPluginHelper::getPlugin('j2store', 'payment_Pay2go_MPG');
	$para            = json_decode($ncp->params);
	$MerchantID      = $para->MerchantID;
	$hashkey         = $para->hashkey;
	$hashiv          = $para->hashiv;
	$ExpireDate      = date("Ymd",strtotime('+'.(int)$para->ExpireDate.'day'));
			
	$response        = $_POST;
	$Amt			 = $response['Amt'];
	$MerchantID      = $response['MerchantID'];
	$MerchantOrderNo = $response['MerchantOrderNo'];
	$TradeNo		 = $response['TradeNo'];
	$CheckCode		 = $response['CheckCode'];
	$Status			 = $response['Status'];
	
	$order->load($MerchantOrderNo);
	$price = $order->order_total;
	$priceTranslate = explode('.', $price);
	$price = $priceTranslate[0];	
	
	$check_code = "&Amt=".$Amt."&MerchantID=".$MerchantID."&MerchantOrderNo=".$MerchantOrderNo."&TradeNo=".$TradeNo;
	$check_code = "HashIV=".$hashiv.$check_code."&HashKey=".$hashkey;
	$check_code = strtoupper(hash("sha256", $check_code));
			
	// ======================================================= 
	
	if(empty($response))
	{
		$transaction_details = '付款失敗，沒收到任何回應！'; 
		$transaction_status  = '本次交易使用智付寶線上金流模組。'; 
	}
	else
	{
		if($Status == 'SUCCESS' && $Amt == $price && $check_code == $CheckCode)
		{	
			$transaction_details 	= '付款完成！'; 
			$transaction_status  	= '本次交易使用智付寶線上金流模組。'; 
			$order_state 			= 'Confirmed';
			$order_state_id 		= '1';	
		}
		else
		{
			$transaction_details = '付款失敗，資料有誤！'; 
			$transaction_status  = '本次交易使用智付寶線上金流模組。';
		}
	}	
	
	$db = JFactory::getDbo();
	
    $sql  = "UPDATE #__j2store_orders SET ";  
    $sql .= " transaction_details = " . '"'.$transaction_details.'"';
	$sql .= " , transaction_status = " . '"'.$transaction_status.'"';
	
	if($order_state) {
		$sql .= " , order_state = " 		. '"'.$order_state.'"';
	}
    
	if($order_state_id) {
		$sql .= " , order_state_id = " 	. '"'.$order_state_id.'"';
	}
    	
    $sql .= " WHERE id = " . $MerchantOrderNo;	
							
	$db->setQuery($sql);
	$db->execute();
	
		
?>