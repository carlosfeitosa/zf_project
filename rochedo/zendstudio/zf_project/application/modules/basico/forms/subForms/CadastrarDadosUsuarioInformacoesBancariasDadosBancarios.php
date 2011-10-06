<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 06/10/2011 10:24:44
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
* @version    1: 05/10/2011 11:05:13
*/
    $basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm->setName('CadastrarDadosUsuarioInformacoesBancariasDadosBancarios');
    $basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm->addAttribs(array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_INFORMACOES_BANCARIAS_DADOS_BANCARIOS'),'legend' => $this->getView()->tradutor('SUBFORM_TABTITLE_INFORMACOES_BANCARIAS_DADOS_BANCARIOS'),'rascunho' => true));
    $basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));
    $basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm->setOrder(1);

    // Criando array de elementos.
    $elements = array();

    $elements[1] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosButtonDialogDojo1');
    $elements[1]->setOrder(1);
    $elements[1]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_CONTAS_BANCARIAS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioInformacoesBancariasContasBancarias\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioInformacoesBancariasContasBancarias." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_CONTAS_BANCARIAS')}\")"));
    $elements[1]->setRequired(false);
    $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    $elements[1]->removeDecorator('DtDdWrapper');

    // Removendo escapes das mensagens de erro dos elementos do formulario.
    Basico_OPController_UtilOPController::removeEscapeMensagensErrosZendFormElements($elements);

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm->addElements($elements);
    // Adicionando sub-formulario ao formulario pai.
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->addSubForm($basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm, 'CadastrarDadosUsuarioInformacoesBancariasDadosBancarios');
?>