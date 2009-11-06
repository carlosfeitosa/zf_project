<?php
class Admin_Form_TermTranslationSearch extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $this->setMethod('post');
        $this->setName('TermTranslation');
        $elements = array();
        $elements[0] = new Zend_Form_Element_Text('search');
        $elements[0]->setLabel('Search')
                ->setAttrib('size', 40)
                ->setRequired(true)
                ->addFilter('StripTags')
                ->addFilter('StringTrim');
        $elements[1] = new Zend_Form_Element_Submit('submit');
        $elements[1]->setAttrib('id', 'submitbutton');
        $elements[1]->setLabel('Search');
        $this->addElements($elements);
    }
}
