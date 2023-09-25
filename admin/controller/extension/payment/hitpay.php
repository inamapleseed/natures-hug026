<?php
class ControllerExtensionPaymentHitPay extends Controller {
    private $error = array();

    public function index() {
        $this->load->language('extension/payment/hitpay');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('hitpay', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true));
        }

        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_all_zones'] = $this->language->get('text_all_zones');

        $data['text_live'] = $this->language->get('text_live');
        $data['text_sandbox'] = $this->language->get('text_sandbox');

        $data['help_total'] = $this->language->get('help_total');
        $data['help_title'] = $this->language->get('help_title');

        $data['entry_api_key'] = $this->language->get('entry_api_key');
        $data['entry_signature'] = $this->language->get('entry_signature');
        $data['entry_mode'] = $this->language->get('entry_mode');
        $data['entry_total'] = $this->language->get('entry_total');
        $data['entry_title'] = $this->language->get('entry_title');
        $data['entry_title_placeholder'] = $this->language->get('entry_title_placeholder');
        $data['entry_payment_method'] = $this->language->get('entry_payment_method');
        $data['entry_order_status'] = $this->language->get('entry_order_status');
        $data['entry_geo_zone'] = $this->language->get('entry_geo_zone');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_logging'] = $this->language->get('entry_logging');
        $data['entry_sort_order'] = $this->language->get('entry_sort_order');

        $data['heading_title'] = $this->language->get('heading_title');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['api_key'])) {
            $data['error_api_key'] = $this->error['api_key'];
        } else {
            $data['error_api_key'] = '';
        }

        if (isset($this->error['signature'])) {
            $data['error_signature'] = $this->error['signature'];
        } else {
            $data['error_signature'] = '';
        }

        if (isset($this->error['type'])) {
            $data['error_type'] = $this->error['type'];
        } else {
            $data['error_type'] = '';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_extension'),
            'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('extension/payment/hitpay', 'token=' . $this->session->data['token'], true)
        );

        $data['action'] = $this->url->link('extension/payment/hitpay', 'token=' . $this->session->data['token'], true);

        $data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true);

        if (isset($this->request->post['hitpay_api_key_sandbox'])) {
            $data['hitpay_api_key_sandbox'] = $this->request->post['hitpay_api_key_sandbox'];
        } else {
            $data['hitpay_api_key_sandbox'] = $this->config->get('hitpay_api_key_sandbox');
        }

        if (isset($this->request->post['hitpay_signature_sandbox'])) {
            $data['hitpay_signature_sandbox'] = $this->request->post['hitpay_signature_sandbox'];
        } else {
            $data['hitpay_signature_sandbox'] = $this->config->get('hitpay_signature_sandbox');
        }

        if (isset($this->request->post['hitpay_api_key'])) {
            $data['hitpay_api_key'] = $this->request->post['hitpay_api_key'];
        } else {
            $data['hitpay_api_key'] = $this->config->get('hitpay_api_key');
        }

        if (isset($this->request->post['hitpay_signature'])) {
            $data['hitpay_signature'] = $this->request->post['hitpay_signature'];
        } else {
            $data['hitpay_signature'] = $this->config->get('hitpay_signature');
        }

        if (isset($this->request->post['hitpay_mode'])) {
            $data['hitpay_mode'] = $this->request->post['hitpay_mode'];
        } else {
            $data['hitpay_mode'] = $this->config->get('hitpay_mode');
        }

        if (isset($this->request->post['hitpay_total'])) {
            $data['hitpay_total'] = $this->request->post['hitpay_total'];
        } else {
            $data['hitpay_total'] = $this->config->get('hitpay_total');
        }

        if (isset($this->request->post['hitpay_order_status_id'])) {
            $data['hitpay_order_status_id'] = $this->request->post['hitpay_order_status_id'];
        } else {
            $data['hitpay_order_status_id'] = $this->config->get('hitpay_order_status_id');
        }

        if (isset($this->request->post['hitpay_logging'])) {
            $data['hitpay_logging'] = $this->request->post['hitpay_logging'];
        } else {
            $data['hitpay_logging'] = $this->config->get('hitpay_logging');
        }
        if (isset($this->request->post['hitpay_title'])) {
            $data['hitpay_title'] = $this->request->post['hitpay_title'];
        } else {
            $data['hitpay_title'] = $this->config->get('hitpay_title');
        }

        $data['payment_methods'] = ['paynow_online' , 'card', 'wechat', 'alipay'];

        $this->load->model('localisation/order_status');

        $data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

        if (isset($this->request->post['hitpay_geo_zone_id'])) {
            $data['hitpay_geo_zone_id'] = $this->request->post['hitpay_geo_zone_id'];
        } else {
            $data['hitpay_geo_zone_id'] = $this->config->get('hitpay_geo_zone_id');
        }

        $this->load->model('localisation/geo_zone');

        $data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();

        if (isset($this->request->post['hitpay_status'])) {
            $data['hitpay_status'] = $this->request->post['hitpay_status'];
        } else {
            $data['hitpay_status'] = $this->config->get('hitpay_status');
        }

        if (isset($this->request->post['hitpay_sort_order'])) {
            $data['hitpay_sort_order'] = $this->request->post['hitpay_sort_order'];
        } else {
            $data['hitpay_sort_order'] = $this->config->get('hitpay_sort_order');
        }

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');


        $this->response->setOutput($this->load->view('extension/payment/hitpay', $data));
    }

    protected function validate() {
        if (!$this->user->hasPermission('modify', 'extension/payment/hitpay')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if (!$this->request->post['hitpay_api_key']) {
            $this->error['api_key'] = $this->language->get('error_api_key');
        }

        if (!$this->request->post['hitpay_signature']) {
            $this->error['signature'] = $this->language->get('error_signature');
        }

        return !$this->error;
    }
}