<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 13/12/2010 15:50:40
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
* @version    1: 13/12/2010 15:49:59
*/
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->setName('CadastrarDadosUsuarioInformacoesBancarias');
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->setMethod('post');
    
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->addAttribs(array('dijitParams' => array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_INFORMACOES_BANCARIAS'))));
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->setDecorators(array('FormElements',
                array('TabContainer', array('id' => 'TabContainer666', 'style' => 'width: 850px; height: 430px; top: 10px; position: relative; z-index: 3;',
                      'dijitParams' => array('tabPosition' => 'top'),)),));
    $basicoCadastrarDadosUsuarioInformacoesBancariasSubForm->setOrder(5);
    
 
    $this->addSubForm($basicoCadastrarDadosUsuarioInformacoesBancariasSubForm, 'CadastrarDadosUsuarioInformacoesBancarias');
    
       // Incluindo arquivos de sub-formularios no formulario pai.
    require("CadastrarDadosUsuarioInformacoesBancariasDadosBancarios.php");
    
?>