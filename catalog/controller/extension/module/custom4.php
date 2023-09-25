<?php
class ControllerExtensionModuleCustom4 extends Controller {
	public function index() {
		// Handle custom4 fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom4';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['image'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'image' );

		return $this->load->view('extension/module/custom4', $data);
	}
		public function migrate() {
		// Handle custom4 fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom4';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['image'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'image' );

		return $data;
	}
}