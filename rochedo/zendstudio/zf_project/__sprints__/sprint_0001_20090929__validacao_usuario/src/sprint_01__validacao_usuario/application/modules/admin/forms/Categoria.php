<?php
class Admin_Form_Categoria extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('Categoria');
        $elements = array();

		$elements[0] = new Zend_Form_Element_Text('nivel');
		$elements[0]->setLabel('Nivel')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('Int');

        if($options!=null)
            $elements[0]->setValue($options->nivel);

		$elements[1] = new Zend_Form_Element_Text('nome');
		$elements[1]->setLabel('Nome')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[1]->setValue($options->nome);

		$elements[2] = new Zend_Form_Element_Text('descricao');
		$elements[2]->setLabel('Descricao')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[2]->setValue($options->descricao);

		$elements[3] = new Zend_Form_Element_Checkbox('ativo');
		$elements[3]->setLabel('Ativo');

        if($options!=null)
            $elements[3]->setValue($options->ativo);

        $elements[4] = new Zend_Form_Element_Hidden('tipocategoria');
        if($options!=null)
            $elements[4]->setValue($options->tipoCategoria);

        $elements[5] = new Zend_Form_Element_Hidden('categoria');
        if($options!=null)
            $elements[5]->setValue($options->categoria);

		$elements[6] = new Zend_Form_Element_Submit('submit');
		$elements[6]->setAttrib('id', 'submitbutton');

		if($options!=null)
		{
			$elements[7] = new Zend_Form_Element_Hidden('id');
			$elements[7]->setValue($options->id);
		}
		$this->addElements($elements);   
    }
}
