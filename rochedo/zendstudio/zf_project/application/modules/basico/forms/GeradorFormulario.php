<?php
/**
* Rochedo Framework
*
* @category   RochedoProject
* @package    BASICO
* @copyright  Copyright (c) 2010 Rochedo Project. (http://www.rochedoproject.com)
* @license    (implementar)
* @version    0.1: 2010-09-08
*/
class Basico_Form_GeradorFormulario extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_GeradorFormulario
    */
    public function __construct($options = null)
    {
        /**
        * Inicializando o formulário.
        */
        parent::__construct($options);

        // recuperando a acao do formulario       
        $urlAction = $this->getView()->urlEncrypt($this->getView()->url(array('module'=>'basico', 'controller'=>'geradorformulario', 'action'=>'gerarformulario'), null, true));

        $this->setName('GeradorFormulario');
        $this->setMethod('post');
        $this->setAction($urlAction);
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('AutenticacaoUsuario', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
        $this->setDecorators(array('FormElements',
                array('HtmlTag', array('tag' => 'dl', 'class' => 'zend_form_dojo')),
                array('DijitForm', array("postOnBackground"=> false, "postOnBackgroundOptions"=> array('successHandler'=>"dojo.eval(data);"))),));
               
        /**
        * Adicionando array de elementos.
        */
        $elements = array();

        //Formulários disponíveis        
        $elements[0] = $this->createElement('FilteringSelect', 'selectFormulario', array('style' => 'width: 400px;'));
        $elements[0]->setAttribs(array('size' => 100, 'onChange' => "loading(); document.getElementById('GeradorFormulario').submit();"));
        $elements[0]->addValidator('NotEmpty');
        $elements[0]->addDecorator('Label', array('escape' => false));
        $elements[0]->setLabel($this->getView()->tradutor('FORM_FIELD_SELECT_FORMULARIO'));
        $elements[0]->setRequired(true);
        $elements[0]->addMultiOptions(array('null' => ''));
        
        // Módulos que não serão criados os formularios              
        $elements[1] = $this->createElement('multiCheckbox', 'modulosFormulario');
        $elements[1]->setAttribs(array('size' => 100));
        $elements[1]->AddDecorator('Label', array('escape' => false));
        $elements[1]->setLabel($this->getView()->tradutor('FORM_FIELD_CHECKBOX_MODULOS_FORMULARIO'));
        $elements[1]->setRegisterInArrayValidator(false);
        
        $elements[2] = $this->createElement('submit', 'enviar');
        $elements[2]->setLabel($this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $this->addElements($elements);
    }
}
?>