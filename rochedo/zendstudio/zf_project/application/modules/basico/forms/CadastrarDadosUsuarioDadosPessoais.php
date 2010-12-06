<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 06/12/2010 17:02:19
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
* @version    1: 06/12/2010 17:01:43
*/
class Basico_Form_CadastrarDadosUsuarioDadosPessoais extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosPessoais
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioDadosPessoais');
        $this->setMethod('post');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosPessoaisComboboxPaisNascimento');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addDecorator('Label', array('escape' => false));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_PAIS_NASCIMENTO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[1]->setValue($options->comboBoxPaisNascimento);

        $elements[2] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosPessoaisComboboxUfNascimento');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addDecorator('Label', array('escape' => false));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_UF_NASCIMENTO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_UF_NASCIMENTO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[2]->setValue($options->comboboxUfNascimento);

        $elements[3] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosPessoaisTextboxUfNascimento');
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(true);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[3]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_UF_NASCIMENTO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_UF_NASCIMENTO_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[3]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_UF_NASCIMENTO_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[3]->setValue($options->textboxUfNascimento);

        $elements[4] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosPessoaisComboboxMunicipioNascimento');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(true);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addDecorator('Label', array('escape' => false));
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[4]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_MUNICIPIO_NASCIMENTO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[4]->setValue($options->comboboxMunicipioNascimento);

        $elements[5] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosPessoaisTextboxMunicipioNascimento');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(true);
        $elements[5]->addFilters(array('StringTrim', 'StripTags'));
        $elements[5]->addDecorator('Label', array('escape' => false));
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[5]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_MUNICIPIO_NASCIMENTO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[5]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[5]->setValue($options->textboxMunicipioNascimento);

        $elements[6] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosPessoaisTextboxNomePai');
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(true);
        $elements[6]->addFilters(array('StringTrim', 'StripTags'));
        $elements[6]->addDecorator('Label', array('escape' => false));
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[6]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_NOME_PAI_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_PAI_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[6]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_PAI_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[6]->setValue($options->textboxNomePai);

        $elements[7] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosPessoaisTextboxNomeMae');
        $elements[7]->setOrder(7);
        $elements[7]->setRequired(true);
        $elements[7]->addFilters(array('StringTrim', 'StripTags'));
        $elements[7]->addDecorator('Label', array('escape' => false));
        $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[7]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_NOME_MAE_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosPessoais\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_MAE_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[7]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_MAE_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[7]->setValue($options->textboxNomeMae);

        $elements[8] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosPessoaisButtonDialogDojo1');
        $elements[8]->setOrder(8);
        $elements[8]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_DOCUMENTOS_PESSOAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosPessoaisDocumentosPessoais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosPessoaisDocumentosPessoais." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_DOCUMENTOS_PESSOAIS')}\")"));
        $elements[8]->setRequired(false);
        $elements[8]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[8]->removeDecorator('DtDdWrapper');

        $elements[9] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosPessoaisButtonDialogDojo2');
        $elements[9]->setOrder(9);
        $elements[9]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PESSOAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosPessoaisTelefonesPessoais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosPessoaisTelefonesPessoais." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PESSOAIS')}\")"));
        $elements[9]->setRequired(false);
        $elements[9]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[9]->removeDecorator('DtDdWrapper');

        $elements[10] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosPessoaisButtonDialogDojo3');
        $elements[10]->setOrder(10);
        $elements[10]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_EMAILS_PESSOAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosPessoaisEmailsPessoais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosPessoaisEmailsPessoais." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_EMAILS_PESSOAIS')}\")"));
        $elements[10]->setRequired(false);
        $elements[10]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[10]->removeDecorator('DtDdWrapper');

        $elements[11] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosPessoaisButtonDialogDojo4');
        $elements[11]->setOrder(11);
        $elements[11]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PESSOAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosPessoaisWebsitesPessoais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosPessoaisWebsitesPessoais." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PESSOAIS')}\")"));
        $elements[11]->setRequired(false);
        $elements[11]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[11]->removeDecorator('DtDdWrapper');

        $elements[12] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosPessoaisButtonDialogDojo5');
        $elements[12]->setOrder(12);
        $elements[12]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PESSOAIS')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosPessoaisEnderecosPessoais\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosPessoaisEnderecosPessoais." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PESSOAIS')}\")"));
        $elements[12]->setRequired(false);
        $elements[12]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[12]->removeDecorator('DtDdWrapper');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);

        // Adicionando displays groups.
        $this->addDisplayGroup(array($elements[8]->getName(),$elements[9]->getName(),$elements[10]->getName(),$elements[11]->getName(),$elements[12]->getName()), 'dados_usuario_dados_pessoais_informacoes_contato', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_INFORMACOES_CONTATO'), 'order' => 8));
        $dados_usuario_dados_pessoais_informacoes_contato = $this->getDisplayGroup('dados_usuario_dados_pessoais_informacoes_contato');
        $dados_usuario_dados_pessoais_informacoes_contato->removeDecorator('DtDdWrapper');
        $dados_usuario_dados_pessoais_informacoes_contato->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));

        // Adicionando sub-formulario ao formulario pai.
    }
}
?>