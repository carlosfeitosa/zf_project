<?php
class Admin_Form_Login extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('Login');
        $elements = array();

		$elements[0] = new Zend_Form_Element_Text('login');
		$elements[0]->setLabel('Login')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[0]->setValue($options->login);

		$elements[1] = new Zend_Form_Element_Text('senha');
		$elements[1]->setLabel('Senha')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[1]->setValue($options->senha);

		$elements[2] = new Zend_Form_Element_Checkbox('ativo');
		$elements[2]->setLabel('Ativo');

        if($options!=null)
            $elements[2]->setValue($options->ativo);

		$elements[3] = new Zend_Form_Element_Text('tentativasFalhas');
		$elements[3]->setLabel('TentativasFalhas')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('Int');

        if($options!=null)
            $elements[3]->setValue($options->tentativasFalhas);

		$elements[4] = new Zend_Form_Element_Checkbox('travado');
		$elements[4]->setLabel('Travado');

        if($options!=null)
            $elements[4]->setValue($options->travado);

		$elements[5] = new Zend_Form_Element_Checkbox('resetado');
		$elements[5]->setLabel('Resetado');

        if($options!=null)
            $elements[5]->setValue($options->resetado);

        $elements[6] = new Zend_Form_Element_Text('dataHoraUltimoLogon');
        $elements[6]->setLabel('DataHoraUltimoLogon')
                ->setAttrib('size', 15)
                ->setAttrib('id', 'date')
                ->setRequired(true)
                ->addFilter('StripTags')
                ->addFilter('StringTrim');

        if($options!=null)
            $elements[6]->setValue($options->dataHoraUltimoLogon);

		$elements[7] = new Zend_Form_Element_Text('observacoes');
		$elements[7]->setLabel('Observacoes')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[7]->setValue($options->observacoes);

		$elements[8] = new Zend_Form_Element_Checkbox('podeExpirar');
		$elements[8]->setLabel('PodeExpirar');

        if($options!=null)
            $elements[8]->setValue($options->podeExpirar);

        $elements[9] = new Zend_Form_Element_Text('dataHoraProximaExpiracao');
        $elements[9]->setLabel('DataHoraProximaExpiracao')
                ->setAttrib('size', 15)
                ->setAttrib('id', 'date')
                ->setRequired(true)
                ->addFilter('StripTags')
                ->addFilter('StringTrim');

        if($options!=null)
            $elements[9]->setValue($options->dataHoraProximaExpiracao);

        $elements[10] = new Zend_Form_Element_Text('dataHoraUltimaExpiracao');
        $elements[10]->setLabel('DataHoraUltimaExpiracao')
                ->setAttrib('size', 15)
                ->setAttrib('id', 'date')
                ->setRequired(true)
                ->addFilter('StripTags')
                ->addFilter('StringTrim');

        if($options!=null)
            $elements[10]->setValue($options->dataHoraUltimaExpiracao);

		$elements[11] = new Zend_Form_Element_Submit('submit');
		$elements[11]->setAttrib('id', 'submitbutton');

		if($options!=null)
		{
			$elements[12] = new Zend_Form_Element_Hidden('id');
			$elements[12]->setValue($options->id);
		}
		$this->addElements($elements);   
    }
}
