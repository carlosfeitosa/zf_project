<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 03/11/2010 13:15:12
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
* @version    1: 03/11/2010 13:13:25
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

        $elements[0] = $this->createElement('NumberTextBox', 'BasicoCadastrarTelefoneTelefoneCodigoPais', array('style' => 'width: 40px;', 'places' => 0));
        $elements[0]->setRequired(true);
        $elements[0]->addFilters(array('StringTrim', 'StripTags'));
        $elements[0]->addDecorator('Label', array('escape' => false));
        $elements[0]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[0]->setLabel('* '.$this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_PAIS') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarTelefone\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_PAIS_AJUDA')) . '\', 1)</script></button>');
        $elements[0]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_TELEFONE_CODIGO_PAIS_HINT'));
        if ($options!=null)
            $elements[0]->setValue($options->telefoneCodigoPais);

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>