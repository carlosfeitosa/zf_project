<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 31/08/2011 23:08:57
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
* @version    1: 31/08/2011 22:53:34
*/
class Basico_Form_CadastrarWebsite extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarWebsite
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('BasicoCadastrarWebsite');
        $this->setMethod('post');
        $this->setAction(Basico_OPController_TokenOPController::getInstance()->gerarTokenPorUrl('/rochedo_project/public/basico/website/salvarwebsite'));
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarWebsite', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('FilteringSelect', 'BasicoCadastrarWebsiteWebSiteTipo');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_WEBSITE_TIPO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarWebsite\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_WEBSITE_TIPO_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarWebsiteWebSiteTipo'])))
            $elements[1]->setValue($options['BasicoCadastrarWebsiteWebSiteTipo']);

        $elements[2] = $this->createElement('ValidationTextBox', 'BasicoCadastrarWebsiteWebSitelEndereco');
        $elements[2]->setOrder(2);
        $elements[2]->setAttribs(array('size' => 100, 'style' => 'width: 300px;'));
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_WEBSITE_ENDERECO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarWebsite\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_WEBSITE_ENDERECO_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarWebsiteWebSitelEndereco'])))
            $elements[2]->setValue($options['BasicoCadastrarWebsiteWebSitelEndereco']);

        $elements[3] = $this->createElement('SimpleTextarea', 'BasicoCadastrarWebsiteWebSiteDescricao', array('style' => 'width: 300px;'));
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(false);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_WEBSITE_DESCRICAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarWebsite\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_WEBSITE_DESCRICAO_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarWebsiteWebSiteDescricao'])))
            $elements[3]->setValue($options['BasicoCadastrarWebsiteWebSiteDescricao']);

        $elements[4] = $this->createElement('html', 'BasicoCadastrarWebsiteLinhaHorizontal', array('value' => '<hr>'));
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(false);
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));
        $elements[4]->removeDecorator('DtDdWrapper');

        $elements[5] = $this->createElement('submitButton', 'BasicoCadastrarWebsiteEnviar');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[5]->removeDecorator('DtDdWrapper');
        $elements[5]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[6] = $this->createElement('button', 'BasicoCadastrarWebsiteResetar', array('type' => 'reset', 'onClick' => 'hideDialog("Basico_Form_CadastrarWebsite", "/rochedo_project/public");'));
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(false);
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-margin-right10px',));
        $elements[6]->removeDecorator('DtDdWrapper');
        $elements[6]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_RESET') . '');

        $elements[7] = $this->createElement('hash', 'BasicoCadastrarWebsiteCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
        $elements[7]->setOrder(7);
        $elements[7]->setRequired(false);
        $elements[7]->removeDecorator('Label');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>