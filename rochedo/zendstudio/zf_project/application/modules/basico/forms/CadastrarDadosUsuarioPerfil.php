<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 06/12/2010 17:02:26
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
* @version    1: 06/12/2010 17:01:43
*/
class Basico_Form_CadastrarDadosUsuarioPerfil extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioPerfil
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioPerfil');
        $this->setMethod('post');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('MultiCheckbox', 'BasicoCadastrarDadosUsuarioPerfilPerfisDisponiveis');
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(false);
        $elements[1]->addDecorator('Label', array('escape' => false));
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[1]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_PERFIS_DISPONIVEIS') . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosUsuarioPerfil\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_PERFIS_DISPONIVEIS_AJUDA')) . '\', 1)</script></button>');
        if ($options!=null)
            $elements[1]->setValue($options->perfisDisponiveis);

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
        // Adicionando sub-formulario ao formulario pai.
    }
}
?>