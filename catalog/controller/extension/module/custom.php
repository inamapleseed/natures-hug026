<?php
class ControllerExtensionModuleCustom extends Controller {
	public function index() {
		// Handle custom fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title' );
		$data['timage'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'timage' );
		$data['text'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'text' );

		$data['designs'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'designs' );

		$data['main'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'main' );
		$data['homemain'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'homemain' );

		$data['bottom'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'bottom' );
		$data['bottombg'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'bottombg' );

		return $this->load->view('extension/module/custom', $data);
	}
	public function migrate() {
		// Handle custom fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title' );
		$data['timage'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'timage' );
		$data['text'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'text' );

		$data['designs'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'designs' );

		$data['homemain'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'homemain' );

		$data['bottom'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'bottom' );
		$data['bottombg'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'bottombg' );

		return $data;
	}

}