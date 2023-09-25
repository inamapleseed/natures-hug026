<?php
// init hitpay
require_once './system/library/hitpay-php-sdk/Request/CreatePayment.php';
require_once './system/library/hitpay-php-sdk/Request.php';
require_once './system/library/hitpay-php-sdk/Response/CreatePayment.php';
require_once './system/library/hitpay-php-sdk/Response/PaymentStatus.php';
require_once './system/library/hitpay-php-sdk/Response/DeletePaymentRequest.php';
require_once './system/library/hitpay-php-sdk/Client.php';

class ControllerExtensionPaymentHitPay extends Controller {
	public function index() {

		$data['button_confirm'] = $this->language->get('button_confirm');

		$data['action'] = $this->url->link('extension/payment/hitpay/send');

		return $this->load->view('extension/payment/hitpay', $data);
	}

	public function callback() {

        if ($this->config->get('hitpay_logging')) {
            $logger = new log('hitpay.log');
            $logger->write('callback get');
            $logger->write($this->request->get);
        }

        $this->load->model('checkout/order');
        $order_id = $this->session->data['order_id'];

        if ($this->request->get['status'] == 'completed') {
            $this->model_checkout_order->addOrderHistory($order_id, $this->config->get('hitpay_order_status_id'));
            $this->response->redirect($this->url->link('checkout/success', '', true));
        } else {
            $this->model_checkout_order->addOrderHistory($order_id, '7');
            $this->response->redirect($this->url->link('checkout/failure', '', true));
        }
	}

	public function webhook() {

        if ($this->config->get('hitpay_logging')) {
            $logger = new log('hitpay.log');
            $logger->write('webhook post');
            $logger->write($this->request->post);
        }

        $request = [];
        foreach ($this->request->post as $key=>$value) {
            if ($key != 'hmac'){
                $request[$key] = $value;
            }
        }

        if ($this->config->get('hitpay_mode') == 'live') {
            $hitPayClient = new \HitPay\Client($this->config->get('hitpay_api_key'), true);
        } else {
            $hitPayClient = new \HitPay\Client($this->config->get('hitpay_api_key'), false);
        }

        $hmac = $hitPayClient::generateSignatureArray($this->config->get('hitpay_signature'), (array)$request);

		if ($hmac == $this->request->post['hmac']) {
			$this->load->model('checkout/order');
			$this->model_checkout_order->addOrderHistory((int)$this->request->post['reference_number'], $this->config->get('hitpay_order_status_id'));
		}
	}

	public function send() {

        if ($this->config->get('hitpay_mode') == 'live') {
            $hitPayClient = new \HitPay\Client($this->config->get('hitpay_api_key'), true);
        } else {
            $hitPayClient = new \HitPay\Client($this->config->get('hitpay_api_key'), false);
        }

        $this->load->model('checkout/order');

        $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
        if ($order_info) {

            try {
                $request = new \HitPay\Request\CreatePayment();

                $request
                    ->setAmount((float)$this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false))
                    ->setCurrency(strtoupper($order_info['currency_code']))
                    ->setEmail($order_info['email'])
                    ->setPurpose('Order #' . $order_info['order_id'])
                    ->setName(trim($order_info['firstname']) . ' ' . trim($order_info['lastname']))
                    ->setReferenceNumber($order_info['order_id'])
                   // ->setPhone($order_info['telephone'])
                    ->setRedirectUrl($this->url->link('extension/payment/hitpay/callback'))
                    ->setWebhook($this->url->link('extension/payment/hitpay/webhook'))
                   // ->setAllowRepeatedPayments();
                   // ->setExpiryDate('false')
                   // ->setPaymentMethods($payment_methods)
                    ;
                    


                $result = $hitPayClient->createPayment($request);
                
                //debug($result);die;
                
                header('Location: ' . $result->url);

            } catch (\Exception $e) {
                print_r($e->getMessage());
            }
        }
	}
}