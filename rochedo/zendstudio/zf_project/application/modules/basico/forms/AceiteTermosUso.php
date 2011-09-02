<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 31/08/2011 23:07:53
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
class Basico_Form_AceiteTermosUso extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_AceiteTermosUso
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('BasicoAceiteTermosUso');
        $this->setMethod('post');
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('AceiteTermosUso', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
        $this->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('SimpleTextarea', 'BasicoAceiteTermosUsoTermosUso', array('style' => 'width: 472px;', 'readOnly' => true));
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(false);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[1]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_TERMOS_USO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'AceiteTermosUso\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TERMOS_USO_AJUDA')) . '\', 1)</script></button>');
        if (($options!=null) and (isset($options['BasicoAceiteTermosUsoTermosUso'])))
            $elements[1]->setValue($options['BasicoAceiteTermosUsoTermosUso']);

        $elements[2] = $this->createElement('html', 'BasicoAceiteTermosUsoLinks', array('value' => ""));
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(false);
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[2]->removeDecorator('DtDdWrapper');

        $elements[3] = $this->createElement('ValidationTextBox', 'BasicoAceiteTermosUsoAceiteTermosUso');
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(true);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[3]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_ACEITE_TERMOS_USO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'AceiteTermosUso\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ACEITE_TERMOS_USO_AJUDA')) . '\', 1)</script></button>');

        $elements[4] = $this->createElement('submitButton', 'BasicoAceiteTermosUsoEnviar');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(false);
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[4]->removeDecorator('DtDdWrapper');
        $elements[4]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[5] = $this->createElement('button', 'BasicoAceiteTermosUsoHtmlButtonCancelar');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right',));
        $elements[5]->removeDecorator('DtDdWrapper');
        $elements[5]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_CANCELAR_LABEL') . '');

        $elements[6] = $this->createElement('hash', 'BasicoAceiteTermosUsoCsrf', array('ignore' => true, 'salt' => 'unique',  'errorMessages' => array('Identical' => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_INVALID_CSRF'),),));
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(false);
        $elements[6]->removeDecorator('Label');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);

        // Adicionando displays groups.
        $this->addDisplayGroup(array($elements[2]->getName()), 'download', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_DOWNLOAD'), 'order' => 2));
        $download = $this->getDisplayGroup('download');
        $download->removeDecorator('DtDdWrapper');
        $download->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        // Adicionando displays groups.
        $this->addDisplayGroup(array($elements[3]->getName()), 'aceite', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_ACEITE'), 'order' => 3));
        $aceite = $this->getDisplayGroup('aceite');
        $aceite->removeDecorator('DtDdWrapper');
        $aceite->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));

    }
}
?>