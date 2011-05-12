<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 12/05/2011 18:15:20
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
* @version    1: 12/05/2011 17:14:02
*/
    $basicoCadastrarDadosUsuarioContaSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioContaSubForm->setName('CadastrarDadosUsuarioConta');
    $basicoCadastrarDadosUsuarioContaSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioContaSubForm->setAction(Basico_OPController_TokenOPController::getInstance()->gerarTokenPorUrl('/rochedo_project/public/basico/dadosusuario/salvar'));
    $basicoCadastrarDadosUsuarioContaSubForm->addAttribs(array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_CONTA'),'legend' => $this->getView()->tradutor('SUBFORM_TABTITLE_CONTA'),'onSubmit'=>"loading();return(validateForm('CadastrarDadosUsuarioConta', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
    $basicoCadastrarDadosUsuarioContaSubForm->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));
    $basicoCadastrarDadosUsuarioContaSubForm->setOrder(7);

    // Adicionando paths para localizacao de componentes nao ZF.
    $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

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

    $elements[2] = $this->createElement('PasswordTextBox', 'BasicoCadastrarDadosUsuarioContaSenhaAtual');
    $elements[2]->setOrder(2);
    $elements[2]->setRequired(false);
    $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_SENHA_ATUAL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioConta\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SENHA_ATUAL_AJUDA')) . '\', 1)</script></button>');

    $elements[3] = $this->createElement('PasswordTextBox', 'BasicoCadastrarDadosUsuarioContaNovaSenha');
    $elements[3]->setOrder(3);
    $elements[3]->setRequired(false);
    $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_NOVA_SENHA') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioConta\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOVA_SENHA_AJUDA')) . '\', 1)</script></button>');

    $elements[4] = $this->createElement('html', 'BasicoCadastrarDadosUsuarioContaPasswordStrengthChecker', array('value' => "<div id='scorebarBorder'><div id='score'>0%</div><div id='scorebar'>&nbsp;</div></div><div id='complexity'></div>"));
    $elements[4]->setOrder(4);
    $elements[4]->setRequired(false);
    $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));

    $elements[5] = $this->createElement('PasswordTextBox', 'BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha');
    $elements[5]->setOrder(5);
    $elements[5]->setRequired(false);
    $elements[5]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[5]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_CONFIRMACAO_NOVA_SENHA') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioConta\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CONFIRMACAO_NOVA_SENHA_AJUDA')) . '\', 1)</script></button>');

    $elements[6] = $this->createElement('html', 'BasicoCadastrarDadosUsuarioContaDescricaoMudancaSenha');
    $elements[6]->setOrder(6);
    $elements[6]->setRequired(false);
    $elements[6]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[6]->setLabel('' . $this->getView()->tradutor('FORM_ELEMENT_HTML_TEXT_INSTRUCOES_MUDANCA_SENHA_SUBFORM_DADOS_USUARIO_CONTA') . '');

    $elements[7] = $this->createElement('submitButton', 'BasicoCadastrarDadosUsuarioContaEnviar');
    $elements[7]->setOrder(7);
    $elements[7]->setRequired(false);
    $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[7]->removeDecorator('DtDdWrapper');
    $elements[7]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

    $elements[8] = $this->createElement('hash', 'BasicoCadastrarDadosUsuarioContaCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
    $elements[8]->setOrder(8);
    $elements[8]->setRequired(false);
    $elements[8]->removeDecorator('Label');

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioContaSubForm->addElements($elements);
    // Adicionando sub-formulario ao formulario pai.

    // Adicionando displays groups.
    $basicoCadastrarDadosUsuarioContaSubForm->addDisplayGroup(array($elements[1]->getName()), 'dados_usuario_conta_perfil_vinculado_padrao', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_PERFIL_VINCULADO_PADRAO'), 'order' => 1));
    $dados_usuario_conta_perfil_vinculado_padrao = $basicoCadastrarDadosUsuarioContaSubForm->getDisplayGroup('dados_usuario_conta_perfil_vinculado_padrao');
    $dados_usuario_conta_perfil_vinculado_padrao->removeDecorator('DtDdWrapper');
    $dados_usuario_conta_perfil_vinculado_padrao->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    // Adicionando displays groups.
    $basicoCadastrarDadosUsuarioContaSubForm->addDisplayGroup(array($elements[2]->getName(),$elements[3]->getName(),$elements[4]->getName(),$elements[5]->getName()), 'dados_usuario_conta_troca_de_senha', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_TROCA_DE_SENHA'), 'order' => 2));
    $dados_usuario_conta_troca_de_senha = $basicoCadastrarDadosUsuarioContaSubForm->getDisplayGroup('dados_usuario_conta_troca_de_senha');
    $dados_usuario_conta_troca_de_senha->removeDecorator('DtDdWrapper');
    $dados_usuario_conta_troca_de_senha->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));

    $this->addSubForm($basicoCadastrarDadosUsuarioContaSubForm, 'CadastrarDadosUsuarioConta');
?>