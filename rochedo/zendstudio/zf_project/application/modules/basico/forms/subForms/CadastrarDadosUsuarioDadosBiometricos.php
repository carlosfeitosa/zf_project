<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 25/11/2010 10:09:48
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
* @version    1: 25/11/2010 10:09:21
*/
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm->setName('CadastrarDadosUsuarioDadosBiometricos');
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm->addAttribs(array('dijitParams' => array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_BIOMETRICOS'))));
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm->setOrder(4);

    // Criando array de elementos.
    $elements = array();

    $elements[1] = $this->createElement('RadioButton', 'BasicoCadastrarDadosUsuarioDadosBiometricosSexo', array('separator' => " "));
    $elements[1]->setOrder(1);
    $elements[1]->setRequired(false);
    $elements[1]->addDecorator('Label', array('escape' => false));
    $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    $elements[1]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_SEXO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosBiometricos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SEXO_AJUDA')) . '\', 1)</script></button>');

    $elements[2] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosBiometricosRaca');
    $elements[2]->setOrder(2);
    $elements[2]->setRequired(false);
    $elements[2]->addFilters(array('StringTrim', 'StripTags'));
    $elements[2]->addDecorator('Label', array('escape' => false));
    $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_RACA') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosBiometricos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_RACA_AJUDA')) . '\', 1)</script></button>');
    if ($options!=null)
        $elements[2]->setValue($options->raca);

    $elements[3] = $this->createElement('NumberTextBox', 'BasicoCadastrarDadosUsuarioDadosBiometricosAltura');
    $elements[3]->setOrder(3);
    $elements[3]->setRequired(false);
    $elements[3]->addFilters(array('StringTrim', 'StripTags'));
    $elements[3]->addDecorator('Label', array('escape' => false));
    $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_ALTURA') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosBiometricos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ALTURA_AJUDA')) . '\', 1)</script></button>');
    if ($options!=null)
        $elements[3]->setValue($options->altura);

    $elements[4] = $this->createElement('NumberTextBox', 'BasicoCadastrarDadosUsuarioDadosBiometricosPeso');
    $elements[4]->setOrder(4);
    $elements[4]->setRequired(false);
    $elements[4]->addFilters(array('StringTrim', 'StripTags'));
    $elements[4]->addDecorator('Label', array('escape' => false));
    $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[4]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_PESO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosBiometricos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PESO_AJUDA')) . '\', 1)</script></button>');
    if ($options!=null)
        $elements[4]->setValue($options->peso);

    $elements[5] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguinio');
    $elements[5]->setOrder(5);
    $elements[5]->setRequired(false);
    $elements[5]->addFilters(array('StringTrim', 'StripTags'));
    $elements[5]->addDecorator('Label', array('escape' => false));
    $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    $elements[5]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_TIPO_SANGUINIO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosBiometricos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TIPO_SANGUINIO_AJUDA')) . '\', 1)</script></button>');
    if ($options!=null)
        $elements[5]->setValue($options->tipoSanguinio);

    $elements[6] = $this->createElement('SimpleTextarea', 'BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico', array('style' => 'width: 472px;'));
    $elements[6]->setOrder(6);
    $elements[6]->setRequired(false);
    $elements[6]->addFilters(array('StringTrim', 'StripTags'));
    $elements[6]->addDecorator('Label', array('escape' => false));
    $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[6]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_HISTORICO_MEDICO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosBiometricos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_HISTORICO_MEDICO_AJUDA')) . '\', 1)</script></button>');
    if ($options!=null)
        $elements[6]->setValue($options->historicoMedico);

    $elements[7] = $this->createElement('submitButton', 'BasicoCadastrarDadosUsuarioDadosBiometricosEnviar');
    $elements[7]->setOrder(7);
    $elements[7]->setRequired(false);
    $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[7]->removeDecorator('DtDdWrapper');
    $elements[7]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm->addElements($elements);
    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosUsuarioDadosBiometricosSubForm, 'CadastrarDadosUsuarioDadosBiometricos');
?>