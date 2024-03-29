<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 20/10/2011 10:28:14
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
* @version    1: 20/10/2011 10:21:47
*/
class Basico_Form_TrocaDeSenha extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_TrocaDeSenha
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('BasicoTrocaDeSenha');
        $this->setMethod('post');
        $this->addAttribs(array('onSubmit'=>"return(validateForm('TrocaDeSenha', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
        $this->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('PasswordTextBox', 'BasicoTrocaDeSenhaSenhaAtual');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(true);
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_SENHA_ATUAL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'TrocaDeSenha\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SENHA_ATUAL_AJUDA')) . '\', 1)</script></button>');

        $elements[2] = $this->createElement('PasswordTextBox', 'BasicoTrocaDeSenhaNovaSenha');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(true);
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_NOVA_SENHA') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'TrocaDeSenha\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOVA_SENHA_AJUDA')) . '\', 1)</script></button>');

        $elements[3] = $this->createElement('html', 'BasicoTrocaDeSenhaPasswordStrengthChecker', array('value' => "<div id='scorebarBorder'><div id='score'>0%</div><div id='scorebar'>&nbsp;</div></div><div id='complexity'></div>"));
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(false);
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[3]->removeDecorator('DtDdWrapper');

        $elements[4] = $this->createElement('PasswordTextBox', 'BasicoTrocaDeSenhaConfirmacaoNovaSenha');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(true);
        $elements[4]->addValidator('identical', false, array('token' => '@identicalElementName', 'invalidMessage' => '@identicalInvalidMessage'));
        $elements[4]->addValidator('stringLength', false, array(6, 100));
        $elements[4]->addValidator('NotEmpty');
        $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[4]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONFIRMACAO_NOVA_SENHA') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'TrocaDeSenha\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONFIRMACAO_NOVA_SENHA_AJUDA')) . '\', 1)</script></button>');

        $elements[5] = $this->createElement('submitButton', 'BasicoTrocaDeSenhaEnviar');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[5]->removeDecorator('DtDdWrapper');
        $elements[5]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        // Removendo escapes das mensagens de erro dos elementos do formulario.
        Basico_OPController_UtilOPController::removeEscapeMensagensErrosZendFormElements($elements);

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>