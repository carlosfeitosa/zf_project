<?php
class Admin_Form_Util extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('Util');
        $elements = array();

		$elements[0] = new Zend_Form_Element_Submit('submit');
		$elements[0]->setAttrib('id', 'submitbutton');

		if($options!=null)
		{
			$elements[1] = new Zend_Form_Element_Hidden('id');
			$elements[1]->setValue($options->id);
		}
		$this->addElements($elements);   
    }
}
