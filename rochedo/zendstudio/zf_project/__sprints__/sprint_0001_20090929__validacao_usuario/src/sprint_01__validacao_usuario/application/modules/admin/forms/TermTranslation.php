<?php
class Admin_Form_TermTranslation extends Zend_Form
{
    public function __construct($options = null)
    {
        parent::__construct($options);
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $this->setMethod('post');
        $this->setName('TermTranslation');
        $elements = array();
		$model = new Default_Model_Term();
        $assoc = $model->fetchList("termcategory=".$request->getParam("id"));
        $i = 0;
        $elements[$i] = new Zend_Form_Element_Hidden('language');
        $elements[$i++]->setValue($request->getParam("language"));
        foreach($assoc as $key=>$a)
        {
            $m = new Default_Model_TermTranslation();
            $termTranslation = $m->fetchList("term=".$a->id." AND language='".$request->getParam("language")."'");
            if(sizeof($termTranslation)==0)
                $translation = '';
            else
                $translation = $termTranslation[0]->translation;
            if(strrpos($a->name, '_text') >0 )
            {
                $elements[$i] = new Zend_Form_Element_TextArea('translation'.$a->id);
                $elements[$i]->setLabel($a->name." --- ")
                        ->setAttrib('rows', 3)
                        ->setAttrib('cols', 80)
                        ->setRequired(true)
                        ->addFilter('StripTags')
                        ->addFilter('StringTrim');
            }
            else
            {
                $elements[$i] = new Zend_Form_Element_Text('translation'.$a->id);
                $elements[$i]->setLabel($a->name." --- ")
                        ->setAttrib('size', 80)
                        ->setRequired(true)
                        ->addFilter('StripTags')
                        ->addFilter('StringTrim');
            }
            $elements[$i++]->setValue($translation);
        }
        $elements[$i] = new Zend_Form_Element_Submit('submit');
        $elements[$i++]->setAttrib('id', 'submitbutton');
        $elements[$i] = new Zend_Form_Element_Hidden('id');
        $elements[$i]->setValue($options->id);
        $this->addElements($elements);
    }
}
