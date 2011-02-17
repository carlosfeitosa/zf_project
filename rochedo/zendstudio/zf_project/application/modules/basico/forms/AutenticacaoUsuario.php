<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 17/02/2011 13:41:57
*
* LICENÇA DE USO
*
* (implementar licença)
*
*
* @category   RochedoProject
* @package    BASICO
* @copyright  Copyright (c) 2010 Rochedo Project. (http://www.rochedoproject.com)
* @license    (implementar)
* @version    1: 17/02/2011 13:21:26
*/
class Basico_Form_AutenticacaoUsuario extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_AutenticacaoUsuario
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('AutenticacaoUsuario');
        $this->setMethod('post');
        $this->setAction('/rochedo_project/public/basico/autenticador/verificaAutenticacaoUsuario');
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('AutenticacaoUsuario', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
        $this->setDecorators(array('FormElements',
		        array('HtmlTag', 
				      array('tag' => 'dl')
				     ),
					 array('DijitForm')));

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('ValidationTextBox', 'BasicoAutenticacaoUsuarioLogin');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addValidator('Regex', true, array('pattern'=>'/^[(a-zA-Z)]+[(a-zA-Z0-9_@.)]*$/', 'messages' => array(Zend_Validate_Regex::NOT_MATCH => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_REGEX_ERROR_MESSAGE'))));
        $elements[1]->addValidator('stringLength', false, array(3, 100, 'messages' => array(Zend_Validate_StringLength::TOO_SHORT => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_STRING_LENGTH_3_100_ERROR_MESSAGE_TOO_SHORT'), Zend_Validate_StringLength::TOO_LONG => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_STRING_LENGTH_3_100_ERROR_MESSAGE_TOO_LONG') )));
        $elements[1]->addValidator('NotEmpty', array('messages' => array(Zend_Validate_NotEmpty::IS_EMPTY => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_NOT_EMPTY_ERROR_MESSAGE'), )));
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_LOGIN') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'AutenticacaoUsuario\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_LOGIN_AJUDA')) . '\', 1)</script></button>');

        $elements[2] = $this->createElement('PasswordTextBox', 'BasicoAutenticacaoUsuarioSenha');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(true);
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_SENHA') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'AutenticacaoUsuario\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SENHA_AJUDA')) . '\', 1)</script></button>');

        $elements[3] = $this->createElement('CheckBox', 'BasicoAutenticacaoUsuarioLoginManterLogado',  array('disableLoadDefaultDecorators' => true, 'decorators' => array('DijitElement', 'Errors', 'Description')));
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(false);
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true, 'placement' => 'append'));
        $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'AutenticacaoUsuario\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[3]->setValue($options->loginManterLogado);

        $elements[4] = $this->createElement('html', 'BasicoAutenticacaoUsuarioLinkProblemasLogon',  array('value' => "<br><a href='{$this->getView()->url(array('module' => 'basico', 'controller' => 'login', 'action' => 'problemasLogin'), null, true)}'>{$this->getView()->tradutor('FORM_LINK_PROBLEMAS_LOGON')}</a>"));
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(false);
        $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));

        $elements[5] = $this->createElement('html', 'BasicoAutenticacaoUsuarioLinkNovoUsuario',  array('value' => "<a href='{$this->getView()->url(array('module' => 'basico', 'controller' => 'login', 'action' => 'cadastrarUsuarioNaoValidado'), null, true)}'>{$this->getView()->tradutor('FORM_LINK_NOVO_USUARIO')}</a>"));
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->addDecorator('Label', array('escape' => false, 'disableFor' => true));

        $elements[6] = $this->createElement('html', 'BasicoAutenticacaoUsuarioLinhaHorizontal', array('value' => '<hr>'));
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(false);
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[7] = $this->createElement('submitButton', 'BasicoAutenticacaoUsuarioEnviar');
        $elements[7]->setOrder(7);
        $elements[7]->setRequired(false);
        $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[7]->removeDecorator('DtDdWrapper');
        $elements[7]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[8] = $this->createElement('button', 'BasicoAutenticacaoUsuarioResetar', array('type' => 'reset', 'onClick' => 'hideDialog("Basico_Form_AutenticacaoUsuario", "/rochedo_project/public");'));
        $elements[8]->setOrder(8);
        $elements[8]->setRequired(false);
        $elements[8]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-margin-right10px',));
        $elements[8]->removeDecorator('DtDdWrapper');
        $elements[8]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_RESET') . '');

        $elements[9] = $this->createElement('hidden', 'BasicoAutenticacaoUsuarioUrlRedirect', array('decorators' => array('ViewHelper')));
        $elements[9]->setOrder(9);
        $elements[9]->setRequired(false);

        $elements[10] = $this->createElement('hash', 'BasicoAutenticacaoUsuarioCsrf', array('ignore' => true, 'salt' => 'unique',));
        $elements[10]->setOrder(10);
        $elements[10]->setRequired(false);
        $elements[10]->removeDecorator('Label');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>