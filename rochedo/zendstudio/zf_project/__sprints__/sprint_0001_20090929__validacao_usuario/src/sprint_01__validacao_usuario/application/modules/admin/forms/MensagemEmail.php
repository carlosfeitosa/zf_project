<?php
class Admin_Form_MensagemEmail extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('MensagemEmail');
        $elements = array();

		$elements[0] = new Zend_Form_Element_Text('destinatariosCopiaCarbonada');
		$elements[0]->setLabel('DestinatariosCopiaCarbonada')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[0]->setValue($options->destinatariosCopiaCarbonada);

		$elements[1] = new Zend_Form_Element_Text('destinatariosCopiaCarbonadaCega');
		$elements[1]->setLabel('DestinatariosCopiaCarbonadaCega')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[1]->setValue($options->destinatariosCopiaCarbonadaCega);

		$elements[2] = new Zend_Form_Element_Text('responderPara');
		$elements[2]->setLabel('ResponderPara')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[2]->setValue($options->responderPara);

		$elements[3] = new Zend_Form_Element_Submit('submit');
		$elements[3]->setAttrib('id', 'submitbutton');

		if($options!=null)
		{
			$elements[4] = new Zend_Form_Element_Hidden('id');
			$elements[4]->setValue($options->id);
		}
		$this->addElements($elements);   
    }
}
