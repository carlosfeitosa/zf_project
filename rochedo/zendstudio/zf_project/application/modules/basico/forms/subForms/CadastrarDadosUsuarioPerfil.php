<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 18/04/2011 12:22:36
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
* @version    1: 18/04/2011 12:20:39
*/
    $basicoCadastrarDadosUsuarioPerfilSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioPerfilSubForm->setName('CadastrarDadosUsuarioPerfil');
    $basicoCadastrarDadosUsuarioPerfilSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioPerfilSubForm->addAttribs(array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_PERFIL'),'legend' => $this->getView()->tradutor('SUBFORM_TABTITLE_PERFIL')));
    $basicoCadastrarDadosUsuarioPerfilSubForm->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));
    $basicoCadastrarDadosUsuarioPerfilSubForm->setOrder(7);

    // Criando array de elementos.
    $elements = array();

    $elements[1] = $this->createElement('MultiCheckbox', 'BasicoCadastrarDadosUsuarioPerfilPerfisDisponiveis');
    $elements[1]->setOrder(1);
    $elements[1]->setRequired(false);
    $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[1]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_PERFIS_DISPONIVEIS') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioPerfil\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PERFIS_DISPONIVEIS_AJUDA')) . '\', 1)</script></button>');
    if ($options!=null)
        $elements[1]->setValue($options->BasicoCadastrarDadosUsuarioPerfilPerfisDisponiveis);

    $elements[2] = $this->createElement('hash', 'BasicoCadastrarDadosUsuarioPerfilCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
    $elements[2]->setOrder(2);
    $elements[2]->setRequired(false);
    $elements[2]->removeDecorator('Label');

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioPerfilSubForm->addElements($elements);
    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosUsuarioPerfilSubForm, 'CadastrarDadosUsuarioPerfil');
?>