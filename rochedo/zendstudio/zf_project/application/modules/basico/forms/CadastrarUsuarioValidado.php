<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 03/11/2010 13:15:27
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
* @version    1: 03/11/2010 13:13:25
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

        // Criando array de elementos.
        $elements = array();

        $elements[0] = $this->createElement('ValidationTextBox', 'BasicoCadastrarUsuarioValidadoNome');
        $elements[0]->setAttribs(array('size' => 100));
        $elements[0]->setRequired(true);
        $elements[0]->addFilters(array('StringTrim', 'StripTags'));
        $elements[0]->addValidator('NotEmpty');
        $elements[0]->addDecorator('Label', array('escape' => false));
        $elements[0]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_NOME') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_AJUDA')) . '\', 1)</script></button>');
        $elements[0]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_HINT'));
        if ($options!=null)
            $elements[0]->setValue($options->nome);

        $elements[1] = $this->createElement('DateTextBox', 'BasicoCadastrarUsuarioValidadoDataNascimento');
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addValidator('NotEmpty');
        $elements[1]->addDecorator('Label', array('escape' => false));
        $elements[1]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_DATA_NASCIMENTO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DATA_NASCIMENTO_AJUDA')) . '\', 1)</script></button>');

        $elements[2] = $this->createElement('RadioButton', 'BasicoCadastrarUsuarioValidadoSexo');
        $elements[2]->setRequired(true);
        $elements[2]->addDecorator('Label', array('escape' => false));
        $elements[2]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_SEXO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SEXO_AJUDA')) . '\', 1)</script></button>');

        $elements[3] = $this->createElement('ValidationTextBox', 'BasicoCadastrarUsuarioValidadoLogin');
        $elements[3]->setRequired(true);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addValidator('NotEmpty');
        $elements[3]->addDecorator('Label', array('escape' => false));
        $elements[3]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_LOGIN') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_LOGIN_AJUDA')) . '\', 1)</script></button>');

        $elements[4] = $this->createElement('PasswordTextBox', 'BasicoCadastrarUsuarioValidadoSenha');
        $elements[4]->setRequired(true);
        $elements[4]->addValidator('stringLength', false, array(6, 100));
        $elements[4]->addValidator('NotEmpty');
        $elements[4]->addDecorator('Label', array('escape' => false));
        $elements[4]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_SENHA') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SENHA_AJUDA')) . '\', 1)</script></button>');

        $elements[5] = $this->createElement('PasswordTextBox', 'BasicoCadastrarUsuarioValidadoSenhaConfirmacao');
        $elements[5]->setRequired(true);
        $elements[5]->addValidator('NotEmpty');
        $elements[5]->addDecorator('Label', array('escape' => false));
        $elements[5]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_SENHA_CONFIRMACAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SENHA_CONFIRMACAO_AJUDA')) . '\', 1)</script></button>');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>