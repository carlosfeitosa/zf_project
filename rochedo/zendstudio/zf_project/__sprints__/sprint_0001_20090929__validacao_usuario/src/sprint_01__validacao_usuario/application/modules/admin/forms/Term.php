<?php
class Admin_Form_Term extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('Term');
        $elements = array();

		$elements[0] = new Zend_Form_Element_Text('name');
		$elements[0]->setLabel('Name')
		  		->setAttrib('size', 40)
				->setRequired(true)
				->addFilter('StripTags')
				->addFilter('StringTrim')
				->addFilter('StringToUpper')
				->addValidator('NotEmpty');

        if($options!=null)
            $elements[0]->setValue($options->name);

		$elements[1] = new Zend_Form_Element_Select('termcategory');
		$elements[1]->setLabel('TermCategory')
						->setRequired(true);
		$model = new Default_Model_TermCategory();
		$assoc = $model->fetchAll();
		$elements[1]->addMultiOption(0, 'Select a termcategory');
		foreach($assoc as $item)
		{
				$elements[1]->addMultiOption($item->id, $item->name);
		}
        if($options!=null)
            $elements[1]->setValue($options->TermCategory);

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
