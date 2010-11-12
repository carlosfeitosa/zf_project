<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 12/11/2010 12:11:41
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
* @version    1: 11/11/2010 14:27:45
*/
class Basico_Form_CadastrarDocumento extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDocumento
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDocumento');
        $this->setMethod('post');
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarDocumento'))"));

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDocumentoRg');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(false);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addDecorator('Label', array('escape' => false));
        $elements[1]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_RG') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDocumento\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_RG_AJUDA')) . '\', 1)</script></button>');

        $elements[2] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDocumentoCpf');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(false);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addDecorator('Label', array('escape' => false));
        $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_CPF') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDocumento\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CPF_AJUDA')) . '\', 1)</script></button>');

        $elements[3] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDocumentoCnh');
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(false);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false));
        $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_CNH') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDocumento\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CNH_AJUDA')) . '\', 1)</script></button>');

        $elements[4] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDocumentoPassaporte');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(false);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addDecorator('Label', array('escape' => false));
        $elements[4]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_PASSAPORTE') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDocumento\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PASSAPORTE_AJUDA')) . '\', 1)</script></button>');

        $elements[5] = $this->createElement('submitButton', 'BasicoCadastrarDocumentoEnviar');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->removeDecorator('DtDdWrapper');
        $elements[5]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[6] = $this->createElement('button', 'BasicoCadastrarDocumentoResetar', array('type' => 'reset', 'onClick' => 'hideDialog("Basico_Form_CadastrarDocumento");'));
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(false);
        $elements[6]->removeDecorator('DtDdWrapper');
        $elements[6]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_RESET') . '');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>