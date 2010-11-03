<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 03/11/2010 16:58:01
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
* @version    1: 03/11/2010 16:40:38
*/
class Basico_Form_CadastrarTelefone extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarTelefone
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarTelefone');
        $this->setMethod('post');

        // Criando array de elementos.
        $elements = array();

        $elements[0] = $this->createElement('NumberTextBox', 'BasicoCadastrarTelefoneTelefoneCodigoPais', array('style' => 'width: 40px;', 'places' => 0, 'pattern' => '##0.##'));
        $elements[0]->setRequired(true);
        $elements[0]->addFilters(array('StringTrim', 'StripTags'));
        $elements[0]->addDecorator('Label', array('escape' => false));
        $elements[0]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[0]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_PAIS') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarTelefone\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_PAIS_AJUDA')) . '\', 1)</script></button>');
        $elements[0]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_PAIS_HINT'));
        if ($options!=null)
            $elements[0]->setValue($options->telefoneCodigoPais);

        $elements[1] = $this->createElement('NumberTextBox', 'BasicoCadastrarTelefoneTelefoneCodigoArea', array('style' => 'width: 40px;', 'places' => 0, 'pattern' => '##0.##'));
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addDecorator('Label', array('escape' => false));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[1]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_AREA') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarTelefone\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_AREA_AJUDA')) . '\', 1)</script></button>');
        $elements[1]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_AREA_HINT'));
        if ($options!=null)
            $elements[1]->setValue($options->telefoneCodigoArea);

        $elements[2] = $this->createElement('NumberTextBox', 'BasicoCadastrarTelefoneTelefone', array('style' => 'width: 70px;', 'places' => 0, 'pattern' => '##0.##'));
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addDecorator('Label', array('escape' => false));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both-margin-right10px',));
        $elements[2]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_TELEFONE') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarTelefone\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TELEFONE_AJUDA')) . '\', 1)</script></button>');
        $elements[2]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_TELEFONE_HINT'));
        if ($options!=null)
            $elements[2]->setValue($options->telefone);

        $elements[3] = $this->createElement('NumberTextBox', 'BasicoCadastrarTelefoneTelefoneRamal', array('style' => 'width: 40px;', 'places' => 0, 'pattern' => '##0.##'));
        $elements[3]->setRequired(false);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[3]->setLabel(''.$this->getView()->tradutor('FORM_FIELD_TELEFONE_RAMAL') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarTelefone\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TELEFONE_RAMAL_AJUDA')) . '\', 1)</script></button>');
        $elements[3]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_TELEFONE_RAMAL_HINT'));
        if ($options!=null)
            $elements[3]->setValue($options->telefoneRamal);

        $elements[4] = $this->createElement('SimpleTextarea', 'BasicoCadastrarTelefoneTelefoneDescricao', array('style' => 'width: 300px;'));
        $elements[4]->setRequired(false);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addDecorator('Label', array('escape' => false));
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[4]->setLabel(''.$this->getView()->tradutor('FORM_FIELD_TELEFONE_DESCRICAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarTelefone\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TELEFONE_DESCRICAO_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[4]->setValue($options->telefoneDescricao);

        $elements[5] = $this->createElement('submitButton', 'BasicoCadastrarTelefoneEnviar');
        $elements[5]->setRequired(false);
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both-margin-right10px',));
        $elements[5]->setLabel(''.$this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[6] = $this->createElement('button', 'BasicoCadastrarTelefoneResetar', array('type' => 'reset', 'onClick' => 'hideDialog("Basico_Form_CadastrarTelefone");'));
        $elements[6]->setRequired(false);
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[6]->setLabel(''.$this->getView()->tradutor('FORM_BUTTON_RESET') . '');

        $elements[7] = $this->createElement('hidden', 'BasicoCadastrarTelefoneDummyHidden');
        $elements[7]->setRequired(false);
        $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'clear-both',));

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>