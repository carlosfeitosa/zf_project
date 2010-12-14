<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 14/12/2010 15:33:28
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
* @version    1: 14/12/2010 13:55:48
*/
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->setName('CadastrarDadosUsuarioDadosAcademicos');
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addAttribs(array('dijitParams' => array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_ACADEMICOS'))));
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->setOrder(2);

    // Criando array de elementos.
    $elements = array();

    $elements[1] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosCategoriaBolsaCnpq');
    $elements[1]->setOrder(1);
    $elements[1]->setRequired(true);
    $elements[1]->addFilters(array('StringTrim', 'StripTags'));
    $elements[1]->addDecorator('Label', array('escape' => false));
    $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CATEGORIA_BOLSA_CNPQ') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CATEGORIA_BOLSA_CNPQ_AJUDA')) . '\', 1)</script></button>');
    if ($options!=null)
        $elements[1]->setValue($options->categoriaBolsaCnpq);

    $elements[2] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosAcademicosButtonDialogDojo1');
    $elements[2]->setOrder(2);
    $elements[2]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO')}\")"));
    $elements[2]->setRequired(false);
    $elements[2]->removeDecorator('DtDdWrapper');

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addElements($elements);
    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosUsuarioDadosAcademicosSubForm, 'CadastrarDadosUsuarioDadosAcademicos');
?>