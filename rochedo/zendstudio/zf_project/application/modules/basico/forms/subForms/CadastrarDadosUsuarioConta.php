<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 11/05/2011 09:28:26
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
* @version    1: 11/05/2011 09:25:36
*/
    $basicoCadastrarDadosUsuarioContaSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioContaSubForm->setName('CadastrarDadosUsuarioConta');
    $basicoCadastrarDadosUsuarioContaSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioContaSubForm->setAction(Basico_OPController_TokenOPController::getInstance()->gerarTokenPorUrl('/rochedo_project/public/basico/dadosusuario/salvar'));
    $basicoCadastrarDadosUsuarioContaSubForm->addAttribs(array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_CONTA'),'legend' => $this->getView()->tradutor('SUBFORM_TABTITLE_CONTA'),'onSubmit'=>"loading();return(validateForm('CadastrarDadosUsuarioConta', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
    $basicoCadastrarDadosUsuarioContaSubForm->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));
    $basicoCadastrarDadosUsuarioContaSubForm->setOrder(7);

    // Criando array de elementos.
    $elements = array();

    $elements[1] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioContaPerfisVinculadosDisponiveis');
    $elements[1]->setOrder(1);
    $elements[1]->setRequired(false);
    $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[1]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_PERFIS_VINCULADOS_DISPONIVEIS') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioConta\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PERFIS_DISPONIVEIS_AJUDA')) . '\', 1)</script></button>');
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioContaPerfisVinculadosDisponiveis'])))
        $elements[1]->setValue($options['BasicoCadastrarDadosUsuarioContaPerfisVinculadosDisponiveis']);

    $elements[2] = $this->createElement('submitButton', 'BasicoCadastrarDadosUsuarioContaEnviar');
    $elements[2]->setOrder(2);
    $elements[2]->setRequired(false);
    $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[2]->removeDecorator('DtDdWrapper');
    $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

    $elements[3] = $this->createElement('hash', 'BasicoCadastrarDadosUsuarioContaCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
    $elements[3]->setOrder(3);
    $elements[3]->setRequired(false);
    $elements[3]->removeDecorator('Label');

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioContaSubForm->addElements($elements);
    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosUsuarioContaSubForm, 'CadastrarDadosUsuarioConta');
?>