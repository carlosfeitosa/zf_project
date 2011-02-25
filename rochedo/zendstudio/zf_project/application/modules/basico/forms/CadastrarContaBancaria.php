<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 25/02/2011 15:22:20
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
* @version    1: 25/02/2011 14:49:10
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

        $this->setName('CadastrarContaBancaria');
        $this->setMethod('post');

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
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarContaBancaria\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[1]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[1]->setValue($options->contaBancariaNumeroBancoTextBox);

        $elements[2] = $this->createElement('FilteringSelect', 'BasicoCadastrarContaBancariaContaBancariaBancoComboBox');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_BANCO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarContaBancaria\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[2]->setValue($options->contaBancariaBancoComboBox);

        $elements[3] = $this->createElement('ValidationTextBox', 'BasicoCadastrarContaBancariaContaBancariaAgenciaTextBox');
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(true);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[3]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_AGENCIA_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarContaBancaria\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_AGENCIA_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[3]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_AGENCIA_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[3]->setValue($options->contaBancariaAgenciaTextBox);

        $elements[4] = $this->createElement('FilteringSelect', 'BasicoCadastrarContaBancariaContaBancariaTipoContaComboBox');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(true);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[4]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarContaBancaria\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[4]->setValue($options->contaBancariaTipoContaComboBox);

        $elements[5] = $this->createElement('ValidationTextBox', 'BasicoCadastrarContaBancariaContaBancariaNumeroContaTextBox');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(true);
        $elements[5]->addFilters(array('StringTrim', 'StripTags'));
        $elements[5]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[5]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarContaBancaria\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[5]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[5]->setValue($options->contaBancariaNumeroContaTextBox);

        $elements[6] = $this->createElement('ValidationTextBox', 'BasicoCadastrarContaBancariaContaBancariaDescricaoIdentificacaoContaTextBox');
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(true);
        $elements[6]->addFilters(array('StringTrim', 'StripTags'));
        $elements[6]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[6]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarContaBancaria\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[6]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[6]->setValue($options->contaBancariaDescricaoIdentificacaoContaTextBox);

        $elements[11] = $this->createElement('html', 'BasicoCadastrarContaBancariaLinhaHorizontal', array('value' => '<hr>'));
        $elements[11]->setOrder(11);
        $elements[11]->setRequired(false);
        $elements[11]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[12] = $this->createElement('submitButton', 'BasicoCadastrarContaBancariaEnviar');
        $elements[12]->setOrder(12);
        $elements[12]->setRequired(false);
        $elements[12]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[12]->removeDecorator('DtDdWrapper');
        $elements[12]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[13] = $this->createElement('button', 'BasicoCadastrarContaBancariaResetar', array('type' => 'reset', 'onClick' => 'hideDialog("Basico_Form_CadastrarContaBancaria", "/rochedo_project/public");'));
        $elements[13]->setOrder(13);
        $elements[13]->setRequired(false);
        $elements[13]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-margin-right10px',));
        $elements[13]->removeDecorator('DtDdWrapper');
        $elements[13]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_RESET') . '');

        $elements[14] = $this->createElement('hash', 'BasicoCadastrarContaBancariaCsrf', array('ignore' => true, 'salt' => 'unique',));
        $elements[14]->setOrder(14);
        $elements[14]->setRequired(false);
        $elements[14]->removeDecorator('Label');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>