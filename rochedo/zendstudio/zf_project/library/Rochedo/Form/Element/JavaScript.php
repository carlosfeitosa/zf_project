<?php

/** Zend_Form_Element_Xhtml */
require_once 'Zend/Form/Element/Xhtml.php';

/**
 * Note form element
 * 
 */
class Rochedo_Form_Element_JavaScript extends Zend_Form_Element_Xhtml
{
    /**
     * Default form view helper to use for rendering
     * @var string
     */
    public $helper = 'formNote';
    
    /**
     * Load default decorators
     *
     * Disables "for" attribute of label if label decorator enabled.
     *
     * @return void
     */
    public function loadDefaultDecorators()
    {
        if ($this->loadDefaultDecoratorsIsDisabled()) {
            return $this;
        }
        parent::loadDefaultDecorators();
        $this->removeDecorator('Label');
    	$this->removeDecorator('DtDdWrapper');
        return $this;
    }
}