<?php
class ControllerExtensionPaymentDbsPaynowQr extends Controller {

	public function index() {
		$this->load->language('extension/payment/dbs_paynow_qr');

		$data['error'] = false;

		$order_id    = $this->session->data['order_id'];
		$order_info  = $this->model_checkout_order->getOrder($order_id);


		// $order_total = $this->currency->format($order_info['total'], $order_info['currency_code'], '', false);
		$order_total = round($order_info['total'],2);
		$order_total = number_format($order_total, 2, '.', '');  
		// $order_total = "20.05";
		// debuginfo($order_total);exit;


		$data['qrImgBase64'] = false;
		$today = date('Y-m-d H:i:s');
		$datetime = date('YmdHis',strtotime($today . ' + 1 hour')); /* 20200101123456 */
		$orderReferenceNo = sprintf("%07d", $order_id);

	   	$merchant_id = $this->load->controller('extension/fds_api/getMerchantId');
		$merchantId = sprintf("%05d", $merchant_id);
		$tag62 =  $merchantId . 'MD' . $orderReferenceNo;

		/* create dbs reference no. */
		$sql = "INSERT INTO " . DB_PREFIX . "dbs_order SET order_id = '".$order_id."', customer_reference = '".$this->db->escape($tag62)."' ";
		$this->db->query($sql);

		// save into FDS
		$toFDS = array(
			'order_id' => (int)$order_id,
			'tag62' => $this->db->escape($tag62),
		);

	   	$this->load->controller('extension/fds_api/saveDBSOrder', $toFDS);
		// save into FDS

		if ($merchant_id && $order_info) {	

			$postcode = '';
			if(isset($order_info['payment_postcode']) && !empty($order_info['payment_postcode'])) {
				$postcode = $order_info['payment_postcode'];
			}

			/* java bridge */
			// require_once(DIR_SYSTEM . "library/JavaBridge/java/Java.inc");
			// require_once("D:/xampp/tomcat/webapps/JavaBridge/java/Java.inc");
			// include("http://fcscommerce.online:10000/JavaBridge/java/Java.inc");
			// ex
			
			// $pathInPieces = explode('/', $_SERVER['DOCUMENT_ROOT']);
			// unset($pathInPieces[count($pathInPieces)-1]);
			// $root = implode('/', $pathInPieces) . '/';
			// require_once($root . "ea-tomcat85/webapps/JavaBridge/java/Java.inc");
	 		/* 
		 		String merchantCategoryCode, 
		 		String txnCurrency, 
		 		String countryCode, 
		 		String merchantName, 
		 		String merchantCity, 
		 		String globalUniqueID, 
		 		String proxyType, 
		 		String proxyValue, 
		 		String editableAmountInd, 
		 		String expiryDate,
	 		*/
			/*
		        qrPayNowObj.setPointOfInitiationMethod("11");
		        qrPayNowObj.setGlobalUniqueID("SG.PAYNOW");
		        qrPayNowObj.setProxyType("2");
		        qrPayNowObj.setProxyValue("591111111Z");
		        qrPayNowObj.setEditableAmountInd("0");
		        qrPayNowObj.setExpiryDate("20201231");
		        qrPayNowObj.setMerchantCategoryCode("0000");
		        qrPayNowObj.setTxnCurrency("702");
		        qrPayNowObj.setTxnAmount("1.00");
		        qrPayNowObj.setMerchantName("Test merchant");
		        qrPayNowObj.setCountryCode("SG");
		        qrPayNowObj.setMerchantCity("Singapore");
		        qrPayNowObj.setPostalCode("123456");
		        qrPayNowObj.setBillNumber("KUSHTESTING123");
			*/
		        
			// $qrPayNowObj = new Java("com.dbs.sgqr.generator.io.PayNow",
			// 	"0000",  /* fixed value */
			// 	"702",  /* fixed SGD */
			// 	"SG", /* fixed SG */
			// 	$this->config->get('dbs_paynow_qr_merchant_name'), /* allow key in (need to be agreed by merchant and bank */
			// 	"Singapore",  /* fixed value */
			// 	"SG.PAYNOW", /* fixed value */
			// 	"2", // UEN  
			// 	$this->config->get('dbs_paynow_qr_proxy_value'), /* allow key in (need to be agreed by merchant and bank */ 
			// 	'0', /* This is to determine if the consumer scanning the QR can edit/change the amount or you want them to follow your amount . Looking at the use case, I think it should be “0” which means consumer scanning cannot change the amount */ 
			// 	$datetime /* 20200101123456 */
			// );
		        // debug($this->config->get('dbs_paynow_qr_proxy_value'));exit;
		        // here

			include("http://fcscommerce.online:10000/JavaBridge/java/Java.inc");
			
			$qrPayNowObj = new Java("com.dbs.sgqr.generator.io.PayNow");
			$qrPayNowObj->setPayloadFormatInd("01");

		        $qrPayNowObj->setPointOfInitiationMethod("11");
		        $qrPayNowObj->setGlobalUniqueID("SG.PAYNOW");
		        $qrPayNowObj->setProxyType("2");
		        $qrPayNowObj->setProxyValue($this->config->get('dbs_paynow_qr_proxy_value'));
		        $qrPayNowObj->setEditableAmountInd("0");
		        $qrPayNowObj->setExpiryDate($datetime); /* 20200101123456 */
		        $qrPayNowObj->setMerchantCategoryCode("0000");
		        $qrPayNowObj->setTxnCurrency("702");
		        $qrPayNowObj->setTxnAmount($order_total); /* 24.99 */
		        $qrPayNowObj->setMerchantName($this->config->get('dbs_paynow_qr_merchant_name')); /* Test Merchant */
		        $qrPayNowObj->setCountryCode("SG");
		        $qrPayNowObj->setMerchantCity("Singapore");
		        $qrPayNowObj->setPostalCode($postcode); /* 400011 */
		        $qrPayNowObj->setBillNumber($tag62); /* FCSTEST00034 */


			$sgqrObj = $qrPayNowObj;

			$QRDimensions = new Java("com.dbs.sgqr.generator.io.QRDimensions");
			$qrCodeGenerator = new Java("com.dbs.sgqr.generator.QRGeneratorImpl");
			$QRType = new Java("com.dbs.sgqr.generator.io.QRType");
			$PAY_NOW = $QRType->PAY_NOW;
			$qrCodeResponse = $qrCodeGenerator->generateSGQR($PAY_NOW, $sgqrObj, $QRDimensions);
			$qrString = java_values($qrCodeResponse->getSgqrPayload());
			// debug($qrString);
			$ImageStreamInBase64Format = java_values($qrCodeResponse->getImageStream());
			// $data['qr_image_string'] = "00020101021226580009SG.PAYNOW010120213776600489GSG10301004142020033112571852040000530370254074277.715802SG5905XXXXX6009Singapore6210010644234563042162";
			$data['qrImgBase64'] = $ImageStreamInBase64Format;
		        // here

		        // $data['qrImgBase64'] = "iVBORw0KGgoAAAANSUhEUgAAASwAAAEsAQAAAABRBrPYAAAEPUlEQVR42u2aW27kOhBDawe1/13WDmrEQ6mnfwaYrxD3YpKg07ZpwJLqQVKu/ZufqX+w/xJsqmpqtqt1PL0z1d3b579+q3Kwc3Hm/JsDPIe64fwJOnp6/cVg5zHPJQ2l77XWCPjqy1HYeVSd09yusKXBgJ48bM4xa9+tpdZZQc6NWZiWfjmvpycGNLvnO9P7HSE/Dise9I8/35n10zCXkiF9+dEj6/lP2jhrNgdTypxFL5cYRtTNnax+T+VgJzscinzotm5jlDmqijHYUGV0qp0oLPXwdZ1FMdhqkfXUnNNEz20gSvFzXBuDnedUyrLiWm9CU5+97UzuGIwhKCxVX4pyqHBgspnoJEx1by8doPUqYwRg2eeOIwNzUVn1DU22gsD3qVbPDdMQTIdute0SuK6JROltICmYGyzXzuM3S78s+OwnAFKwgoCW06TGxVnn5pKWHIz5dRWEUCmXV3yAtNZ9OVjdEr2iKC7KQ92+HWQ6BlMGq9a1Olu1JxWCDM3rcVimYKp15TXWzML1PNdSPj0xGDqMXH6trLTcanVDPm0QRmFG9hCJs+6/VzU2jCUE08y6kTGAZkwINFJ8Z3Iw2hdUT4mtG245vHnevTHYOEugJSTxXJWIaNSkVw5GAzN/L1drq+0tuxSP5gVga7ZJsSEomWjntsXGBGGwpoGY0HvdTjB5VBa7gjD3WmJx695EASxsgJoYbF5ng1Cx7paNNp+qrk2XgC1Hg87BsbuCh7FQanIwZOGYDD+XQggaSll+x2Dw4cIIY5nhpG4nwxAqB0NPPLu1zFE0MGvEqleiAzD7wfCARn2R22N7mKY8QZhZsOvM9tXY5lHcvDEYjPOqHDqIqsv1NxtPtnIw1l1zepmnGshYi8EPXjonYLZcbb0+tb2v0aHSYjDqIEZdv4rYqIl6HsDmYCp5PCtT3C+LsKE0w1Ux2Fjz2+J0fEJJu36zvhjMtWUt/xGtUNJtW54vLDMwrXSRJfBOOKdG0y40nYOpOjOdfGMYNBFl9dqvy8F6noWDyUSZNvFD99RXJf9pGEEIa7ndFxfHtmZ1fypSArb2qtfSgsJy5cSVidcKS8DUc+3qEILlBnyD01Odg3mnkBHc3S+7deU0/yjKAIzZXFdnM2QW/GpYh2YMdg3NufrB4toteOm/Qdh4Fx/jREVGCdyosPqiUhkYvAQIBgokjz6M2vlQggyMxOATEuD0Ri2+lw9SMF4qYLl1vS4FtRuMq7hBGEQP2YOKsIloC0DT/dsKS8BQNWXN89nm6ut5imHFYLiY632v9daIeTEk7zo8IdjcXcKZt8863i1R3yC9Nwd79iYD8D1zXxL6tiYiMCwSiwg6G0HgtyK+IyQHMw8lLt8Lad5a+uwIxGD2DtlmWi88G+k46r052M2YO7dtfaZxtKXiV4T8OOymjAnyemO/+73zMrsdg/17Ofb/BvsFBVZ9h6SFBUkAAAAASUVORK5CYII=";
		} 

		$data['timeout_timing'] = 0;
		if ($this->config->get('dbs_paynow_qr_timeout')) {
			$data['timeout_timing'] = $this->config->get('dbs_paynow_qr_timeout');
		}
		$data['cancel_url'] = $this->url->link('checkout/cart');

		$data['text_instruction'] = $this->language->get('text_instruction');
		$data['text_paynow_unavailable'] = $this->language->get('text_paynow_unavailable');
		$data['text_time_out'] = $this->language->get('text_time_out');
		$data['button_confirm'] = $this->language->get('button_confirm');

		$data['instruction'] = nl2br($this->config->get('dbs_paynow_qr_instruction' . $this->config->get('config_language_id')));
		$data['image'] = $this->config->get('paynow_image');

		$data['continue'] = $this->url->link('checkout/success');

		return $this->load->view('extension/payment/dbs_paynow_qr', $data);
	}

	/**
	 * @return string
	 */
	public function checkStatus() {
		// debug($this->session->data['order_id']);exit;
		$json = array();

		if (isset($this->session->data['order_id']) && !empty($this->session->data['order_id'])) {
			$this->load->model('checkout/order');
			$this->load->language('extension/payment/dbs_paynow_qr');
			
			$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

			if ($order_info) {
				if ( $order_info['order_status_id'] == $this->config->get('dbs_paynow_qr_order_status_id') ) {
					$json['redirect'] = $this->url->link('checkout/success', '', true);
				}
				if ( in_array($order_info['order_status_id'], $this->config->get('config_cancel_status') ) ){
					$json['redirect'] = $this->url->link('checkout/failure', '', true);
				}
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));

	}
	public function addOrderHistory() {
		if (isset($this->request->post) && isset($this->request->post['order_id']) && $this->request->post['order_id']) {
			$this->load->model('checkout/order');
			$this->model_checkout_order->addOrderHistory($this->request->post['order_id'],$this->config->get('dbs_paynow_qr_order_status_id'));
		}
	}


/* functions below are not in used */



	private function isJson($string) {
	    json_decode($string);
	    return (json_last_error() == JSON_ERROR_NONE);
	}
	private function common_log($message) {

		// setting error logging to be active 
	    ini_set("log_errors", TRUE);

		// setting the logging file in php.ini 
	    ini_set('error_log', SAC_ERROR_LOG);

		// logging the error 
	    error_log($message);
	}
	public function icn() {
		// ini_set('display_errors', 1);
		// ini_set('display_startup_errors', 1);
		// error_reporting(E_ALL);

		echo "OK";
	
		// process payment
		$result = '';

		require_once DIR_SYSTEM . 'library/dbs/vendor/autoload.php';
		require_once DIR_SYSTEM . 'library/dbs/config/config.php';
		require_once DIR_SYSTEM . 'library/dbs/Crypt/GPG.php';
		try {
	        // $this->common_log('<===============================Notification start================================>');
			 	$gpg = new Crypt_GPG(array('digest-algo' => DIGEST_ALGO, 'cipher-algo' => CIPHER_ALGO, 'compress-algo' => COMPRESS_ALGO)); 
	        // Receiving encrypted notification data
	        // $this->common_log('<-----Received data start----->');
	        $data = file_get_contents("php://input");
			// $this->log->write($data);

	        // $this->common_log($data);
	        // $this->common_log('<-----Received data end----->');
	        if ($this->isJson($data)) {
	            // $this->common_log('Got json response instead of encrypted text in notification callback');
	            return $data;
	        } else {
	            // Add decrypt key
	            $gpg->addDecryptKey(CLI_KEY_ID, CLI_PVT_KEY_PASS);
	            // Decrypt requested data
	            // $this->common_log('<-----Decrypted data start----->');
	            $decryptedData = $gpg->decryptAndVerify($data);
	            // $this->common_log($decryptedData['data']);
	            // $this->common_log('<-----Decrypted data end----->');
	            if (isset($decryptedData) && !empty($decryptedData)) {

					$this->updateOrderStatus($decryptedData,1);
	                $api_response['status'] = "success";
	                $api_response['message'] = 'Successfully received notification';
	            } else {
					$this->updateOrderStatus($decryptedData,0);

	                $api_response['status'] = "error";
	                $api_response['message'] = 'Something went wrong';
	            }
	       		$result = json_encode($api_response);

				$this->log->write($decryptedData);
	        }
	        // $this->common_log('<===============================Notification end================================>');
	        exit();
	    } catch (Exception $e) {
	        // echo $e->getMessage();
			$this->log->write($e->getMessage());
	    }

		// add order history

		// ajax to refresh DBS QR page
	}

	private function updateOrderStatus($decryptedData,$success) {
		if ($success) {
			$data = json_decode($decryptedData['data']);
			$header = $data->header;
			$txninfo = $data->txninfo;

			$customerReference = $txninfo->customerReference;

			$getOrderId = "SELECT order_id FROM " . DB_PREFIX . "dbs_order WHERE customer_reference = '".$this->db->escape($customerReference)."'" ;

			$queryOrderId = $this->db->query($getOrderId);

			$order_id = $queryOrderId->row['order_id'];

			$sql = "UPDATE " .DB_PREFIX. "dbs_order SET 
			msg_id = '".$this->db->escape($header->msgId)."',
			org_id = '".$this->db->escape($header->orgId)."',
			time_stamp = '".$this->db->escape($header->timeStamp)."',
			txn_type = '".$this->db->escape($txninfo->txnType)."',
			txn_ref_id = '".$this->db->escape($txninfo->txnRefId)."',
			txn_date = '".$this->db->escape($txninfo->txnDate)."',
			txn_ccy = '".$this->db->escape($txninfo->amtDtls->txnCcy)."',
			txn_amt = '".$this->db->escape($txninfo->amtDtls->txnAmt)."'
			WHERE customer_reference = '".$this->db->escape($customerReference)."'";

			$this->db->query($sql);

			$this->load->model('checkout/order');

			$this->model_checkout_order->addOrderHistory($order_id,$this->config->get('dbs_paynow_qr_order_status_id'));
			/*
			[header] => stdClass Object
		        (
		            [msgId] => EBGPP00610268128000000C100000000000
		            [orgId] => SGMAX5
		            [timeStamp] => 2020-06-10T15:53:57.043
		            [ctry] => SG
		        )

	    	[txninfo] => stdClass Object
		        (
		            [txnType] => INWARD PAYNOW
		            [customerReference] => FCSTEST00249
		            [txnRefId] => 20200610155355187547
		            [txnDate] => 2020-06-10
		            [valueDt] => 2020-06-10
		            [receivingParty] => stdClass Object
		                (
		                    [name] => DBS MAX TESTING 5
		                    [accountNo] => 885626000208017
		                    [proxyType] => 
		                    [proxyValue] => 
		                )

		            [amtDtls] => stdClass Object
		                (
		                    [txnCcy] => SGD
		                    [txnAmt] => 24.99
		                )

		            [senderParty] => stdClass Object
		                (
		                    [name] => C Corp PayNow24
		                    [accountNo] => 
		                    [senderBankId] => DBSSSGS0XXX
		                    [senderBankCode] => 
		                    [senderBranchCode] => 
		                )

		            [rmtInf] => 
		        )

			)*/

		}
	}

	/*public function checkoutCallback() {

		if (isset($this->request->post['charge'])) {

			if (isset($this->request->get['order_id'])) {
				$this->load->library('dbs_paynow_qr');
				
				$this->load->model('extension/payment/dbs_paynow_qr');
				$this->load->model('checkout/order');

				if ($charge && $charge['status'] == 'successful' ) {
					// Status: processed.
					$this->model_checkout_order->addOrderHistory($order_id, $this->config->get('dbs_paynow_qr_order_status_id'));
					$this->response->redirect($this->url->link('checkout/success', '', 'SSL'));
				} elseif ($charge && $charge['status'] == 'pending') {
					$this->renderWaitingPage();
				} else  {				
					$this->model_checkout_order->addOrderHistory($order_id, $this->config->get('dbs_paynow_qr_failed_order_status_id'), $charge['failure_message']); // 7 failed status
					$this->response->redirect($this->url->link('checkout/failure', '', 'SSL'));
				}
			} else {
				$this->response->redirect($this->url->link('common/home'));
			}
		}
	}*/


	/*public function webhook() {
		$event = json_decode(file_get_contents('php://input'), true);
		if (!isset($event['key'])) {
			$this->response->addHeader('HTTP/1.1 400 Bad Request');
			return;
		}

		if ($event['key'] != 'charge.complete') {
			return;
		}

		$this->load->model('extension/payment/dbs_paynow_qr');

		$transaction = $this->model_extension_payment_dbs_paynow_qr->getOrderId($event['data']['id']);
		if (empty($transaction->row)) {
			return;
		}

		$this->request->get['order_id'] = $transaction->row['order_id'];
		return $this->refresh();
	}*/
}