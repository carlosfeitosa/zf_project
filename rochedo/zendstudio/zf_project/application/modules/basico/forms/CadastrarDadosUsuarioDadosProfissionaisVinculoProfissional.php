<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 18/10/2010 16:59:50
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
* @version    1: 18/10/2010 16:59:02
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

        // Criando array de elementos.
        $elements = array();

        $elements[0] = $this->createElement('FilteringSelect', 'vinculoProfissional');
        $elements[0]->setRequired(true);
        $elements[0]->addDecorator('Label', array('escape' => false));
        $elements[0]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'style' => 'float: left;',));
        $elements[0]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_VINCULO_PROFISSIONAL', DEFAULT_USER_LANGUAGE) . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE', DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_VINCULO_PROFISSIONAL_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[0]->setValue($options->vinculoProfissional);

        $elements[1] = $this->createElement('FilteringSelect', 'profissao');
        $elements[1]->setRequired(true);
        $elements[1]->addDecorator('Label', array('escape' => false));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div'));
        $elements[1]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_PROFISSAO', DEFAULT_USER_LANGUAGE) . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE', DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_PROFISSAO_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[1]->setValue($options->profissao);

        $elements[2] = $this->createElement('FilteringSelect', 'pjVinculo');
        $elements[2]->setRequired(false);
        $elements[2]->addDecorator('Label', array('escape' => false));
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'style' => 'float: left; clear: both;',));
        $elements[2]->setLabel(''.$this->getView()->tradutor('FORM_FIELD_PJ_VINCULO', DEFAULT_USER_LANGUAGE) . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE', DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_PJ_VINCULO_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[2]->setValue($options->pjVinculo);

        $elements[3] = $this->createElement('FilteringSelect', 'regimeTrabalho');
        $elements[3]->setRequired(true);
        $elements[3]->addDecorator('Label', array('escape' => false));
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div'));
        $elements[3]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_REGIME_TRABALHO', DEFAULT_USER_LANGUAGE) . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE', DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_REGIME_TRABALHO_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[3]->setValue($options->regimeTrabalho);

        $elements[4] = $this->createElement('ValidationTextBox', 'cargo');
        $elements[4]->setRequired(true);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addDecorator('Label', array('escape' => false));
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'style' => 'float: left; clear: both;',));
        $elements[4]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_CARGO', DEFAULT_USER_LANGUAGE) . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE', DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_CARGO_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)</script></button>');
        $elements[4]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_CARGO_HINT', DEFAULT_USER_LANGUAGE));
        if ($options!=null)
            $elements[4]->setValue($options->cargo);

        $elements[5] = $this->createElement('ValidationTextBox', 'funcao');
        $elements[5]->setRequired(true);
        $elements[5]->addFilters(array('StringTrim', 'StripTags'));
        $elements[5]->addDecorator('Label', array('escape' => false));
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'style' => 'float: left;',));
        $elements[5]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_FUNCAO', DEFAULT_USER_LANGUAGE) . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE', DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_FUNCAO_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)</script></button>');
        $elements[5]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_FUNCAO_HINT', DEFAULT_USER_LANGUAGE));
        if ($options!=null)
            $elements[5]->setValue($options->funcao);

        $elements[6] = $this->createElement('SimpleTextarea', 'atividadesDesenvolvidas', array('style' => 'width: 525px;'));
        $elements[6]->setRequired(false);
        $elements[6]->addFilters(array('StringTrim', 'StripTags'));
        $elements[6]->addDecorator('Label', array('escape' => false));
        $elements[6]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'style' => 'clear: both;',));
        $elements[6]->setLabel(''.$this->getView()->tradutor('FORM_FIELD_ATIVIDADES_DESENVOLVIDAS', DEFAULT_USER_LANGUAGE) . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE', DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_ATIVIDADES_DESENVOLVIDAS_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[6]->setValue($options->atividadesDesenvolvidas);

        $elements[7] = $this->createElement('DateTextBox', 'dataAdmissao', array('style' => 'width: 100px;'));
        $elements[7]->setRequired(false);
        $elements[7]->addDecorator('Label', array('escape' => false));
        $elements[7]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'style' => 'float: left; clear: both;',));
        $elements[7]->setLabel(''.$this->getView()->tradutor('FORM_FIELD_DATA_ADMISSAO', DEFAULT_USER_LANGUAGE) . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE', DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_DATA_ADMISSAO_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)</script></button>');
        $elements[7]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_DATA_ADMISSAO_HINT', DEFAULT_USER_LANGUAGE));
        if ($options!=null)
            $elements[7]->setValue($options->dataAdmissao);

        $elements[8] = $this->createElement('DateTextBox', 'dataDesvinculacao', array('style' => 'width: 100px;'));
        $elements[8]->setRequired(false);
        $elements[8]->addDecorator('Label', array('escape' => false));
        $elements[8]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div'));
        $elements[8]->setLabel(''.$this->getView()->tradutor('FORM_FIELD_DATA_DESVINCULACAO', DEFAULT_USER_LANGUAGE) . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE', DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_DATA_DESVINCULACAO_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)</script></button>');
        $elements[8]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_DATA_DESVINCULACAO_HINT', DEFAULT_USER_LANGUAGE));
        if ($options!=null)
            $elements[8]->setValue($options->dataDesvinculacao);

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>