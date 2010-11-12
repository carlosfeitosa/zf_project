<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 12/11/2010 12:11:30
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
* @version    1: 11/11/2010 14:27:45
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

        $this->setName('CadastrarUsuarioValidado');
        $this->setMethod('post');
        $this->setAction('cadastrarUsuarioValidado');
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarUsuarioValidado'))"));
        $this->setDecorators(array('FormElements',
                array('HtmlTag', array('tag' => 'dl', 'class' => 'zend_form_dojo')),
                array('DijitForm', array("postOnBackground"=> false, "postOnBackgroundOptions"=> array('successHandler'=>"dojo.eval(data);"))),));

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Ajax_terceiros_Form', 'Ajax_terceiros/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('ValidationTextBox', 'BasicoCadastrarUsuarioValidadoNome');
        $elements[1]->setOrder(1);
        $elements[1]->setAttribs(array('size' => 100));
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addValidator('NotEmpty');
        $elements[1]->addDecorator('Label', array('escape' => false));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_NOME') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_AJUDA')) . '\', 1)</script></button>');
        $elements[1]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_HINT'));
        if ($options!=null)
            $elements[1]->setValue($options->nome);

        $elements[2] = $this->createElement('DateTextBox', 'BasicoCadastrarUsuarioValidadoDataNascimento');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addValidator('NotEmpty');
        $elements[2]->addDecorator('Label', array('escape' => false));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_DATA_NASCIMENTO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DATA_NASCIMENTO_AJUDA')) . '\', 1)</script></button>');

        $elements[3] = $this->createElement('RadioButton', 'BasicoCadastrarUsuarioValidadoSexo');
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(true);
        $elements[3]->addDecorator('Label', array('escape' => false));
        $elements[3]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_SEXO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SEXO_AJUDA')) . '\', 1)</script></button>');

        $elements[4] = $this->createElement('ValidationTextBox', 'BasicoCadastrarUsuarioValidadoLogin');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(true);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addValidator('NotEmpty');
        $elements[4]->addDecorator('Label', array('escape' => false));
        $elements[4]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_LOGIN') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_LOGIN_AJUDA')) . '\', 1)</script></button>');

        $elements[5] = $this->createElement('PasswordTextBox', 'BasicoCadastrarUsuarioValidadoSenha');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(true);
        $elements[5]->addValidator('stringLength', false, array(6, 100));
        $elements[5]->addValidator('NotEmpty');
        $elements[5]->addDecorator('Label', array('escape' => false));
        $elements[5]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_SENHA') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SENHA_AJUDA')) . '\', 1)</script></button>');

        $elements[6] = $this->createElement('PasswordTextBox', 'BasicoCadastrarUsuarioValidadoSenhaConfirmacao');
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(true);
        $elements[6]->addValidator('NotEmpty');
        $elements[6]->addDecorator('Label', array('escape' => false));
        $elements[6]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_SENHA_CONFIRMACAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SENHA_CONFIRMACAO_AJUDA')) . '\', 1)</script></button>');

        $elements[7] = $this->createElement('button', 'BasicoCadastrarUsuarioValidadoButtonDialogDojo1');
        $elements[7]->setOrder(7);
        $elements[7]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_FIELD_DOCUMENTOS_IDENTIFICACAO')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_DocumentosIdentificacao\", \"/rochedo_project/public/public_forms/basico/forms/DocumentosIdentificacao." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_FIELD_DOCUMENTOS_IDENTIFICACAO')}\")"));
        $elements[7]->setRequired(false);
        $elements[7]->removeDecorator('DtDdWrapper');

        $elements[8] = $this->createElement('submitButton', 'BasicoCadastrarUsuarioValidadoEnviar');
        $elements[8]->setOrder(8);
        $elements[8]->setRequired(false);
        $elements[8]->removeDecorator('DtDdWrapper');
        $elements[8]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>