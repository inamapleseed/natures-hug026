<?php 
class ControllerExtensionModuleCustom4 extends controller {
	public function index() {
		$array = array(
            'oc' => $this,
            'heading_title' => 'Pop-up Notice',
            'modulename' => 'custom4',
            'fields' => array(
                array('type' => 'image', 'label' => 'Image', 'name' => 'image'),
            ),
        );
        $this->modulehelper->init($array);
	}
}