<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 18/05/2011 11:40:30
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
    $basicoCadastrarDadosUsuarioDadosPessoaisSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->setName('CadastrarDadosUsuarioDadosPessoais');
    $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->addAttribs(array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_PESSOAIS'),'legend' => $this->getView()->tradutor('SUBFORM_TABTITLE_DADOS_PESSOAIS')));
    $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));
    $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->setOrder(1);

    // Criando array de elementos.
    $elements = array();

    $elements[1] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosPessoaisComboboxPaisNascimento');
    $elements[1]->setOrder(1);
    $elements[1]->setRequired(false);
    $elements[1]->addFilters(array('StringTrim', 'StripTags'));
    $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[1]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_PAIS_NASCIMENTO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosPessoaisComboboxPaisNascimento'])))
        $elements[1]->setValue($options['BasicoCadastrarDadosUsuarioDadosPessoaisComboboxPaisNascimento']);

    $elements[2] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosPessoaisComboboxUfNascimento');
    $elements[2]->setOrder(2);
    $elements[2]->setRequired(false);
    $elements[2]->addFilters(array('StringTrim', 'StripTags'));
    $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_UF_NASCIMENTO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_UF_NASCIMENTO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosPessoaisComboboxUfNascimento'])))
        $elements[2]->setValue($options['BasicoCadastrarDadosUsuarioDadosPessoaisComboboxUfNascimento']);

    $elements[3] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosPessoaisTextboxUfNascimento');
    $elements[3]->setOrder(3);
    $elements[3]->setRequired(false);
    $elements[3]->addFilters(array('StringTrim', 'StripTags'));
    $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_UF_NASCIMENTO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_UF_NASCIMENTO_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
    $elements[3]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_UF_NASCIMENTO_TEXT_BOX_HINT'));
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosPessoaisTextboxUfNascimento'])))
        $elements[3]->setValue($options['BasicoCadastrarDadosUsuarioDadosPessoaisTextboxUfNascimento']);

    $elements[4] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosPessoaisComboboxMunicipioNascimento');
    $elements[4]->setOrder(4);
    $elements[4]->setRequired(false);
    $elements[4]->addFilters(array('StringTrim', 'StripTags'));
    $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[4]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_MUNICIPIO_NASCIMENTO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosPessoaisComboboxMunicipioNascimento'])))
        $elements[4]->setValue($options['BasicoCadastrarDadosUsuarioDadosPessoaisComboboxMunicipioNascimento']);

    $elements[5] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosPessoaisTextboxMunicipioNascimento');
    $elements[5]->setOrder(5);
    $elements[5]->setRequired(false);
    $elements[5]->addFilters(array('StringTrim', 'StripTags'));
    $elements[5]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[5]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_MUNICIPIO_NASCIMENTO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
    $elements[5]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX_HINT'));
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosPessoaisTextboxMunicipioNascimento'])))
        $elements[5]->setValue($options['BasicoCadastrarDadosUsuarioDadosPessoaisTextboxMunicipioNascimento']);

    $elements[6] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosPessoaisTextboxNomePai');
    $elements[6]->setOrder(6);
    $elements[6]->setRequired(false);
    $elements[6]->addFilters(array('StringTrim', 'StripTags'));
    $elements[6]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    $elements[6]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_NOME_PAI_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_PAI_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
    $elements[6]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_PAI_TEXT_BOX_HINT'));
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosPessoaisTextboxNomePai'])))
        $elements[6]->setValue($options['BasicoCadastrarDadosUsuarioDadosPessoaisTextboxNomePai']);

    $elements[7] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosPessoaisTextboxNomeMae');
    $elements[7]->setOrder(7);
    $elements[7]->setRequired(false);
    $elements[7]->addFilters(array('StringTrim', 'StripTags'));
    $elements[7]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
    $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[7]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_NOME_MAE_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_MAE_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
    $elements[7]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_MAE_TEXT_BOX_HINT'));
    if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosPessoaisTextboxNomeMae'])))
        $elements[7]->setValue($options['BasicoCadastrarDadosUsuarioDadosPessoaisTextboxNomeMae']);

    $elements[8] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosPessoaisButtonDialogDojo1');
    $elements[8]->setOrder(8);
    $elements[8]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_DOCUMENTOS_PESSOAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosPessoaisDocumentosPessoais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosPessoaisDocumentosPessoais." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_DOCUMENTOS_PESSOAIS')}\")"));
    $elements[8]->setRequired(false);
    $elements[8]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    $elements[8]->removeDecorator('DtDdWrapper');

    $elements[9] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosPessoaisButtonDialogDojo2');
    $elements[9]->setOrder(9);
    $elements[9]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PESSOAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosPessoaisTelefonesPessoais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosPessoaisTelefonesPessoais." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PESSOAIS')}\")"));
    $elements[9]->setRequired(false);
    $elements[9]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    $elements[9]->removeDecorator('DtDdWrapper');

    $elements[10] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosPessoaisButtonDialogDojo3');
    $elements[10]->setOrder(10);
    $elements[10]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_EMAILS_PESSOAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosPessoaisEmailsPessoais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosPessoaisEmailsPessoais." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_EMAILS_PESSOAIS')}\")"));
    $elements[10]->setRequired(false);
    $elements[10]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[10]->removeDecorator('DtDdWrapper');

    $elements[11] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosPessoaisButtonDialogDojo4');
    $elements[11]->setOrder(11);
    $elements[11]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PESSOAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosPessoaisWebsitesPessoais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosPessoaisWebsitesPessoais." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PESSOAIS')}\")"));
    $elements[11]->setRequired(false);
    $elements[11]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    $elements[11]->removeDecorator('DtDdWrapper');

    $elements[12] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosPessoaisButtonDialogDojo5');
    $elements[12]->setOrder(12);
    $elements[12]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PESSOAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosPessoaisEnderecosPessoais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosPessoaisEnderecosPessoais." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PESSOAIS')}\")"));
    $elements[12]->setRequired(false);
    $elements[12]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    $elements[12]->removeDecorator('DtDdWrapper');

    $elements[13] = $this->createElement('hash', 'BasicoCadastrarDadosUsuarioDadosPessoaisCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
    $elements[13]->setOrder(13);
    $elements[13]->setRequired(false);
    $elements[13]->removeDecorator('Label');

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->addElements($elements);
    // Adicionando sub-formulario ao formulario pai.

    // Adicionando displays groups.
    $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->addDisplayGroup(array($elements[1]->getName(),$elements[2]->getName(),$elements[3]->getName(),$elements[4]->getName(),$elements[5]->getName()), 'dados_usuario_dados_pessoais_dados_nascimento', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_DADOS_NASCIMENTO'), 'order' => 1));
    $dados_usuario_dados_pessoais_dados_nascimento = $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->getDisplayGroup('dados_usuario_dados_pessoais_dados_nascimento');
    $dados_usuario_dados_pessoais_dados_nascimento->removeDecorator('DtDdWrapper');
    $dados_usuario_dados_pessoais_dados_nascimento->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
    // Adicionando displays groups.
    $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->addDisplayGroup(array($elements[6]->getName(),$elements[7]->getName()), 'dados_usuario_dados_pessoais_filiacao', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_FILIACAO'), 'order' => 6));
    $dados_usuario_dados_pessoais_filiacao = $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->getDisplayGroup('dados_usuario_dados_pessoais_filiacao');
    $dados_usuario_dados_pessoais_filiacao->removeDecorator('DtDdWrapper');
    $dados_usuario_dados_pessoais_filiacao->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    // Adicionando displays groups.
    $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->addDisplayGroup(array($elements[8]->getName()), 'dados_usuario_dados_pessoais_documentos_pessoais', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_DOCUMENTOS_PESSOAIS'), 'order' => 8));
    $dados_usuario_dados_pessoais_documentos_pessoais = $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->getDisplayGroup('dados_usuario_dados_pessoais_documentos_pessoais');
    $dados_usuario_dados_pessoais_documentos_pessoais->removeDecorator('DtDdWrapper');
    $dados_usuario_dados_pessoais_documentos_pessoais->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
    // Adicionando displays groups.
    $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->addDisplayGroup(array($elements[9]->getName(),$elements[10]->getName(),$elements[11]->getName(),$elements[12]->getName()), 'dados_usuario_dados_pessoais_informacoes_contato', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_INFORMACOES_CONTATO'), 'order' => 9));
    $dados_usuario_dados_pessoais_informacoes_contato = $basicoCadastrarDadosUsuarioDadosPessoaisSubForm->getDisplayGroup('dados_usuario_dados_pessoais_informacoes_contato');
    $dados_usuario_dados_pessoais_informacoes_contato->removeDecorator('DtDdWrapper');
    $dados_usuario_dados_pessoais_informacoes_contato->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));

    $this->addSubForm($basicoCadastrarDadosUsuarioDadosPessoaisSubForm, 'CadastrarDadosUsuarioDadosPessoais');
?>