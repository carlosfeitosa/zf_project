<?php
/**
* Classe Basico_Form_AceiteTermosUso
* Formulário AceiteTermosUso
*
* Formulário gerado pelo gerador RF.
* em: 30/10/2012 13:58:20
*
* LICENÇA DE USO
*
* Texto do termo de uso do sistema.
*
*
* @category   RochedoFrameworkForm
* @package    Basico
* @copyright  Copyright (c) 2010~2012 Rochedo Project. (http://www.rochedoframework.com)
* @license    (ainda não implementado)
* @version    1: 30/10/2012 11:57:36
*
* @author SYSTEM
* @since 30/10/2012 13:58:20
*/

/**
* Formulário para aceitação dos termos de uso
* 
*
* @author SYSTEM
* @since 30/10/2012 13:58:20
*/
class Basico_Form_AceiteTermosUso extends Zend_Dojo_Form
{
    /**
    * Construtor do Formulário
    * 
    * @param array $options - array com opções para construção do formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 30/10/2012 13:58:20
    */
    public function __construct($options = null)
    {
        // Chamando o construtor parent do formulário
        parent::__construct($options);

        // Chamando método de inicialização do formulário
        $this->initForm();
    }

    /**
    * Inicializa o Formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 30/10/2012 13:58:20
    */
    private function initForm()
    {
        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Adicionando atributos ao formulário
        $this->setAttribs(array('onSubmit'=>"return(validateForm('BasicoAceiteTermosUso', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
        // Setando o nome do formulário
        $this->setName('BasicoAceiteTermosUso');
        // Setando o método do formulário
        $this->setMethod('post');
        // Adicionando decorators ao formulário
        $this->adicionaDecorators();
        // Adicionando elementos ao formulário
        $this->adicionaElementos();
        // Adicionando display groups ao formulario
        $this->adicionaDisplayGroups();
    }

    /**
    * Adiciona decorators ao Formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 30/10/2012 13:58:20
    */
    private function adicionaDecorators()
    {
        $this->addDecorator('FormElements');
        $this->addDecorator('HtmlTag');
        $this->getDecorator('HtmlTag')->setOptions(array('tag' => 'dl'));
        $this->addDecorator('DijitForm');
        $this->addDecorator('AjaxForm');
    }

    /**
    * Adiciona elementos ao Formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 30/10/2012 13:58:20
    */
    private function adicionaElementos()
    {
        // Adicionando elementos do formulário
        $this->addElement('SimpleTextarea', 'BasicoAceiteTermosUsoTermosUso');
        $this->BasicoAceiteTermosUsoTermosUso->setLabel('<span title=\'' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA') . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_TERMOS_USO') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'AceiteTermosUso\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_TERMOS_USO_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA')) . '\', 1);"></button>');
        $this->BasicoAceiteTermosUsoTermosUso->setOptions(array('readOnly' => true));
        $this->BasicoAceiteTermosUsoTermosUso->setAttribs(array('style' => 'width: 472px;'));
        $this->BasicoAceiteTermosUsoTermosUso->setOrder(1);
        $this->BasicoAceiteTermosUsoTermosUso->setRequired(false);
        $this->BasicoAceiteTermosUsoTermosUso->addFilter('StringTrim');
        $this->BasicoAceiteTermosUsoTermosUso->addFilter('StripTags');
        $this->BasicoAceiteTermosUsoTermosUso->addDecorator('Label');
        $this->BasicoAceiteTermosUsoTermosUso->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));
        $this->BasicoAceiteTermosUsoTermosUso->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoAceiteTermosUsoTermosUso->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));

        $this->addElement('Html', 'BasicoAceiteTermosUsoLinks');
        $this->BasicoAceiteTermosUsoLinks->setOptions(array('value' => ""));
        $this->BasicoAceiteTermosUsoLinks->setOrder(2);
        $this->BasicoAceiteTermosUsoLinks->setRequired(false);
        $this->BasicoAceiteTermosUsoLinks->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoAceiteTermosUsoLinks->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));

        $this->addElement('ValidationTextBox', 'BasicoAceiteTermosUsoAceiteTermosUso');
        $this->BasicoAceiteTermosUsoAceiteTermosUso->setLabel('<span title=\'' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA') . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_ACEITE_TERMOS_USO') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'AceiteTermosUso\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_ACEITE_TERMOS_USO_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA')) . '\', 1);"></button>');
        $this->BasicoAceiteTermosUsoAceiteTermosUso->setOrder(3);
        $this->BasicoAceiteTermosUsoAceiteTermosUso->setRequired(true);
        $this->BasicoAceiteTermosUsoAceiteTermosUso->addFilter('StringTrim');
        $this->BasicoAceiteTermosUsoAceiteTermosUso->addFilter('StripTags');
        $this->BasicoAceiteTermosUsoAceiteTermosUso->addDecorator('Label');
        $this->BasicoAceiteTermosUsoAceiteTermosUso->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));
        $this->BasicoAceiteTermosUsoAceiteTermosUso->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoAceiteTermosUsoAceiteTermosUso->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));

        $this->addElement('SubmitButton', 'BasicoAceiteTermosUsoEnviar');
        $this->BasicoAceiteTermosUsoEnviar->setLabel($this->getView()->tradutor('FORM_BUTTON_SUBMIT'));
        $this->BasicoAceiteTermosUsoEnviar->setOrder(4);
        $this->BasicoAceiteTermosUsoEnviar->setRequired(false);
        $this->BasicoAceiteTermosUsoEnviar->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoAceiteTermosUsoEnviar->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-right-clear-both'));

        $this->addElement('Button', 'BasicoAceiteTermosUsoHtmlButtonCancelar');
        $this->BasicoAceiteTermosUsoHtmlButtonCancelar->setLabel($this->getView()->tradutor('FORM_BUTTON_CANCELAR_LABEL'));
        $this->BasicoAceiteTermosUsoHtmlButtonCancelar->setOrder(5);
        $this->BasicoAceiteTermosUsoHtmlButtonCancelar->setRequired(false);
        $this->BasicoAceiteTermosUsoHtmlButtonCancelar->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoAceiteTermosUsoHtmlButtonCancelar->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-right'));

    }

    /**
    * Adiciona diplayGroups ao Formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 30/10/2012 13:58:22
    */
    private function adicionaDisplayGroups()
    {
        // Adicionando displays groups.
        $this->addDisplayGroup(array('BasicoAceiteTermosUsoLinks'), 'download', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_DOWNLOAD'), 'order' => 2));
        $download = $this->getDisplayGroup('download');
        $download->removeDecorator('DtDdWrapper');
        $download->addDecorator(array('row' => 'HtmlTag'));
        $download->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));
        // Adicionando displays groups.
        $this->addDisplayGroup(array('BasicoAceiteTermosUsoAceiteTermosUso'), 'aceite', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_ACEITE'), 'order' => 3));
        $aceite = $this->getDisplayGroup('aceite');
        $aceite->removeDecorator('DtDdWrapper');
        $aceite->addDecorator(array('row' => 'HtmlTag'));
        $aceite->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));

    }
}
?>