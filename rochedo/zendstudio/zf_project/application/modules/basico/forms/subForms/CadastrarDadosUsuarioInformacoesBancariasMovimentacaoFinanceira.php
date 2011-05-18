<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 18/05/2011 11:40:34
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
* @version    1: 17/05/2011 11:20:34
*/
    $basicoCadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceiraSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceiraSubForm->setName('CadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceira');
    $basicoCadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceiraSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceiraSubForm->addAttribs(array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_INFORMACOES_BANCARIAS_MOVIMENTACAO_FINANCEIRA'),'legend' => $this->getView()->tradutor('SUBFORM_TABTITLE_INFORMACOES_BANCARIAS_MOVIMENTACAO_FINANCEIRA')));
    $basicoCadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceiraSubForm->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));
    $basicoCadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceiraSubForm->setOrder(2);

    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->addSubForm($basicoCadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceiraSubForm, 'CadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceira');
?>