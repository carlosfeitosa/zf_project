<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 22/10/2010 09:54:49
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
* @version    1: 22/10/2010 09:53:51
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

        $elements[0] = $this->createElement('FilteringSelect', 'maiorTitulacao');
        $elements[0]->setRequired(true);
        $elements[0]->addFilters(array('StringTrim', 'StripTags'));
        $elements[0]->addDecorator('Label', array('escape' => false));
        $elements[0]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO', DEFAULT_USER_LANGUAGE) . '');
        if ($options!=null)
            $elements[0]->setValue($options->maiorTitulacao);

        $elements[1] = $this->createElement('FilteringSelect', 'instituicaoQueConcedeu');
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addDecorator('Label', array('escape' => false));
        $elements[1]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_INSTITUICAO_QUE_CONCEDEU', DEFAULT_USER_LANGUAGE) . '');

        $elements[2] = $this->createElement('FilteringSelect', 'areaDeConhecimento');
        $elements[2]->setRequired(true);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addDecorator('Label', array('escape' => false));
        $elements[2]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_AREA_DE_CONHECIMENTO', DEFAULT_USER_LANGUAGE) . '');

        $elements[3] = $this->createElement('ValidationTextBox', 'nomeCurso');
        $elements[3]->setRequired(true);
        $elements[3]->addFilters(array('StringTrim', 'StripTags'));
        $elements[3]->addDecorator('Label', array('escape' => false));
        $elements[3]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_NOME_CURSO', DEFAULT_USER_LANGUAGE) . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE', DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_NOME_CURSO_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)</script></button>');
        $elements[3]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_CURSO_HINT', DEFAULT_USER_LANGUAGE));
        if ($options!=null)
            $elements[3]->setValue($options->nomeCurso);

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>