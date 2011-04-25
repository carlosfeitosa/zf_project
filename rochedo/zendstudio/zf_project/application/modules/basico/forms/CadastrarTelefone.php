<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 25/04/2011 13:34:20
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
* @version    1: 25/04/2011 13:07:28
*/
class Basico_Form_CadastrarTelefone extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarTelefone
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarTelefone');
        $this->setMethod('post');

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('FilteringSelect', 'BasicoCadastrarTelefoneTelefoneTipo');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_TELEFONE_TIPO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarTelefone\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TELEFONE_TIPO_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[1]->setValue($options->BasicoCadastrarTelefoneTelefoneTipo);

        $elements[2] = $this->createElement('NumberTextBox', 'BasicoCadastrarTelefoneTelefoneCodigoPais', array('style' => 'width: 40px;', 'places' => 0));
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_PAIS') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarTelefone\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_PAIS_AJUDA')) . '\', 1)</script></button>');
        $elements[2]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_PAIS_HINT'));
        $tempVariable = $elements[2]->getDijitParam('constraints');
        $tempVariable['pattern'] = '##0.##';
        $elements[2]->setDijitParam('constraints', $tempVariable);
        if ($options!=null)
            $elements[2]->setValue($options->BasicoCadastrarTelefoneTelefoneCodigoPais);

        $elements[3] = $this->createElement('NumberTextBox', 'BasicoCadastrarTelefoneTelefoneCodigoArea', array('style' => 'width: 40px;', 'places' => 0));
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(true);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[3]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_AREA') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarTelefone\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_AREA_AJUDA')) . '\', 1)</script></button>');
        $elements[3]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_AREA_HINT'));
        $tempVariable = $elements[3]->getDijitParam('constraints');
        $tempVariable['pattern'] = '##0.##';
        $elements[3]->setDijitParam('constraints', $tempVariable);
        if ($options!=null)
            $elements[3]->setValue($options->BasicoCadastrarTelefoneTelefoneCodigoArea);

        $elements[4] = $this->createElement('NumberTextBox', 'BasicoCadastrarTelefoneTelefone', array('style' => 'width: 70px;', 'places' => 0));
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(true);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both-margin-right10px',));
        $elements[4]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_TELEFONE') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarTelefone\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TELEFONE_AJUDA')) . '\', 1)</script></button>');
        $elements[4]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_TELEFONE_HINT'));
        $tempVariable = $elements[4]->getDijitParam('constraints');
        $tempVariable['pattern'] = '##0.##';
        $elements[4]->setDijitParam('constraints', $tempVariable);
        if ($options!=null)
            $elements[4]->setValue($options->BasicoCadastrarTelefoneTelefone);

        $elements[5] = $this->createElement('NumberTextBox', 'BasicoCadastrarTelefoneTelefoneRamal', array('style' => 'width: 40px;', 'places' => 0));
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->addFilters(array('StringTrim', 'StripTags'));
        $elements[5]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[5]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_TELEFONE_RAMAL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarTelefone\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TELEFONE_RAMAL_AJUDA')) . '\', 1)</script></button>');
        $elements[5]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_TELEFONE_RAMAL_HINT'));
        $tempVariable = $elements[5]->getDijitParam('constraints');
        $tempVariable['pattern'] = '##0.##';
        $elements[5]->setDijitParam('constraints', $tempVariable);
        if ($options!=null)
            $elements[5]->setValue($options->BasicoCadastrarTelefoneTelefoneRamal);

        $elements[6] = $this->createElement('SimpleTextarea', 'BasicoCadastrarTelefoneTelefoneDescricao', array('style' => 'width: 300px;'));
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(false);
        $elements[6]->addFilters(array('StringTrim', 'StripTags'));
        $elements[6]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[6]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_TELEFONE_DESCRICAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarTelefone\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TELEFONE_DESCRICAO_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[6]->setValue($options->BasicoCadastrarTelefoneTelefoneDescricao);

        $elements[7] = $this->createElement('html', 'BasicoCadastrarTelefoneLinhaHorizontal', array('value' => '<hr>'));
        $elements[7]->setOrder(7);
        $elements[7]->setRequired(false);
        $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[8] = $this->createElement('submitButton', 'BasicoCadastrarTelefoneEnviar');
        $elements[8]->setOrder(8);
        $elements[8]->setRequired(false);
        $elements[8]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[8]->removeDecorator('DtDdWrapper');
        $elements[8]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[9] = $this->createElement('button', 'BasicoCadastrarTelefoneResetar', array('type' => 'reset', 'onClick' => 'hideDialog("Basico_Form_CadastrarTelefone", "/rochedo_project/public");'));
        $elements[9]->setOrder(9);
        $elements[9]->setRequired(false);
        $elements[9]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-margin-right10px',));
        $elements[9]->removeDecorator('DtDdWrapper');
        $elements[9]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_RESET') . '');

        $elements[10] = $this->createElement('hash', 'BasicoCadastrarTelefoneCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
        $elements[10]->setOrder(10);
        $elements[10]->setRequired(false);
        $elements[10]->removeDecorator('Label');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>