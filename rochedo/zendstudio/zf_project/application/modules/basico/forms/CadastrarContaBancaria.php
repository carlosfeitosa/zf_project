<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 20/10/2011 10:27:18
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
class Basico_Form_CadastrarContaBancaria extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarContaBancaria
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('BasicoCadastrarContaBancaria');
        $this->setMethod('post');
        $this->addAttribs(array('rascunho' => true));

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('ValidationTextBox', 'BasicoCadastrarContaBancariaContaBancariaNumeroBancoTextBox');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarContaBancaria\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[1]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_TEXT_BOX_HINT'));
        if (($options!=null) and (isset($options['BasicoCadastrarContaBancariaContaBancariaNumeroBancoTextBox'])))
            $elements[1]->setValue($options['BasicoCadastrarContaBancariaContaBancariaNumeroBancoTextBox']);

        $elements[2] = $this->createElement('FilteringSelect', 'BasicoCadastrarContaBancariaContaBancariaBancoComboBox');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_BANCO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarContaBancaria\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarContaBancariaContaBancariaBancoComboBox'])))
            $elements[2]->setValue($options['BasicoCadastrarContaBancariaContaBancariaBancoComboBox']);

        $elements[3] = $this->createElement('ValidationTextBox', 'BasicoCadastrarContaBancariaContaBancariaAgenciaTextBox');
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(true);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[3]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_AGENCIA_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarContaBancaria\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_AGENCIA_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[3]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_AGENCIA_TEXT_BOX_HINT'));
        if (($options!=null) and (isset($options['BasicoCadastrarContaBancariaContaBancariaAgenciaTextBox'])))
            $elements[3]->setValue($options['BasicoCadastrarContaBancariaContaBancariaAgenciaTextBox']);

        $elements[4] = $this->createElement('FilteringSelect', 'BasicoCadastrarContaBancariaContaBancariaTipoContaComboBox');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(true);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[4]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarContaBancaria\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarContaBancariaContaBancariaTipoContaComboBox'])))
            $elements[4]->setValue($options['BasicoCadastrarContaBancariaContaBancariaTipoContaComboBox']);

        $elements[5] = $this->createElement('ValidationTextBox', 'BasicoCadastrarContaBancariaContaBancariaNumeroContaTextBox');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(true);
        $elements[5]->addFilters(array('StringTrim', 'StripTags'));
        $elements[5]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[5]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarContaBancaria\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[5]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_TEXT_BOX_HINT'));
        if (($options!=null) and (isset($options['BasicoCadastrarContaBancariaContaBancariaNumeroContaTextBox'])))
            $elements[5]->setValue($options['BasicoCadastrarContaBancariaContaBancariaNumeroContaTextBox']);

        $elements[6] = $this->createElement('ValidationTextBox', 'BasicoCadastrarContaBancariaContaBancariaDescricaoIdentificacaoContaTextBox');
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(true);
        $elements[6]->addFilters(array('StringTrim', 'StripTags'));
        $elements[6]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[6]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarContaBancaria\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[6]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX_HINT'));
        if (($options!=null) and (isset($options['BasicoCadastrarContaBancariaContaBancariaDescricaoIdentificacaoContaTextBox'])))
            $elements[6]->setValue($options['BasicoCadastrarContaBancariaContaBancariaDescricaoIdentificacaoContaTextBox']);

        $elements[11] = $this->createElement('html', 'BasicoCadastrarContaBancariaLinhaHorizontal', array('value' => '<hr>'));
        $elements[11]->setOrder(11);
        $elements[11]->setRequired(false);
        $elements[11]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));
        $elements[11]->removeDecorator('DtDdWrapper');

        $elements[12] = $this->createElement('submitButton', 'BasicoCadastrarContaBancariaEnviar');
        $elements[12]->setOrder(12);
        $elements[12]->setRequired(false);
        $elements[12]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[12]->removeDecorator('DtDdWrapper');
        $elements[12]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[13] = $this->createElement('button', 'BasicoCadastrarContaBancariaResetar', array('type' => 'reset', 'onClick' => 'hideDialog(\"Basico_Form_CadastrarContaBancaria\", \"/rochedo_project/public\");'));
        $elements[13]->setOrder(13);
        $elements[13]->setRequired(false);
        $elements[13]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-margin-right10px',));
        $elements[13]->removeDecorator('DtDdWrapper');
        $elements[13]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_RESET') . '');

        $elements[10] = $this->createElement('hash', 'BasicoCadastrarContaBancariaCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
        $elements[10]->setOrder(10);
        $elements[10]->setRequired(false);
        $elements[10]->removeDecorator('Label');

        // Removendo escapes das mensagens de erro dos elementos do formulario.
        Basico_OPController_UtilOPController::removeEscapeMensagensErrosZendFormElements($elements);

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>