<?php
class Admin_Form_RowInfo extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('RowInfo');
        $elements = array();

		$elements[0] = new Zend_Form_Element_Text('xml');
		$elements[0]->setLabel('Xml')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[0]->setValue($options->xml);

		$elements[1] = new Zend_Form_Element_Submit('submit');
		$elements[1]->setAttrib('id', 'submitbutton');

		if($options!=null)
		{
			$elements[2] = new Zend_Form_Element_Hidden('id');
			$elements[2]->setValue($options->id);
		}
		$this->addElements($elements);   
    }
}
