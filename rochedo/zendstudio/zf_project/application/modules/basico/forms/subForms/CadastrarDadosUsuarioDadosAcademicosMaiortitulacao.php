<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 30/09/2010 14:10:35
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
* @version    1: 30/09/2010 10:52:14
*/
    $basicoCadastrarDadosUsuarioDadosAcademicosMaiortitulacaoSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosAcademicosMaiortitulacaoSubForm->setName('CadastrarDadosUsuarioDadosAcademicosMaiortitulacao');
    $basicoCadastrarDadosUsuarioDadosAcademicosMaiortitulacaoSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioDadosAcademicosMaiortitulacaoSubForm->addAttribs(array('title' => $this->getView()->tradutor(SUBFORM_DIALOG_MAIOR_TITULACAO),'onSubmit'=>"loading();return(validateForm('CadastrarDadosUsuarioDadosAcademicosMaiortitulacao'))"));
    $basicoCadastrarDadosUsuarioDadosAcademicosMaiortitulacaoSubForm->setDecorators(array('FormElements',
                array('TabContainer', array('id' => 'TabContainer', 'style' => 'width: 850px; height: 430px; position: relative; z-index: 3;',
                      'dijitParams' => array('tabPosition' => 'top'),)),));

    $this->addSubForm($basicoCadastrarDadosUsuarioDadosAcademicosMaiortitulacaoSubForm, 'CadastrarDadosUsuarioDadosAcademicosMaiortitulacao');
?>