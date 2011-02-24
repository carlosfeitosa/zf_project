<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 24/02/2011 14:42:50
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
* @version    1: 24/02/2011 14:42:30
*/
    $basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm->setName('CadastrarDadosUsuarioInformacoesBancariasDadosBancarios');
    $basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm->addAttribs(array('dijitParams' => array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_INFORMACOES_BANCARIAS_DADOS_BANCARIOS'))));
    $basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm->setOrder(1);

    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->addSubForm($basicoCadastrarDadosUsuarioInformacoesBancariasDadosBancariosSubForm, 'CadastrarDadosUsuarioInformacoesBancariasDadosBancarios');
?>