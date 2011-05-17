<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 17/05/2011 11:35:21
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
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->setName('CadastrarDadosUsuarioDadosAcademicos');
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addAttribs(array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_ACADEMICOS'),'legend' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_ACADEMICOS')));
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->setOrder(2);

    // Criando array de elementos.
    $elements = array();

    $elements[1] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosCategoriaBolsaCnpq');
    $elements[1]->setOrder(1);
    $elements[1]->setRequired(false);
    $elements[1]->addFilters(array('StringTrim', 'StripTags'));
    $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[1]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_CATEGORIA_BOLSA_CNPQ_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CATEGORIA_BOLSA_CNPQ_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosAcademicosCategoriaBolsaCnpq'])))
        $elements[1]->setValue($options['BasicoCadastrarDadosUsuarioDadosAcademicosCategoriaBolsaCnpq']);

    $elements[2] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacao');
    $elements[2]->setOrder(2);
    $elements[2]->setRequired(false);
    $elements[2]->addFilters(array('StringTrim', 'StripTags'));
    $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacao'])))
        $elements[2]->setValue($options['BasicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacao']);

    $elements[3] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosInstituicaoQueConcedeu');
    $elements[3]->setOrder(3);
    $elements[3]->setRequired(false);
    $elements[3]->addFilters(array('StringTrim', 'StripTags'));
    $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_INSTITUICAO_QUE_CONCEDEU_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_INSTITUICAO_QUE_CONCEDEU_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');

    $elements[4] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosAreaDeConhecimento');
    $elements[4]->setOrder(4);
    $elements[4]->setRequired(false);
    $elements[4]->addFilters(array('StringTrim', 'StripTags'));
    $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[4]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_AREA_DE_CONHECIMENTO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_AREA_DE_CONHECIMENTO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');

    $elements[5] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosAcademicosNomeCurso');
    $elements[5]->setOrder(5);
    $elements[5]->setRequired(false);
    $elements[5]->addFilters(array('StringTrim', 'StripTags'));
    $elements[5]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[5]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_NOME_CURSO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_CURSO_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
    $elements[5]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_CURSO_TEXT_BOX_HINT'));
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosAcademicosNomeCurso'])))
        $elements[5]->setValue($options['BasicoCadastrarDadosUsuarioDadosAcademicosNomeCurso']);

    $elements[6] = $this->createElement('DateTextBox', 'BasicoCadastrarDadosUsuarioDadosAcademicosDataObtencao');
    $elements[6]->setOrder(6);
    $elements[6]->setRequired(false);
    $elements[6]->addFilters(array('StringTrim', 'StripTags'));
    $elements[6]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[6]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_DATA_OBTENCAO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
    $elements[6]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX_HINT'));

    $elements[7] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosTitulacaoEsperada');
    $elements[7]->setOrder(7);
    $elements[7]->setRequired(false);
    $elements[7]->addFilters(array('StringTrim', 'StripTags'));
    $elements[7]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[7]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_TITULACAO_ESPERADA_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TITULACAO_ESPERADA_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');

    $elements[8] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosInstituicaoCursoAtual');
    $elements[8]->setOrder(8);
    $elements[8]->setRequired(false);
    $elements[8]->addFilters(array('StringTrim', 'StripTags'));
    $elements[8]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[8]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[8]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_INSTITUICAO_CURSO_ATUAL_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_INSTITUICAO_CURSO_ATUAL_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');

    $elements[9] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosAreaConhecimentoCursoAtual');
    $elements[9]->setOrder(9);
    $elements[9]->setRequired(false);
    $elements[9]->addFilters(array('StringTrim', 'StripTags'));
    $elements[9]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[9]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[9]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');

    $elements[10] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosAcademicosNomeCursoAtual');
    $elements[10]->setOrder(10);
    $elements[10]->setRequired(false);
    $elements[10]->addFilters(array('StringTrim', 'StripTags'));
    $elements[10]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[10]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[10]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_NOME_CURSO_ATUAL_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_CURSO_ATUAL_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
    $elements[10]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_CURSO_ATUAL_TEXT_BOX_HINT'));

    $elements[11] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosPeriodo');
    $elements[11]->setOrder(11);
    $elements[11]->setRequired(false);
    $elements[11]->addFilters(array('StringTrim', 'StripTags'));
    $elements[11]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[11]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[11]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_PERIODO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PERIODO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');

    $elements[12] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosTurno');
    $elements[12]->setOrder(12);
    $elements[12]->setRequired(false);
    $elements[12]->addFilters(array('StringTrim', 'StripTags'));
    $elements[12]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[12]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[12]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_TURNO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TURNO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');

    $elements[13] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosAcademicosButtonDialogDojo1');
    $elements[13]->setOrder(13);
    $elements[13]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_VISUALIZAR_POS_GRADUACAO')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosAcademicosCoordenacaoPosGraduacao\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosAcademicosCoordenacaoPosGraduacao." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_VISUALIZAR_POS_GRADUACAO')}\")"));
    $elements[13]->setRequired(false);
    $elements[13]->removeDecorator('DtDdWrapper');

    $elements[14] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosAcademicosButtonDialogDojo2');
    $elements[14]->setOrder(14);
    $elements[14]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_VISUALIZAR_ORIENTACOES')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosAcademicosOrientacoes\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosAcademicosOrientacoes." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_VISUALIZAR_ORIENTACOES')}\")"));
    $elements[14]->setRequired(false);
    $elements[14]->removeDecorator('DtDdWrapper');

    $elements[15] = $this->createElement('hash', 'BasicoCadastrarDadosUsuarioDadosAcademicosCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
    $elements[15]->setOrder(15);
    $elements[15]->setRequired(false);
    $elements[15]->removeDecorator('Label');

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addElements($elements);
    // Adicionando sub-formulario ao formulario pai.

    // Adicionando displays groups.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addDisplayGroup(array($elements[2]->getName(),$elements[3]->getName(),$elements[4]->getName(),$elements[5]->getName(),$elements[6]->getName()), 'dados_usuario_dados_academicos_maior_titulacao', array('legend' => $this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO_DISPLAY_GROUP_LABEL'), 'order' => 2));
    $dados_usuario_dados_academicos_maior_titulacao = $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->getDisplayGroup('dados_usuario_dados_academicos_maior_titulacao');
    $dados_usuario_dados_academicos_maior_titulacao->removeDecorator('DtDdWrapper');
    $dados_usuario_dados_academicos_maior_titulacao->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    // Adicionando displays groups.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addDisplayGroup(array($elements[7]->getName(),$elements[8]->getName(),$elements[9]->getName(),$elements[10]->getName(),$elements[11]->getName(),$elements[12]->getName()), 'dados_usuario_dados_academicos_curso_atual', array('legend' => $this->getView()->tradutor('FORM_FIELD_CURSO_ATUAL_DISPLAY_GROUP_LABEL'), 'order' => 7));
    $dados_usuario_dados_academicos_curso_atual = $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->getDisplayGroup('dados_usuario_dados_academicos_curso_atual');
    $dados_usuario_dados_academicos_curso_atual->removeDecorator('DtDdWrapper');
    $dados_usuario_dados_academicos_curso_atual->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    // Adicionando displays groups.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addDisplayGroup(array($elements[13]->getName()), 'dados_usuario_dados_academicos_coordenacao_pos_graduacao', array('legend' => $this->getView()->tradutor('FORM_FIELD_COORDENACAO_POS_GRADUACAO_DISPLAY_GROUP_LABEL'), 'order' => 13));
    $dados_usuario_dados_academicos_coordenacao_pos_graduacao = $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->getDisplayGroup('dados_usuario_dados_academicos_coordenacao_pos_graduacao');
    $dados_usuario_dados_academicos_coordenacao_pos_graduacao->removeDecorator('DtDdWrapper');
    // Adicionando displays groups.
    $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->addDisplayGroup(array($elements[14]->getName()), 'dados_usuario_dados_academicos_orientacoes', array('legend' => $this->getView()->tradutor('FORM_FIELD_ORIENTACOES_DISPLAY_GROUP_LABEL'), 'order' => 14));
    $dados_usuario_dados_academicos_orientacoes = $basicoCadastrarDadosUsuarioDadosAcademicosSubForm->getDisplayGroup('dados_usuario_dados_academicos_orientacoes');
    $dados_usuario_dados_academicos_orientacoes->removeDecorator('DtDdWrapper');

    $this->addSubForm($basicoCadastrarDadosUsuarioDadosAcademicosSubForm, 'CadastrarDadosUsuarioDadosAcademicos');
?>