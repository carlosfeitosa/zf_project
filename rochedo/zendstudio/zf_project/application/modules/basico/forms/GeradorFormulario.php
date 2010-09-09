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

        $this->setName('GeradorFormulario');
        $this->setMethod('post');
        $this->setAction('gerarformulario');
        //$this->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarUsuarioNaoValidado'))"));
        $this->setDecorators(array('FormElements',
                array('HtmlTag', array('tag' => 'dl', 'class' => 'zend_form_dojo')),
                array('DijitForm', array("postOnBackground"=> false, "postOnBackgroundOptions"=> array('successHandler'=>"dojo.eval(data);"))),));
               
        /**
        * Adicionando array de elementos.
        */
        $elements = array();

        //Formulários disponíveis        
        $elements[0] = $this->createElement('FilteringSelect', 'selectFormulario');
        $elements[0]->setAttribs(array('size' => 100, 'onChange' => "loading(); document.getElementById('GeradorFormulario').submit();"));
        $elements[0]->addValidator('NotEmpty');
        $elements[0]->AddDecorator('Label', array('escape' => false));
        $elements[0]->setLabel($this->getView()->tradutor('FORM_FIELD_SELECT_FORMULARIO', DEFAULT_USER_LANGUAGE) . '&nbsp;<a href="javascript:showDialogAlert(\'CadastrarUsuarioNaoValidado\', \'' . $this->getView()->tradutor(DIALOG_HELP_TITLE, DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_NOME_AJUDA', DEFAULT_USER_LANGUAGE) . "<br><br>URL: <a href=\'http://www.google.com\' target=\'_blank\'>http://www.google.com</a>" . '\', 1)">(?)</a>');
        //$elements[0]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_SELECT_FORMULARIO_HINT', DEFAULT_USER_LANGUAGE));
        $elements[0]->setRequired(true);
        $elements[0]->addMultiOptions(array('null' => ''));
        //$elements[0]->setRegisterInArrayValidator(false);

        
        // Módulos que não serão criados os formularios              
        $elements[1] = $this->createElement('multiCheckbox', 'modulosFormulario');
        $elements[1]->setAttribs(array('size' => 100));
        $elements[1]->AddDecorator('Label', array('escape' => false));
        $elements[1]->setLabel($this->getView()->tradutor('FORM_FIELD_CHECKBOX_MODULOS_FORMULARIO', DEFAULT_USER_LANGUAGE) . '&nbsp;<a href="javascript:showDialogAlert(\'CadastrarUsuarioNaoValidado\', \'' . $this->getView()->tradutor(DIALOG_HELP_TITLE, DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_NOME_AJUDA', DEFAULT_USER_LANGUAGE) . "<br><br>URL: <a href=\'http://www.google.com\' target=\'_blank\'>http://www.google.com</a>" . '\', 1)">(?)</a>');
        //$elements[1]->addValidator('NotEmpty');
        //$elements[1]->setRequired(true);
        $elements[1]->setRegisterInArrayValidator(false);
		
        
        $elements[2] = $this->createElement('submit', 'enviar');
        $elements[2]->setLabel($this->getView()->tradutor('FORM_BUTTON_SUBMIT', DEFAULT_USER_LANGUAGE) . '');

        $this->addElements($elements);
    }
}
?>