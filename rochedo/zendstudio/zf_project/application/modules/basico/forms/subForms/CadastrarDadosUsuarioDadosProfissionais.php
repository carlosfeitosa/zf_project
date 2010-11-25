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
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->setName('CadastrarDadosUsuarioDadosProfissionais');
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->addAttribs(array('dijitParams' => array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_PROFISSIONAIS'))));
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->setOrder(3);

    // Criando array de elementos.
    $elements = array();

    $elements[2] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisButtonDialogDojo1');
    $elements[2]->setOrder(2);
    $elements[2]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL')}\")"));
    $elements[2]->setRequired(false);
    $elements[2]->removeDecorator('DtDdWrapper');

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->addElements($elements);
    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosUsuarioDadosProfissionaisSubForm, 'CadastrarDadosUsuarioDadosProfissionais');
?>