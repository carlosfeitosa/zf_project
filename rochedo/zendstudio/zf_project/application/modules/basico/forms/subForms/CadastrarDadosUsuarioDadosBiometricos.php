<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 20/10/2011 10:27:40
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
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm->setName('CadastrarDadosUsuarioDadosBiometricos');
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm->setAction(Basico_OPController_TokenOPController::getInstance()->gerarTokenPorUrl('/rochedo_project/public/basico/dadosusuario/salvar'));
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm->addAttribs(array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_BIOMETRICOS'),'legend' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_BIOMETRICOS'),'onSubmit'=>"return(validateForm('CadastrarDadosUsuarioDadosBiometricos', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))",'rascunho' => true));
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm->setOrder(4);

    // Adicionando paths para localizacao de componentes nao ZF.
    $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

    // Criando array de elementos.
    $elements = array();

    $elements[1] = $this->createElement('RadioButton', 'BasicoCadastrarDadosUsuarioDadosBiometricosSexo', array('separator' => " "));
    $elements[1]->setOrder(1);
    $elements[1]->setRequired(false);
    $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    $elements[1]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_SEXO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosBiometricos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SEXO_AJUDA')) . '\', 1)</script></button>');
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosBiometricosSexo'])))
        $elements[1]->setValue($options['BasicoCadastrarDadosUsuarioDadosBiometricosSexo']);

    $elements[2] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosBiometricosRaca');
    $elements[2]->setOrder(2);
    $elements[2]->setRequired(false);
    $elements[2]->addFilters(array('StringTrim', 'StripTags'));
    $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_RACA') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosBiometricos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_RACA_AJUDA')) . '\', 1)</script></button>');
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosBiometricosRaca'])))
        $elements[2]->setValue($options['BasicoCadastrarDadosUsuarioDadosBiometricosRaca']);

    $elements[3] = $this->createElement('NumberTextBox', 'BasicoCadastrarDadosUsuarioDadosBiometricosAltura', array('style' => 'width: 40px;'));
    $elements[3]->setOrder(3);
    $elements[3]->setAttribs(array('maxlength' => '5'));
    $elements[3]->setRequired(false);
    $elements[3]->addFilters(array('StringTrim', 'StripTags'));
    $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_ALTURA') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosBiometricos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ALTURA_AJUDA')) . '\', 1)</script></button>');
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosBiometricosAltura'])))
        $elements[3]->setValue($options['BasicoCadastrarDadosUsuarioDadosBiometricosAltura']);

    $elements[4] = $this->createElement('NumberTextBox', 'BasicoCadastrarDadosUsuarioDadosBiometricosPeso', array('style' => 'width: 50px;'));
    $elements[4]->setOrder(4);
    $elements[4]->setAttribs(array('maxlength' => '7'));
    $elements[4]->setRequired(false);
    $elements[4]->addFilters(array('StringTrim', 'StripTags'));
    $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[4]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_PESO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosBiometricos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PESO_AJUDA')) . '\', 1)</script></button>');
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosBiometricosPeso'])))
        $elements[4]->setValue($options['BasicoCadastrarDadosUsuarioDadosBiometricosPeso']);

    $elements[5] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo');
    $elements[5]->setOrder(5);
    $elements[5]->setRequired(false);
    $elements[5]->addFilters(array('StringTrim', 'StripTags'));
    $elements[5]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    $elements[5]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_TIPO_SANGUINEO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosBiometricos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TIPO_SANGUINEO_AJUDA')) . '\', 1)</script></button>');
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo'])))
        $elements[5]->setValue($options['BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo']);

    $elements[6] = $this->createElement('SimpleTextarea', 'BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico', array('style' => 'width: 472px;'));
    $elements[6]->setOrder(6);
    $elements[6]->setRequired(false);
    $elements[6]->addFilters(array('StringTrim', 'StripTags'));
    $elements[6]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[6]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_HISTORICO_MEDICO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosBiometricos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_HISTORICO_MEDICO_AJUDA')) . '\', 1)</script></button>');
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico'])))
        $elements[6]->setValue($options['BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico']);

    $elements[7] = $this->createElement('submitButton', 'BasicoCadastrarDadosUsuarioDadosBiometricosEnviar');
    $elements[7]->setOrder(7);
    $elements[7]->setRequired(false);
    $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[7]->removeDecorator('DtDdWrapper');
    $elements[7]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

    $elements[8] = $this->createElement('hash', 'BasicoCadastrarDadosUsuarioDadosBiometricosCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
    $elements[8]->setOrder(8);
    $elements[8]->setRequired(false);
    $elements[8]->removeDecorator('Label');

    $elements[9] = $this->createElement('JavaScript', 'BasicoCadastrarDadosUsuarioDadosBiometricosJavaScript', array('value' => ""));
    $elements[9]->setOrder(9);
    $elements[9]->setRequired(false);
    $elements[9]->removeDecorator('DtDdWrapper');
    $elements[9]->setValue("<script type='text/javascript'>\$(function () {\$('#CadastrarDadosUsuarioDadosBiometricos-BasicoCadastrarDadosUsuarioDadosBiometricosAltura').maskMoney({decimal:\",\", precision: 2});\$('#CadastrarDadosUsuarioDadosBiometricos-BasicoCadastrarDadosUsuarioDadosBiometricosPeso').maskMoney({decimal:\",\", precision: 3});});</script>");

    // Removendo escapes das mensagens de erro dos elementos do formulario.
    Basico_OPController_UtilOPController::removeEscapeMensagensErrosZendFormElements($elements);

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioDadosBiometricosSubForm->addElements($elements);
    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosUsuarioDadosBiometricosSubForm, 'CadastrarDadosUsuarioDadosBiometricos');
?>