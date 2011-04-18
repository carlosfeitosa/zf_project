<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 18/04/2011 12:22:34
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
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->setName('CadastrarDadosUsuarioDadosProfissionais');
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->addAttribs(array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_PROFISSIONAIS'),'legend' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_PROFISSIONAIS')));
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->setOrder(3);

    // Criando array de elementos.
    $elements = array();

    $elements[1] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisButtonDialogDojo1');
    $elements[1]->setOrder(1);
    $elements[1]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL')}\")"));
    $elements[1]->setRequired(false);
    $elements[1]->removeDecorator('DtDdWrapper');

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->addElements($elements);
    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosUsuarioDadosProfissionaisSubForm, 'CadastrarDadosUsuarioDadosProfissionais');
?>