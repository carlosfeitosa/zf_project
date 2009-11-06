<?php
class Admin_Form_TipoCategoria extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('TipoCategoria');
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

		$elements[2] = new Zend_Form_Element_Submit('submit');
		$elements[2]->setAttrib('id', 'submitbutton');

		if($options!=null)
		{
			$elements[3] = new Zend_Form_Element_Hidden('id');
			$elements[3]->setValue($options->id);
		}
		$this->addElements($elements);   
    }
}
