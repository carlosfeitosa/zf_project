<?php
class Admin_Form_AnexoMensagem extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('AnexoMensagem');
        $elements = array();

		$elements[0] = new Zend_Form_Element_Text('nomeOriginal');
		$elements[0]->setLabel('NomeOriginal')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[0]->setValue($options->nomeOriginal);

		$elements[1] = new Zend_Form_Element_Text('nomeSugestao');
		$elements[1]->setLabel('NomeSugestao')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[1]->setValue($options->nomeSugestao);

		$elements[2] = new Zend_Form_Element_Text('descricao');
		$elements[2]->setLabel('Descricao')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[2]->setValue($options->descricao);

		$elements[3] = new Zend_Form_Element_File('arquivo');
		$elements[3]->setLabel('Arquivo');

        if($options!=null)
            $elements[3]->setValue($options->arquivo);

		$elements[4] = new Zend_Form_Element_Text('mimeType');
		$elements[4]->setLabel('MimeType')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[4]->setValue($options->mimeType);

        $elements[5] = new Zend_Form_Element_Hidden('mensagem');
        if($options!=null)
            $elements[5]->setValue($options->mensagem);

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
