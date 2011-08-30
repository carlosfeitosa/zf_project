<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 30/08/2011 13:42:28
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
* @version    1: 30/08/2011 13:22:59
*/
class Basico_Form_CadastrarUsuarioValidado extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarUsuarioValidado
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('BasicoCadastrarUsuarioValidado');
        $this->setMethod('post');
        $this->setAction(Basico_OPController_TokenOPController::getInstance()->gerarTokenPorUrl('/rochedo_project/public/basico/login/salvarUsuarioValidado'));
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarUsuarioValidado', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
        $this->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));
		
        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');
        $this->addPrefixPath('Ajaxterceiros_Form', 'Ajaxterceiros/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('ValidationTextBox', 'BasicoCadastrarUsuarioValidadoNome');
        $elements[1]->setOrder(1);
        $elements[1]->setAttribs(array('size' => 100, 'style' => 'width: 300px;'));
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addValidator('NotEmpty');
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_NOME') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_AJUDA')) . '\', 1)</script></button>');
        $elements[1]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_HINT'));
        if (($options!=null) and (isset($options['BasicoCadastrarUsuarioValidadoNome'])))
            $elements[1]->setValue($options['BasicoCadastrarUsuarioValidadoNome']);

        $elements[2] = $this->createElement('DateTextBox', 'BasicoCadastrarUsuarioValidadoDataNascimento');
        $elements[2]->setOrder(2);
        $elements[2]->setAttribs(array('style' => 'width: 70px;'));
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addValidator('NotEmpty');
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_DATA_NASCIMENTO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DATA_NASCIMENTO_AJUDA')) . '\', 1)</script></button>');

        $elements[3] = $this->createElement('RadioButton', 'BasicoCadastrarUsuarioValidadoSexo', array('separator' => " "));
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(true);
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[3]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_SEXO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SEXO_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarUsuarioValidadoSexo'])))
            $elements[3]->setValue($options['BasicoCadastrarUsuarioValidadoSexo']);

        $elements[4] = $this->createElement('ValidationTextBox', 'BasicoCadastrarUsuarioValidadoLogin');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(true);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addValidator('Regex', true, array('pattern'=>'/^[(a-zA-Z)]+[(a-zA-Z0-9_@.)]*$/', 'messages' => array(Zend_Validate_Regex::NOT_MATCH => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_REGEX_ERROR_MESSAGE'))));
        $elements[4]->addValidator('stringLength', false, array(3, 100));
        $elements[4]->addValidator('NotEmpty');
        $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[4]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_LOGIN') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_LOGIN_AJUDA')) . '\', 1)</script></button>');

        $elements[5] = $this->createElement('html', 'BasicoCadastrarUsuarioValidadoLoginDisponivel', array('value' => ""));
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[5]->removeDecorator('DtDdWrapper');

        $elements[6] = $this->createElement('PasswordTextBox', 'BasicoCadastrarUsuarioValidadoSenha');
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(true);
        $elements[6]->addValidator('stringLength', false, array(6, 100));
        $elements[6]->addValidator('NotEmpty');
        $elements[6]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[6]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_SENHA') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SENHA_AJUDA')) . '\', 1)</script></button>');

        $elements[7] = $this->createElement('html', 'BasicoCadastrarUsuarioValidadoPasswordStrengthChecker', array('value' => "<div id='scorebarBorder'><div id='score'>0%</div><div id='scorebar'>&nbsp;</div></div><div id='complexity'></div>"));
        $elements[7]->setOrder(7);
        $elements[7]->setRequired(false);
        $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[7]->removeDecorator('DtDdWrapper');

        $elements[8] = $this->createElement('PasswordTextBox', 'BasicoCadastrarUsuarioValidadoSenhaConfirmacao');
        $elements[8]->setOrder(8);
        $elements[8]->setRequired(true);
        $elements[8]->addValidator('identical', false, array('token' => '@identicalElementName', 'invalidMessage' => '@identicalInvalidMessage'));
        $elements[8]->addValidator('NotEmpty');
        $elements[8]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[8]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[8]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_SENHA_CONFIRMACAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SENHA_CONFIRMACAO_AJUDA')) . '\', 1)</script></button>');

        $elements[9] = $this->createElement('submitButton', 'BasicoCadastrarUsuarioValidadoEnviar');
        $elements[9]->setOrder(9);
        $elements[9]->setRequired(false);
        $elements[9]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[9]->removeDecorator('DtDdWrapper');
        $elements[9]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[10] = $this->createElement('hash', 'BasicoCadastrarUsuarioValidadoCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
        $elements[10]->setOrder(10);
        $elements[10]->setRequired(false);
        $elements[10]->removeDecorator('Label');
	
        Basico_OPController_UtilOPController::removeEscapeMensagensErrosZendFormElements($elements);
        
        // Adicionando elementos ao formulario.
        $this->addElements($elements);
        
        // Adicionando displays groups.
        $this->addDisplayGroup(array($elements[1]->getName(),$elements[2]->getName(),$elements[3]->getName()), 'dados_usuario_dados_pessoais', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_INFORMACOES_PESSOAIS'), 'order' => 1));
        $dados_usuario_dados_pessoais = $this->getDisplayGroup('dados_usuario_dados_pessoais');
        $dados_usuario_dados_pessoais->removeDecorator('DtDdWrapper');
        $dados_usuario_dados_pessoais->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        // Adicionando displays groups.
        $this->addDisplayGroup(array($elements[4]->getName(),$elements[5]->getName(),$elements[6]->getName(),$elements[7]->getName(),$elements[8]->getName()), 'dados_usuario_dados_usuario', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_INFORMACOES_USUARIO'), 'order' => 4));
        $dados_usuario_dados_usuario = $this->getDisplayGroup('dados_usuario_dados_usuario');
        $dados_usuario_dados_usuario->removeDecorator('DtDdWrapper');
        $dados_usuario_dados_usuario->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));

    }
}
?>