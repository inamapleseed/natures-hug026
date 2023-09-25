<?php
class ControllerExtensionModuleCustom2 extends Controller {
	public function index() {
		// Handle custom2 fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom2';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title' );
		$data['timage'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'timage' );
		$data['text'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'text' );

		$data['designs'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'designs' );

		$data['main'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'main' );

		$data['bottom'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'bottom' );
		$data['bottombg'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'bottombg' );
		$data['slicktitle'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'slicktitle' );
		$data['stimage'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'stimage' );

		return $this->load->view('extension/module/custom2', $data);
	}
	public function migrate() {
		// Handle custom2 fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom2';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title' );
		$data['text'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'text' );

		return $data;
	}

}