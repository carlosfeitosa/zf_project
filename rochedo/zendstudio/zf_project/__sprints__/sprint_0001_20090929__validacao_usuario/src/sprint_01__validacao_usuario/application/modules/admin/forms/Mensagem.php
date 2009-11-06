<?php
class Admin_Form_Mensagem extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('Mensagem');
        $elements = array();

		$elements[0] = new Zend_Form_Element_Text('remetente');
		$elements[0]->setLabel('Remetente')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[0]->setValue($options->remetente);

		$elements[1] = new Zend_Form_Element_Text('destinatario');
		$elements[1]->setLabel('Destinatario')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[1]->setValue($options->destinatario);

		$elements[2] = new Zend_Form_Element_Text('assunto');
		$elements[2]->setLabel('Assunto')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[2]->setValue($options->assunto);

        $elements[3] = new Zend_Form_Element_Text('dataHora');
        $elements[3]->setLabel('DataHora')
                ->setAttrib('size', 15)
                ->setAttrib('id', 'date')
                ->setRequired(true)
                ->addFilter('StripTags')
                ->addFilter('StringTrim');

        if($options!=null)
            $elements[3]->setValue($options->dataHora);

		$elements[4] = new Zend_Form_Element_Text('mensagem');
		$elements[4]->setLabel('Mensagem')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[4]->setValue($options->mensagem);

		$elements[5] = new Zend_Form_Element_Submit('submit');
		$elements[5]->setAttrib('id', 'submitbutton');

		if($options!=null)
		{
			$elements[6] = new Zend_Form_Element_Hidden('id');
			$elements[6]->setValue($options->id);
		}
		$this->addElements($elements);   
    }
}
