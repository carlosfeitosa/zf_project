<?php
class Admin_Form_Log extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('Log');
        $elements = array();

        $elements[0] = new Zend_Form_Element_Text('dataHoraEvento');
        $elements[0]->setLabel('DataHoraEvento')
                ->setAttrib('size', 15)
                ->setAttrib('id', 'date')
                ->setRequired(true)
                ->addFilter('StripTags')
                ->addFilter('StringTrim');

        if($options!=null)
            $elements[0]->setValue($options->dataHoraEvento);

		$elements[1] = new Zend_Form_Element_Text('xml');
		$elements[1]->setLabel('Xml')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[1]->setValue($options->xml);

        $elements[2] = new Zend_Form_Element_Hidden('categoria');
        if($options!=null)
            $elements[2]->setValue($options->categoria);

        $elements[3] = new Zend_Form_Element_Hidden('pessoaperfil');
        if($options!=null)
            $elements[3]->setValue($options->pessoaPerfil);

		$elements[4] = new Zend_Form_Element_Submit('submit');
		$elements[4]->setAttrib('id', 'submitbutton');

		if($options!=null)
		{
			$elements[5] = new Zend_Form_Element_Hidden('id');
			$elements[5]->setValue($options->id);
		}
		$this->addElements($elements);   
    }
}
