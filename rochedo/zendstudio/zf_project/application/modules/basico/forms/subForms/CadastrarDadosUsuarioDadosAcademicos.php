<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 04/10/2010 16:22:27
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
* @version    1: 04/10/2010 14:13:18
*/
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->setName('CadastrarDadosUsuarioDadosAcademicos');
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addAttribs(array('dijitParams' => array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_ACADEMICOS'))));

    // Criando array de elementos.
    $elements = array();

    $basicoCadastrarUsuarioNaoValidadoSubFormDOJO = new Basico_Form_CadastrarUsuarioNaoValidado();
    $basicoCadastrarUsuarioNaoValidadoSubFormDOJO = Basico_UtilControllerController::escapaCaracteresFormDialogDOJO($basicoCadastrarUsuarioNaoValidadoSubFormDOJO);
    $elements[0] = $this->createElement('button', 'buttonDialogDojo1');
    $elements[0]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_FIELD_NOME_HINT')}", 'onClick' => "exibirForm(\"Basico_Form_CadastrarUsuarioNaoValidado\", \"{$basicoCadastrarUsuarioNaoValidadoSubFormDOJO}\", \"{$this->getView()->tradutor('FORM_FIELD_NOME_HINT')}\")"));
    $elements[0]->setRequired(false);

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addElements($elements);

    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosUsuarioDadosAcademicosSubForm, 'CadastrarDadosUsuarioDadosAcademicos');
?>