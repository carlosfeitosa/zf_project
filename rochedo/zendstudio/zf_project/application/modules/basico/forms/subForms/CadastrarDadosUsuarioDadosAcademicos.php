<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 06/10/2010 13:46:15
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
* @version    1: 04/10/2010 15:58:47
*/
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->setName('CadastrarDadosUsuarioDadosAcademicos');
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addAttribs(array('dijitParams' => array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_ACADEMICOS'))));

    // Criando array de elementos.
    $elements = array();

    $basicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoSubFormDOJO = new Basico_Form_CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao();
    $basicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoSubFormDOJO = Basico_UtilControllerController::escapaCaracteresFormDialogDOJO($basicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoSubFormDOJO);
    $elements[0] = $this->createElement('button', 'buttonDialogDojo1');
    $elements[0]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO')}", 'onClick' => "exibirForm(\"Basico_Form_CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao\", \"{$basicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoSubFormDOJO}\", \"{$this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO')}\")"));
    $elements[0]->setRequired(false);

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addElements($elements);

    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosUsuarioDadosAcademicosSubForm, 'CadastrarDadosUsuarioDadosAcademicos');
?>