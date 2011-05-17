<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 17/05/2011 11:45:04
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
class Basico_Form_CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional');
        $this->setMethod('post');

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalVinculoProfissional');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(true);
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-margin-right10px',));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_VINCULO_PROFISSIONAL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_VINCULO_PROFISSIONAL_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalVinculoProfissional'])))
            $elements[1]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalVinculoProfissional']);

        $elements[2] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalProfissao');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(true);
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_PROFISSAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PROFISSAO_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalProfissao'])))
            $elements[2]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalProfissao']);

        $elements[3] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalPjVinculo');
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(false);
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both-margin-right10px',));
        $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_PJ_VINCULO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PJ_VINCULO_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalPjVinculo'])))
            $elements[3]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalPjVinculo']);

        $elements[4] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalRegimeTrabalho');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(true);
        $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[4]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_REGIME_TRABALHO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_REGIME_TRABALHO_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalRegimeTrabalho'])))
            $elements[4]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalRegimeTrabalho']);

        $elements[5] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalCargo');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(true);
        $elements[5]->addFilters(array('StringTrim', 'StripTags'));
        $elements[5]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both-margin-right10px',));
        $elements[5]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CARGO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CARGO_AJUDA')) . '\', 1)</script></button>');
        $elements[5]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CARGO_HINT'));
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalCargo'])))
            $elements[5]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalCargo']);

        $elements[6] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalFuncao');
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(true);
        $elements[6]->addFilters(array('StringTrim', 'StripTags'));
        $elements[6]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[6]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_FUNCAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_FUNCAO_AJUDA')) . '\', 1)</script></button>');
        $elements[6]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_FUNCAO_HINT'));
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalFuncao'])))
            $elements[6]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalFuncao']);

        $elements[7] = $this->createElement('SimpleTextarea', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalAtividadesDesenvolvidas', array('style' => 'width: 472px;'));
        $elements[7]->setOrder(7);
        $elements[7]->setRequired(false);
        $elements[7]->addFilters(array('StringTrim', 'StripTags'));
        $elements[7]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[7]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_ATIVIDADES_DESENVOLVIDAS') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ATIVIDADES_DESENVOLVIDAS_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalAtividadesDesenvolvidas'])))
            $elements[7]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalAtividadesDesenvolvidas']);

        $elements[8] = $this->createElement('DateTextBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDataAdmissao', array('style' => 'width: 100px;'));
        $elements[8]->setOrder(8);
        $elements[8]->setRequired(false);
        $elements[8]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[8]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both-margin-right10px',));
        $elements[8]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_DATA_ADMISSAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DATA_ADMISSAO_AJUDA')) . '\', 1)</script></button>');
        $elements[8]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_DATA_ADMISSAO_HINT'));
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDataAdmissao'])))
            $elements[8]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDataAdmissao']);

        $elements[9] = $this->createElement('DateTextBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDataDesvinculacao', array('style' => 'width: 100px;'));
        $elements[9]->setOrder(9);
        $elements[9]->setRequired(false);
        $elements[9]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[9]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-margin-right10px',));
        $elements[9]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_DATA_DESVINCULACAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DATA_DESVINCULACAO_AJUDA')) . '\', 1)</script></button>');
        $elements[9]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_DATA_DESVINCULACAO_HINT'));
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDataDesvinculacao'])))
            $elements[9]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDataDesvinculacao']);

        $elements[10] = $this->createElement('NumberTextBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalCargaHorariaSemanal', array('style' => 'width: 40px;', 'places' => 0));
        $elements[10]->setOrder(10);
        $elements[10]->setRequired(false);
        $elements[10]->addValidator('Int');
        $elements[10]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[10]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[10]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_CARGA_HORARIA_SEMANAL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CARGA_HORARIA_SEMANAL_AJUDA')) . '\', 1)</script></button>');
        $elements[10]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CARGA_HORARIA_SEMANAL_HINT'));
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalCargaHorariaSemanal'])))
            $elements[10]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalCargaHorariaSemanal']);

        $elements[11] = $this->createElement('CurrencyTextBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalSalarioBruto', array('style' => 'width: 90px;'));
        $elements[11]->setOrder(11);
        $elements[11]->setAttribs(array('currency' => '$ '));
        $elements[11]->setRequired(false);
        $elements[11]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[11]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both-margin-right10px',));
        $elements[11]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_SALARIO_BRUTO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SALARIO_BRUTO_AJUDA')) . '\', 1)</script></button>');
        $elements[11]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_SALARIO_BRUTO_HINT'));
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalSalarioBruto'])))
            $elements[11]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalSalarioBruto']);

        $elements[12] = $this->createElement('CheckBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDedicacaoExclusiva');
        $elements[12]->setOrder(12);
        $elements[12]->setRequired(false);
        $elements[12]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[12]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[12]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_DEDICACAO_EXCLUSIVA') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DEDICACAO_EXCLUSIVA_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDedicacaoExclusiva'])))
            $elements[12]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDedicacaoExclusiva']);

        $elements[13] = $this->createElement('SimpleTextarea', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalOutrasInformacoes', array('style' => 'width: 472px;'));
        $elements[13]->setOrder(13);
        $elements[13]->setRequired(false);
        $elements[13]->addFilters(array('StringTrim', 'StripTags'));
        $elements[13]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[13]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[13]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_OUTRAS_INFORMACOES') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_OUTRAS_INFORMACOES_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalOutrasInformacoes'])))
            $elements[13]->setValue($options['BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalOutrasInformacoes']);

        $elements[14] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalButtonDialogDojo1');
        $elements[14]->setOrder(14);
        $elements[14]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PROFISSIONAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisTelefonesProfissionais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosProfissionaisTelefonesProfissionais." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PROFISSIONAIS')}\")"));
        $elements[14]->setRequired(false);
        $elements[14]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[14]->removeDecorator('DtDdWrapper');

        $elements[15] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalButtonDialogDojo2');
        $elements[15]->setOrder(15);
        $elements[15]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_EMAILS_PROFISSIONAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisEmailsProfissionais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosProfissionaisEmailsProfissionais." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_EMAILS_PROFISSIONAIS')}\")"));
        $elements[15]->setRequired(false);
        $elements[15]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[15]->removeDecorator('DtDdWrapper');

        $elements[16] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalButtonDialogDojo3');
        $elements[16]->setOrder(16);
        $elements[16]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PROFISSIONAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisWebsitesProfissionais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosProfissionaisWebsitesProfissionais." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PROFISSIONAIS')}\")"));
        $elements[16]->setRequired(false);
        $elements[16]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[16]->removeDecorator('DtDdWrapper');

        $elements[17] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalButtonDialogDojo4');
        $elements[17]->setOrder(17);
        $elements[17]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PROFISSIONAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisEnderecosProfissionais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosProfissionaisEnderecosProfissionais." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PROFISSIONAIS')}\")"));
        $elements[17]->setRequired(false);
        $elements[17]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[17]->removeDecorator('DtDdWrapper');

        $elements[18] = $this->createElement('html', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalLinhaHorizontal', array('value' => '<hr>'));
        $elements[18]->setOrder(18);
        $elements[18]->setRequired(false);
        $elements[18]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[19] = $this->createElement('submitButton', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalEnviar');
        $elements[19]->setOrder(19);
        $elements[19]->setRequired(false);
        $elements[19]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[19]->removeDecorator('DtDdWrapper');
        $elements[19]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[20] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalResetar', array('type' => 'reset', 'onClick' => 'hideDialog("Basico_Form_CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional", "/rochedo_project/public");'));
        $elements[20]->setOrder(20);
        $elements[20]->setRequired(false);
        $elements[20]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-margin-right10px',));
        $elements[20]->removeDecorator('DtDdWrapper');
        $elements[20]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_RESET') . '');

        $elements[21] = $this->createElement('hash', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
        $elements[21]->setOrder(21);
        $elements[21]->setRequired(false);
        $elements[21]->removeDecorator('Label');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);

        // Adicionando displays groups.
        $this->addDisplayGroup(array($elements[14]->getName(),$elements[15]->getName(),$elements[16]->getName(),$elements[17]->getName()), 'dados_usuario_dados_profissionais_vinculo_profissional_informacoes_contato', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_INFORMACOES_CONTATO'), 'order' => 14));
        $dados_usuario_dados_profissionais_vinculo_profissional_informacoes_contato = $this->getDisplayGroup('dados_usuario_dados_profissionais_vinculo_profissional_informacoes_contato');
        $dados_usuario_dados_profissionais_vinculo_profissional_informacoes_contato->removeDecorator('DtDdWrapper');
        $dados_usuario_dados_profissionais_vinculo_profissional_informacoes_contato->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));

    }
}
?>