<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 11/07/2011 14:01:48
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
* @version    1: 11/07/2011 13:48:43
*/
class Basico_Form_CadastrarEmail extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarEmail
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('BasicoCadastrarEmail');
        $this->setMethod('post');

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('FilteringSelect', 'BasicoCadastrarEmailEmailTipo');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_EMAIL_TIPO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEmail\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_EMAIL_TIPO_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarEmailEmailTipo'])))
            $elements[1]->setValue($options['BasicoCadastrarEmailEmailTipo']);

        $elements[2] = $this->createElement('ValidationTextBox', 'BasicoCadastrarEmailEmail');
        $elements[2]->setOrder(2);
        $elements[2]->setAttribs(array('size' => 100, 'style' => 'width: 300px;'));
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addValidator('NotEmpty', array('messages' => array(Zend_Validate_NotEmpty::IS_EMPTY => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_NOT_EMPTY_ERROR_MESSAGE'), )));
        $elements[2]->addValidator('EmailAddress', true, array('mx' => true, 'deep' => true, 'messages' => array(Zend_Validate_EmailAddress::INVALID_FORMAT     => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_FORMAT'), 
																												 Zend_Validate_EmailAddress::INVALID_HOSTNAME    => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_HOSTNAME'),
																												 Zend_Validate_EmailAddress::INVALID_MX_RECORD   => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_MX_RECORD'),
																												 Zend_Validate_EmailAddress::INVALID_SEGMENT     => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_SEGMENT'),
																												 Zend_Validate_EmailAddress::DOT_ATOM            => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_EMAILADDRESS_DOT_ATOM'),
																												 Zend_Validate_EmailAddress::QUOTED_STRING       => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_EMAILADDRESS_QUOTED_STRING'),
																												 Zend_Validate_EmailAddress::INVALID_LOCAL_PART  => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_LOCAL_PART'),
																												 Zend_Validate_Hostname::INVALID                 => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID'),
																												 Zend_Validate_Hostname::IP_ADDRESS_NOT_ALLOWED  => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_HOSTNAME_IP_ADDRESS_NOT_ALLOWED'),
																												 Zend_Validate_Hostname::UNKNOWN_TLD             => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_HOSTNAME_UNKNOWN_TLD'),
																												 Zend_Validate_Hostname::INVALID_DASH            => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID_DASH'),
																												 Zend_Validate_Hostname::INVALID_HOSTNAME_SCHEMA => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID_HOSTNAME_SCHEMA'),
																												 Zend_Validate_Hostname::UNDECIPHERABLE_TLD      => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_HOSTNAME_UNDECIPHERABLE_TLD'),
																												 Zend_Validate_Hostname::INVALID_HOSTNAME        => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID_HOSTNAME'),
																												 Zend_Validate_Hostname::INVALID_LOCAL_NAME      => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID_LOCAL_NAME'),
																												 Zend_Validate_Hostname::LOCAL_NAME_NOT_ALLOWED  => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_HOSTNAME_LOCAL_NAME_NOT_ALLOWED'),
																												 Zend_Validate_Hostname::CANNOT_DECODE_PUNYCODE  => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_HOSTNAME_CANNOT_DECODE_PUNYCODE'),),));
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_EMAIL') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEmail\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_EMAIL_AJUDA')) . '\', 1)</script></button>');
        $elements[2]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_EMAIL_HINT'));
        if (($options!=null) and (isset($options['BasicoCadastrarEmailEmail'])))
            $elements[2]->setValue($options['BasicoCadastrarEmailEmail']);

        $elements[3] = $this->createElement('SimpleTextarea', 'BasicoCadastrarEmailEmailDescricao', array('style' => 'width: 300px;'));
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(false);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_EMAIL_DESCRICAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarEmail\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_EMAIL_DESCRICAO_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoCadastrarEmailEmailDescricao'])))
            $elements[3]->setValue($options['BasicoCadastrarEmailEmailDescricao']);

        $elements[4] = $this->createElement('html', 'BasicoCadastrarEmailLinhaHorizontal', array('value' => '<hr>'));
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(false);
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[5] = $this->createElement('submitButton', 'BasicoCadastrarEmailEnviar');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[5]->removeDecorator('DtDdWrapper');
        $elements[5]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[6] = $this->createElement('button', 'BasicoCadastrarEmailResetar', array('type' => 'reset', 'onClick' => 'hideDialog("Basico_Form_CadastrarEmail", "/rochedo_project/public");'));
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(false);
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-margin-right10px',));
        $elements[6]->removeDecorator('DtDdWrapper');
        $elements[6]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_RESET') . '');

        $elements[7] = $this->createElement('hash', 'BasicoCadastrarEmailCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
        $elements[7]->setOrder(7);
        $elements[7]->setRequired(false);
        $elements[7]->removeDecorator('Label');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>