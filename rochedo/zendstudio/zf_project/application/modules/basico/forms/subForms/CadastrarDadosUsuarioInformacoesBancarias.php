<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 29/03/2011 09:27:56
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
* @version    1: 29/03/2011 09:25:35
*/
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->setName('CadastrarDadosUsuarioInformacoesBancarias');
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->addAttribs(array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_INFORMACOES_BANCARIAS'),'legend' => $this->getView()->tradutor('SUBFORM_TABTITLE_INFORMACOES_BANCARIAS')));
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->setOrder(5);

    $this->addSubForm($basicoCadastrarDadosUsuarioInformacoesBancariasSubForm, 'CadastrarDadosUsuarioInformacoesBancarias');

    // Incluindo arquivos de sub-formularios no formulario pai.
    require("CadastrarDadosUsuarioInformacoesBancariasDadosBancarios.php");

    // Incluindo arquivos de sub-formularios no formulario pai.
    require("CadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceira.php");
?>