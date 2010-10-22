<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 22/10/2010 09:55:43
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
* @version    1: 22/10/2010 09:53:51
*/
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->setName('CadastrarDadosUsuarioDadosProfissionais');
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->addAttribs(array('dijitParams' => array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_PROFISSIONAIS'))));
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->setDecorators(array('FormElements',
                array('AccordionContainer', array('id' => 'AccordionContainer', 'style' => 'width: 850px; height: 430px; position: relative; z-index: 3;',
                      )),));

    // Criando array de elementos.
    $elements = array();

    $basicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalSubFormDOJO = new Basico_Form_CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional();
    $basicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalSubFormDOJO = Basico_UtilControllerController::escapaCaracteresFormDialogDOJO($basicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalSubFormDOJO);
    $elements[0] = $this->createElement('button', 'buttonDialogDojo1');
    $elements[0]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL')}", 'onClick' => "exibirForm(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\", \"{$basicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalSubFormDOJO}\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL')}\")"));
    $elements[0]->setRequired(false);

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioDadosProfissionaisSubForm->addElements($elements);

    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosUsuarioDadosProfissionaisSubForm, 'CadastrarDadosUsuarioDadosProfissionais');
?>