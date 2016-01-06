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
	
	$application = JFactory::getApplication();

	if(empty($response))
	{
		$application->enqueueMessage($para->onafterpayment);
		// Add a message to the message queue
		$application->enqueueMessage(JText::_('付款失敗，沒收到任何回應'), 'error');
	}
	else
	{
		if($Status == 'SUCCESS' && $Amt == $price && $check_code == $CheckCode)
		{	
			$application->enqueueMessage($para->onafterpayment);
			$application->enqueueMessage(JText::_('付款完成!'));
		}
		else
		{
			$application->enqueueMessage($para->onafterpayment);
			// Add a message to the message queue
			$application->enqueueMessage(JText::_('付款失敗!'), 'error');
		}
	}

?>