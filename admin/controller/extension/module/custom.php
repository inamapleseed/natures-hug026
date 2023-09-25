<?php 
class ControllerExtensionModuleCustom extends controller {
	public function index() {
		$array = array(
            'oc' => $this,
            'heading_title' => 'About Page',
            'modulename' => 'custom',
            'fields' => array(
                array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                array('type' => 'image', 'label' => 'Title Image', 'name' => 'timage'),
                array('type' => 'textarea', 'label' => 'Text Content', 'name' => 'text', 'ckeditor' =>true),

                array('type' => 'repeater', 'label' => 'Content', 'name' => 'designs', 'fields' => array(
                    array('type' => 'image', 'label' => 'Design Image', 'name' => 'design'),
                )),

                array('type' => 'repeater', 'label' => 'Content', 'name' => 'main', 'fields' => array(
                    array('type' => 'image', 'label' => 'Main Image/s', 'name' => 'mainimage'),
                )),

                array('type' => 'image', 'label' => 'Background Image', 'name' => 'bottombg'),

                array('type' => 'repeater', 'label' => 'Mission/Vision', 'name' => 'bottom', 'fields' => array(
                    array('type' => 'image', 'label' => 'Content Image', 'name' => 'bimage'),
                    array('type' => 'text', 'label' => 'Title', 'name' => 'btitle'),
                    array('type' => 'text', 'label' => 'Description', 'name' => 'description'),
                )),

                //home

                array('type' => 'repeater', 'label' => 'Homepage Content', 'name' => 'homemain', 'fields' => array(
                    array('type' => 'image', 'label' => 'Main Image/s', 'name' => 'homemainimage'),
                )),                
            ));
        $this->modulehelper->init($array);
	}
}