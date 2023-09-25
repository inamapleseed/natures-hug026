<?php
class ControllerExtensionModuleCustom3 extends Controller {
	public function index() {
		// Handle custom3 fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom3';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

	    $data['about'] = $this->load->controller('extension/module/custom/migrate');

		return $this->load->view('extension/module/custom3', $data);
	}
}