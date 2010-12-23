<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 23/12/2010 00:24:21
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
* @version    1: 23/12/2010 00:18:53
*/
class Basico_Form_CadastrarEndereco extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarEndereco
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarEndereco');
        $this->setMethod('post');

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('FilteringSelect', 'BasicoCadastrarEnderecoEnderecoTipo');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_ENDERECO_TIPO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEndereco\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[1]->setValue($options->enderecoTipo);

        $elements[2] = $this->createElement('FilteringSelect', 'BasicoCadastrarEnderecoEnderecoPais');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_ENDERECO_PAIS_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEndereco\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[2]->setValue($options->enderecoPais);

        $elements[3] = $this->createElement('FilteringSelect', 'BasicoCadastrarEnderecoEnderecoUf');
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(true);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[3]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_ENDERECO_UF_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEndereco\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ENDERECO_UF_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[3]->setValue($options->enderecoUf);

        $elements[4] = $this->createElement('ValidationTextBox', 'BasicoCadastrarEnderecoEnderecoUfTextBox');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(true);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[4]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_ENDERECO_UF_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEndereco\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ENDERECO_UF_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[4]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_ENDERECO_UF_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[4]->setValue($options->enderecoUfTextBox);

        $elements[5] = $this->createElement('FilteringSelect', 'BasicoCadastrarEnderecoEnderecoMunicipio');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(true);
        $elements[5]->addFilters(array('StringTrim', 'StripTags'));
        $elements[5]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[5]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_ENDERECO_MUNICIPIO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEndereco\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[5]->setValue($options->enderecoMunicipio);

        $elements[6] = $this->createElement('ValidationTextBox', 'BasicoCadastrarEnderecoEnderecoMunicipioTextBox');
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(true);
        $elements[6]->addFilters(array('StringTrim', 'StripTags'));
        $elements[6]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[6]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_ENDERECO_MUNICIPIO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEndereco\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ENDERECO_MUNICIPIO_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[6]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_ENDERECO_MUNICIPIO_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[6]->setValue($options->enderecoMunicipioTextBox);

        $elements[7] = $this->createElement('ValidationTextBox', 'BasicoCadastrarEnderecoEnderecoCep');
        $elements[7]->setOrder(7);
        $elements[7]->setRequired(true);
        $elements[7]->addFilters(array('StringTrim', 'StripTags'));
        $elements[7]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[7]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_ENDERECO_CEP_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEndereco\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ENDERECO_CEP_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[7]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_ENDERECO_CEP_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[7]->setValue($options->enderecoCep);

        $elements[8] = $this->createElement('ValidationTextBox', 'BasicoCadastrarEnderecoEnderecoLogradouro');
        $elements[8]->setOrder(8);
        $elements[8]->setRequired(true);
        $elements[8]->addFilters(array('StringTrim', 'StripTags'));
        $elements[8]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[8]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[8]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_ENDERECO_LOGRADOURO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEndereco\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ENDERECO_LOGRADOURO_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[8]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_ENDERECO_LOGRADOURO_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[8]->setValue($options->enderecoLogradouro);

        $elements[9] = $this->createElement('ValidationTextBox', 'BasicoCadastrarEnderecoEnderecoNumero');
        $elements[9]->setOrder(9);
        $elements[9]->setRequired(true);
        $elements[9]->addFilters(array('StringTrim', 'StripTags'));
        $elements[9]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[9]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[9]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_ENDERECO_NUMERO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEndereco\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ENDERECO_NUMERO_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[9]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_ENDERECO_NUMERO_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[9]->setValue($options->enderecoNumero);

        $elements[10] = $this->createElement('ValidationTextBox', 'BasicoCadastrarEnderecoEnderecoComplemento');
        $elements[10]->setOrder(10);
        $elements[10]->setRequired(true);
        $elements[10]->addFilters(array('StringTrim', 'StripTags'));
        $elements[10]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[10]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[10]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_ENDERECO_COMPLEMENTO_LABEL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEndereco\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX_AJUDA')) . '\', 1)</script></button>');
        $elements[10]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX_HINT'));
        if ($options!=null)
            $elements[10]->setValue($options->enderecoComplemento);

        $elements[11] = $this->createElement('html', 'BasicoCadastrarEnderecoLinhaHorizontal', array('value' => '<hr>'));
        $elements[11]->setOrder(11);
        $elements[11]->setRequired(false);
        $elements[11]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[12] = $this->createElement('submitButton', 'BasicoCadastrarEnderecoEnviar');
        $elements[12]->setOrder(12);
        $elements[12]->setRequired(false);
        $elements[12]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[12]->removeDecorator('DtDdWrapper');
        $elements[12]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[13] = $this->createElement('button', 'BasicoCadastrarEnderecoResetar', array('type' => 'reset', 'onClick' => 'hideDialog("Basico_Form_CadastrarEndereco");'));
        $elements[13]->setOrder(13);
        $elements[13]->setRequired(false);
        $elements[13]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-margin-right10px',));
        $elements[13]->removeDecorator('DtDdWrapper');
        $elements[13]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_RESET') . '');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>