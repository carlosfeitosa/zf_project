<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 10/11/2010 16:05:09
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
* @version    1: 10/11/2010 16:04:32
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

        $elements[0] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalVinculoProfissional');
        $elements[0]->setRequired(true);
        $elements[0]->addDecorator('Label', array('escape' => false));
        $elements[0]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-margin-right10px',));
        $elements[0]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_VINCULO_PROFISSIONAL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_VINCULO_PROFISSIONAL_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[0]->setValue($options->vinculoProfissional);

        $elements[1] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalProfissao');
        $elements[1]->setRequired(true);
        $elements[1]->addDecorator('Label', array('escape' => false));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_PROFISSAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PROFISSAO_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[1]->setValue($options->profissao);

        $elements[2] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalPjVinculo');
        $elements[2]->setRequired(false);
        $elements[2]->addDecorator('Label', array('escape' => false));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both-margin-right10px',));
        $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_PJ_VINCULO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PJ_VINCULO_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[2]->setValue($options->pjVinculo);

        $elements[3] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalRegimeTrabalho');
        $elements[3]->setRequired(true);
        $elements[3]->addDecorator('Label', array('escape' => false));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[3]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_REGIME_TRABALHO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_REGIME_TRABALHO_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[3]->setValue($options->regimeTrabalho);

        $elements[4] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalCargo');
        $elements[4]->setRequired(true);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addDecorator('Label', array('escape' => false));
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both-margin-right10px',));
        $elements[4]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CARGO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CARGO_AJUDA')) . '\', 1)</script></button>');
        $elements[4]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CARGO_HINT'));
        if ($options!=null)
            $elements[4]->setValue($options->cargo);

        $elements[5] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalFuncao');
        $elements[5]->setRequired(true);
        $elements[5]->addFilters(array('StringTrim', 'StripTags'));
        $elements[5]->addDecorator('Label', array('escape' => false));
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[5]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_FUNCAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_FUNCAO_AJUDA')) . '\', 1)</script></button>');
        $elements[5]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_FUNCAO_HINT'));
        if ($options!=null)
            $elements[5]->setValue($options->funcao);

        $elements[6] = $this->createElement('SimpleTextarea', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalAtividadesDesenvolvidas', array('style' => 'width: 472px;'));
        $elements[6]->setRequired(false);
        $elements[6]->addFilters(array('StringTrim', 'StripTags'));
        $elements[6]->addDecorator('Label', array('escape' => false));
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[6]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_ATIVIDADES_DESENVOLVIDAS') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ATIVIDADES_DESENVOLVIDAS_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[6]->setValue($options->atividadesDesenvolvidas);

        $elements[7] = $this->createElement('DateTextBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDataAdmissao', array('style' => 'width: 100px;'));
        $elements[7]->setRequired(false);
        $elements[7]->addDecorator('Label', array('escape' => false));
        $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both-margin-right10px',));
        $elements[7]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_DATA_ADMISSAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DATA_ADMISSAO_AJUDA')) . '\', 1)</script></button>');
        $elements[7]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_DATA_ADMISSAO_HINT'));
        if ($options!=null)
            $elements[7]->setValue($options->dataAdmissao);

        $elements[8] = $this->createElement('DateTextBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDataDesvinculacao', array('style' => 'width: 100px;'));
        $elements[8]->setRequired(false);
        $elements[8]->addDecorator('Label', array('escape' => false));
        $elements[8]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-margin-right10px',));
        $elements[8]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_DATA_DESVINCULACAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DATA_DESVINCULACAO_AJUDA')) . '\', 1)</script></button>');
        $elements[8]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_DATA_DESVINCULACAO_HINT'));
        if ($options!=null)
            $elements[8]->setValue($options->dataDesvinculacao);

        $elements[9] = $this->createElement('NumberTextBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalCargaHorariaSemanal', array('style' => 'width: 40px;', 'places' => 0));
        $elements[9]->setRequired(false);
        $elements[9]->addValidator('Int');
        $elements[9]->addDecorator('Label', array('escape' => false));
        $elements[9]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[9]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_CARGA_HORARIA_SEMANAL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CARGA_HORARIA_SEMANAL_AJUDA')) . '\', 1)</script></button>');
        $elements[9]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CARGA_HORARIA_SEMANAL_HINT'));
        if ($options!=null)
            $elements[9]->setValue($options->cargaHorariaSemanal);

        $elements[10] = $this->createElement('CurrencyTextBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalSalarioBruto', array('style' => 'width: 90px;'));
        $elements[10]->setRequired(false);
        $elements[10]->addDecorator('Label', array('escape' => false));
        $elements[10]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both-margin-right10px',));
        $elements[10]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_SALARIO_BRUTO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SALARIO_BRUTO_AJUDA')) . '\', 1)</script></button>');
        $elements[10]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_SALARIO_BRUTO_HINT'));
        if ($options!=null)
            $elements[10]->setValue($options->salarioBruto);

        $elements[11] = $this->createElement('CheckBox', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDedicacaoExclusiva');
        $elements[11]->setRequired(false);
        $elements[11]->addDecorator('Label', array('escape' => false));
        $elements[11]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[11]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_DEDICACAO_EXCLUSIVA') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DEDICACAO_EXCLUSIVA_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[11]->setValue($options->dedicacaoExclusiva);

        $elements[12] = $this->createElement('SimpleTextarea', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalOutrasInformacoes', array('style' => 'width: 472px;'));
        $elements[12]->setRequired(false);
        $elements[12]->addFilters(array('StringTrim', 'StripTags'));
        $elements[12]->addDecorator('Label', array('escape' => false));
        $elements[12]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[12]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_OUTRAS_INFORMACOES') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_OUTRAS_INFORMACOES_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[12]->setValue($options->outrasInformacoes);

        $elements[13] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalButtonDialogDojo1');
        $elements[13]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PROFISSIONAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisTelefonesComerciais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosProfissionaisTelefonesComerciais." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PROFISSIONAIS')}\")"));
        $elements[13]->setRequired(false);
        $elements[13]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[13]->removeDecorator('DtDdWrapper');

        $elements[14] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalButtonDialogDojo2');
        $elements[14]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_EMAILS_PROFISSIONAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisEmailsComerciais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosProfissionaisEmailsComerciais." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_EMAILS_PROFISSIONAIS')}\")"));
        $elements[14]->setRequired(false);
        $elements[14]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[14]->removeDecorator('DtDdWrapper');

        $elements[15] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalButtonDialogDojo3');
        $elements[15]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PROFISSIONAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisWebsitesComerciais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosProfissionaisWebsitesComerciais." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PROFISSIONAIS')}\")"));
        $elements[15]->setRequired(false);
        $elements[15]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[15]->removeDecorator('DtDdWrapper');

        $elements[16] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalButtonDialogDojo4');
        $elements[16]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PROFISSIONAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisEnderecosComerciais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosProfissionaisEnderecosComerciais." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PROFISSIONAIS')}\")"));
        $elements[16]->setRequired(false);
        $elements[16]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[16]->removeDecorator('DtDdWrapper');

        $elements[17] = $this->createElement('html', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalLinhaHorizontal', array('value' => '<hr>'));
        $elements[17]->setRequired(false);
        $elements[17]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[18] = $this->createElement('submitButton', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalEnviar');
        $elements[18]->setRequired(false);
        $elements[18]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[18]->removeDecorator('DtDdWrapper');
        $elements[18]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[19] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalResetar', array('type' => 'reset', 'onClick' => 'hideDialog("Basico_Form_CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional");'));
        $elements[19]->setRequired(false);
        $elements[19]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-margin-right10px',));
        $elements[19]->removeDecorator('DtDdWrapper');
        $elements[19]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_RESET') . '');

        $elements[20] = $this->createElement('hidden', 'BasicoCadastrarDadosUsuarioDadosProfissionaisVinculoProfissionalDummyHidden');
        $elements[20]->setRequired(false);
        $elements[20]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'clear-both',));

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>