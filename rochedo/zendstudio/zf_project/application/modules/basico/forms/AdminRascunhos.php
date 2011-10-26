<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 26/10/2011 16:30:20
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
* @version    1: 26/10/2011 16:17:43
*/
class Basico_Form_AdminRascunhos extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_AdminRascunhos
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('BasicoAdminRascunhos');
        $this->setMethod('post');

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('FilteringSelect', 'BasicoAdminRascunhosFormulario');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(false);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[1]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_FORMULARIO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'AdminRascunhos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ADMIN_RASCUNHOS_FORMULARIO_AJUDA')) . '\', 1)</script></button>');

        $elements[2] = $this->createElement('FilteringSelect', 'BasicoAdminRascunhosSelectTipoData');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(false);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_SELECT_TIPO_DATA') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'AdminRascunhos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ADMIN_RASCUNHOS_SELECT_TIPO_DATA_AJUDA')) . '\', 1)</script></button>');

        $elements[3] = $this->createElement('DateTextBox', 'BasicoAdminRascunhosDataInicioPeriodo');
        $elements[3]->setOrder(3);
        $elements[3]->setAttribs(array('style' => 'width: 70px;'));
        $elements[3]->setRequired(false);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_DATA_INICIO_PERIODO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'AdminRascunhos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DATA_INICIO_PERIODO_AJUDA')) . '\', 1)</script></button>');

        $elements[4] = $this->createElement('DateTextBox', 'BasicoAdminRascunhosDataTerminoPeriodo');
        $elements[4]->setOrder(4);
        $elements[4]->setAttribs(array('style' => 'width: 70px;'));
        $elements[4]->setRequired(false);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[4]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_DATA_TERMINO_PERIODO') . '&nbsp;<button dojoType="dijit.form.Button" type="button" tabindex="-1">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'AdminRascunhos\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DATA_TERMINO_PERIODO_AJUDA')) . '\', 1)</script></button>');

        $elements[5] = $this->createElement('html', 'BasicoAdminRascunhosContentDinamico', array('value' => ""));
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[5]->removeDecorator('DtDdWrapper');

        $elements[6] = $this->createElement('html', 'BasicoAdminRascunhosContentDinamico', array('value' => ""));
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(false);
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[6]->removeDecorator('DtDdWrapper');

        $elements[7] = $this->createElement('button', 'BasicoAdminRascunhosEnviar');
        $elements[7]->setOrder(7);
        $elements[7]->setRequired(false);
        $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[7]->removeDecorator('DtDdWrapper');
        $elements[7]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[8] = $this->createElement('button', 'BasicoAdminRascunhosEnviar');
        $elements[8]->setOrder(8);
        $elements[8]->setRequired(false);
        $elements[8]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[8]->removeDecorator('DtDdWrapper');
        $elements[8]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[9] = $this->createElement('button', 'BasicoAdminRascunhosEnviar');
        $elements[9]->setOrder(9);
        $elements[9]->setRequired(false);
        $elements[9]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        $elements[9]->removeDecorator('DtDdWrapper');
        $elements[9]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[10] = $this->createElement('button', 'BasicoAdminRascunhosEnviar');
        $elements[10]->setOrder(10);
        $elements[10]->setRequired(false);
        $elements[10]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[10]->removeDecorator('DtDdWrapper');
        $elements[10]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        // Removendo escapes das mensagens de erro dos elementos do formulario.
        Basico_OPController_UtilOPController::removeEscapeMensagensErrosZendFormElements($elements);

        // Adicionando elementos ao formulario.
        $this->addElements($elements);

        // Adicionando displays groups.
        $this->addDisplayGroup(array($elements[1]->getName(),$elements[2]->getName(),$elements[3]->getName(),$elements[4]->getName()), 'filtros', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_FILTROS'), 'order' => 1));
        $filtros = $this->getDisplayGroup('filtros');
        $filtros->removeDecorator('DtDdWrapper');
        $filtros->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));
        // Adicionando displays groups.
        $this->addDisplayGroup(array($elements[6]->getName()), 'legenda', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_LEGENDA'), 'order' => 6));
        $legenda = $this->getDisplayGroup('legenda');
        $legenda->removeDecorator('DtDdWrapper');
        $legenda->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        // Adicionando displays groups.
        $this->addDisplayGroup(array($elements[7]->getName(),$elements[8]->getName(),$elements[9]->getName()), 'acoes', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_ACOES'), 'order' => 7));
        $acoes = $this->getDisplayGroup('acoes');
        $acoes->removeDecorator('DtDdWrapper');
        $acoes->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left',));

    }
}
?>