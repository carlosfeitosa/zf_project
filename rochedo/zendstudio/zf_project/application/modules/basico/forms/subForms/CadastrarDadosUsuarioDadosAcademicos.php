<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 22/10/2010 11:41:44
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
* @version    1: 22/10/2010 11:41:28
*/
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->setName('CadastrarDadosUsuarioDadosAcademicos');
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addAttribs(array('dijitParams' => array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_ACADEMICOS'))));

    // Criando array de elementos.
    $elements = array();

    $elements[0] = $this->createElement('FilteringSelect', 'categoriaBolsaCnpq');
    $elements[0]->setRequired(true);
    $elements[0]->addFilters(array('StringTrim', 'StripTags'));
    $elements[0]->addDecorator('Label', array('escape' => false));
    $elements[0]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_CATEGORIA_BOLSA_CNPQ', DEFAULT_USER_LANGUAGE) . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE', DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_CATEGORIA_BOLSA_CNPQ_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)</script></button>');
    if ($options!=null)
        $elements[0]->setValue($options->categoriaBolsaCnpq);

    $basicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoSubFormDOJO = new Basico_Form_CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao();
    $basicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoSubFormDOJO = Basico_UtilControllerController::escapaCaracteresFormDialogDOJO($basicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoSubFormDOJO);
    $elements[1] = $this->createElement('button', 'buttonDialogDojo1');
    $elements[1]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO')}", 'onClick' => "exibirForm(\"Basico_Form_CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao\", \"{$basicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoSubFormDOJO}\", \"{$this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO')}\")"));
    $elements[1]->setRequired(false);

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addElements($elements);

    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosUsuarioDadosAcademicosSubForm, 'CadastrarDadosUsuarioDadosAcademicos');
?>