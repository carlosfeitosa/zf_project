<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 04/04/2011 17:37:41
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
* @version    1: 04/04/2011 13:15:07
*/
class Basico_Form_CadastrarUsuarioNaoValidado extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarUsuarioNaoValidado
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarUsuarioNaoValidado');
        $this->setMethod('post');
        $this->setAction('/rochedo_project/public/basico/login/verificaNovoLogin');
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarUsuarioNaoValidado', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
        $this->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('ValidationTextBox', 'BasicoCadastrarUsuarioNaoValidadoNome');
        $elements[1]->setOrder(1);
        $elements[1]->setAttribs(array('size' => 100, 'style' => 'width: 300px;'));
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addValidator('NotEmpty', array('messages' => array(Zend_Validate_NotEmpty::IS_EMPTY => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_NOT_EMPTY_ERROR_MESSAGE'), )));
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_NOME') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioNaoValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_AJUDA')) . '\', 1)</script></button>');
        $elements[1]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_HINT'));
        if ($options!=null)
            $elements[1]->setValue($options->BasicoCadastrarUsuarioNaoValidadoNome);

        $elements[2] = $this->createElement('ValidationTextBox', 'BasicoCadastrarUsuarioNaoValidadoEmail');
        $elements[2]->setOrder(2);
        $elements[2]->setAttribs(array('size' => 100, 'style' => 'width: 300px;'));
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addValidator('NotEmpty', array('messages' => array(Zend_Validate_NotEmpty::IS_EMPTY => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_NOT_EMPTY_ERROR_MESSAGE'), )));
        $elements[2]->addValidator('EmailAddress', true, array('mx' => true, 'deep' => true,));
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_EMAIL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarUsuarioNaoValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_EMAIL_AJUDA')) . '\', 1)</script></button>');
        $elements[2]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_EMAIL_HINT'));
        if ($options!=null)
            $elements[2]->setValue($options->BasicoCadastrarUsuarioNaoValidadoEmail);

        if (!Basico_OPController_UtilOPController::ambienteDesenvolvimento()){
            $elements[3] = $this->createElement('captcha', 'BasicoCadastrarUsuarioNaoValidadoVerificador6digitos', 
                      array('required'=>true,
                            'captcha'=>array('captcha'=>'Image',
                                             'imgDir' => PUBLIC_PATH . CAPTCHA_IMAGE_DIR,
                                             'imgUrl' => Basico_OPController_UtilOPController::retornaBaseUrl() . CAPTCHA_IMAGE_URL,
                                             'wordLen'=> 6,
                                             'width'  => 250,
                                             'height' => 80,
                                             'font'   => PUBLIC_PATH . CAPTCHA_FONT_PATH,
                                             'fontSize' => 50,
                                             'expiration' => 300,
                                             'gcFreq' => 100),));
            $elements[3]->setOrder(3);
            $elements[3]->setAttribs(array('class' => 'dijitTextBox', 'style' => 'margin-top: 10px; margin-bottom: 10px;'));
            $elements[3]->setRequired(true);
            $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'style' => 'width: 300px;',));
            $elements[3]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_CAPTCHA_6') . '');
        }

        $elements[4] = $this->createElement('submitButton', 'BasicoCadastrarUsuarioNaoValidadoEnviar');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(false);
        $elements[4]->removeDecorator('DtDdWrapper');
        $elements[4]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[5] = $this->createElement('hash', 'BasicoCadastrarUsuarioNaoValidadoCsrf', array('ignore' => true, 'salt' => 'unique',));
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->removeDecorator('Label');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>