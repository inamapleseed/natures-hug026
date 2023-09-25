<?php 
class ControllerExtensionModuleCustom2 extends controller {
    public function index() {
        $array = array(
            'oc' => $this,
            'heading_title' => 'Our Tale',
            'modulename' => 'custom2',
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
                array('type' => 'text', 'label' => 'Bottom Content Title', 'name' => 'slicktitle'),
                array('type' => 'image', 'label' => 'Bottom Content Title Image', 'name' => 'stimage'),

                array('type' => 'repeater', 'label' => 'Milestone', 'name' => 'bottom', 'fields' => array(
                    array('type' => 'image', 'label' => 'Content Image', 'name' => 'bimage'),
                    array('type' => 'text', 'label' => 'Title', 'name' => 'btitle'),
                    array('type' => 'text', 'label' => 'Description', 'name' => 'description'),
                ))
            ));
        $this->modulehelper->init($array);
    }
}