<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 11/05/2011 13:59:25
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
* @version    1: 11/05/2011 11:47:43
*/
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->setName('CadastrarDadosUsuarioInformacoesBancarias');
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->addAttribs(array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_INFORMACOES_BANCARIAS'),'legend' => $this->getView()->tradutor('SUBFORM_TABTITLE_INFORMACOES_BANCARIAS')));
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->setOrder(5);

    $this->addSubForm($basicoCadastrarDadosUsuarioInformacoesBancariasSubForm, 'CadastrarDadosUsuarioInformacoesBancarias');

    // Incluindo arquivos de sub-formularios no formulario pai.
    require("CadastrarDadosUsuarioInformacoesBancariasDadosBancarios.php");

    // Incluindo arquivos de sub-formularios no formulario pai.
    require("CadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceira.php");
?>