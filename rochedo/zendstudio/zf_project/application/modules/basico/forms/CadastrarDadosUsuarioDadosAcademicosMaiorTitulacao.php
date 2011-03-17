<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 27/12/2010 13:06:22
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
* @version    1: 27/12/2010 12:55:25
*/
class Basico_Form_CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao');
        $this->setMethod('post');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoMaiorTitulacao');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[1]->setValue($options->maiorTitulacao);

        $elements[2] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoInstituicaoQueConcedeu');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_INSTITUICAO_QUE_CONCEDEU') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_INSTITUICAO_QUE_CONCEDEU_AJUDA')) . '\', 1)</script></button>');

        $elements[3] = $this->createElement('FilteringSelect', 'BasicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoAreaDeConhecimento');
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(true);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[3]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_AREA_DE_CONHECIMENTO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_AREA_DE_CONHECIMENTO_AJUDA')) . '\', 1)</script></button>');

        $elements[4] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoNomeCurso');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(true);
        $elements[4]->addFilters(array('StringTrim', 'StripTags'));
        $elements[4]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[4]->setLabel('* ' . $this->getView()->tradutor('FORM_FIELD_NOME_CURSO') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_CURSO_AJUDA')) . '\', 1)</script></button>');
        $elements[4]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_CURSO_HINT'));
        if ($options!=null)
            $elements[4]->setValue($options->nomeCurso);

        $elements[5] = $this->createElement('hash', 'BasicoCadastrarDadosUsuarioDadosAcademicosMaiorTitulacaoCsrf', array('ignore' => true, 'salt' => 'unique',));
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->removeDecorator('Label');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>