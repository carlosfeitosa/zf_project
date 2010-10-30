<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 30/10/2010 09:55:18
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
* @version    1: 30/10/2010 09:54:57
*/
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->setName('CadastrarDadosUsuarioDadosProfissionais');
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->addAttribs(array('dijitParams' => array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_PROFISSIONAIS'))));

    // Criando array de elementos.
    $elements = array();

    $elements[0] = $this->createElement('button', 'buttonDialogDojo1');
    $elements[0]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL')}\")"));
    $elements[0]->setRequired(false);

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->addElements($elements);

    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosUsuarioDadosProfissionaisSubForm, 'CadastrarDadosUsuarioDadosProfissionais');
?>