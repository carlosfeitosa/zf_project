<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 23/12/2010 00:24:11
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
* @version    1: 23/12/2010 00:18:53
*/
    $basicoCadastrarDadosUsuarioPerfilSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioPerfilSubForm->setName('CadastrarDadosUsuarioPerfil');
    $basicoCadastrarDadosUsuarioPerfilSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioPerfilSubForm->addAttribs(array('dijitParams' => array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_PERFIL'))));
    $basicoCadastrarDadosUsuarioPerfilSubForm->setOrder(7);

    // Criando array de elementos.
    $elements = array();

    $elements[1] = $this->createElement('MultiCheckbox', 'BasicoCadastrarDadosUsuarioPerfilPerfisDisponiveis');
    $elements[1]->setOrder(1);
    $elements[1]->setRequired(false);
    $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[1]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_PERFIS_DISPONIVEIS') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioPerfil\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PERFIS_DISPONIVEIS_AJUDA')) . '\', 1)</script></button>');
    if ($options!=null)
        $elements[1]->setValue($options->perfisDisponiveis);

    // Adicionando elementos ao formulario.
    // Adicionando sub-formulario ao formulario pai.
    $basicoCadastrarDadosUsuarioPerfilSubForm->addElements($elements);
    $this->addSubForm($basicoCadastrarDadosUsuarioPerfilSubForm, 'CadastrarDadosUsuarioPerfil');
?>