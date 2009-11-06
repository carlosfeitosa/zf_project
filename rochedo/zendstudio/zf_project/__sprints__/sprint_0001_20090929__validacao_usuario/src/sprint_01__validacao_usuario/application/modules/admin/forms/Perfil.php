<?php
class Admin_Form_Perfil extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('Perfil');
        $elements = array();

		$elements[0] = new Zend_Form_Element_Text('nome');
		$elements[0]->setLabel('Nome')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[0]->setValue($options->nome);

		$elements[1] = new Zend_Form_Element_Text('descricao');
		$elements[1]->setLabel('Descricao')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[1]->setValue($options->descricao);

		$elements[2] = new Zend_Form_Element_Checkbox('ativo');
		$elements[2]->setLabel('Ativo');

        if($options!=null)
            $elements[2]->setValue($options->ativo);

        $elements[3] = new Zend_Form_Element_Hidden('categoria');
        if($options!=null)
            $elements[3]->setValue($options->categoria);

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
