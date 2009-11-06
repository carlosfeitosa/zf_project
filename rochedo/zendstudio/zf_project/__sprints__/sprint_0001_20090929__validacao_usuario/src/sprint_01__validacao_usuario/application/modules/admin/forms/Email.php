<?php
class Admin_Form_Email extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('Email');
        $elements = array();

		$elements[0] = new Zend_Form_Element_Text('uniqueId');
		$elements[0]->setLabel('UniqueId')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[0]->setValue($options->uniqueId);

		$elements[1] = new Zend_Form_Element_Text('email');
		$elements[1]->setLabel('Email')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[1]->setValue($options->email);

		$elements[2] = new Zend_Form_Element_Checkbox('validado');
		$elements[2]->setLabel('Validado');

        if($options!=null)
            $elements[2]->setValue($options->validado);

        $elements[3] = new Zend_Form_Element_Text('dataHoraUltimaValidacao');
        $elements[3]->setLabel('DataHoraUltimaValidacao')
                ->setAttrib('size', 15)
                ->setAttrib('id', 'date')
                ->setRequired(true)
                ->addFilter('StripTags')
                ->addFilter('StringTrim');

        if($options!=null)
            $elements[3]->setValue($options->dataHoraUltimaValidacao);

		$elements[4] = new Zend_Form_Element_Checkbox('ativo');
		$elements[4]->setLabel('Ativo');

        if($options!=null)
            $elements[4]->setValue($options->ativo);

        $elements[5] = new Zend_Form_Element_Hidden('pessoa');
        if($options!=null)
            $elements[5]->setValue($options->pessoa);

        $elements[6] = new Zend_Form_Element_Hidden('categoria');
        if($options!=null)
            $elements[6]->setValue($options->categoria);

		$elements[7] = new Zend_Form_Element_Submit('submit');
		$elements[7]->setAttrib('id', 'submitbutton');

		if($options!=null)
		{
			$elements[8] = new Zend_Form_Element_Hidden('id');
			$elements[8]->setValue($options->id);
		}
		$this->addElements($elements);   
    }
}
