<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 13/08/2010 11:33:05
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
* @version    0.1: 10/08/2010 12:29:07
*/
    $basicoDadosPessoaisSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoDadosPessoaisSubForm->setName('DadosPessoais');
    $basicoDadosPessoaisSubForm->setMethod('post');
    $basicoDadosPessoaisSubForm->setAction('index.php');
    $basicoDadosPessoaisSubForm->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarUsuarioNaoValidado'))"));
    $basicoDadosPessoaisSubForm->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), 'DijitForm'));

    // Criando array de elementos.
    $elements = array();

    $elements[0] = $this->createElement('ValidationTextBox', 'nome');
    $elements[0]->setAttribs(array('size' => 100));
    $elements[0]->setRequired(true);
    $elements[0]->addFilters(array('StringTrim', 'StripTags'));
    $elements[0]->addValidator('NotEmpty');
    $elements[0]->AddDecorator('Label', array('escape' => false));
    $elements[0]->setLabel($this->getView()->tradutor('FORM_FIELD_NOME', DEFAULT_USER_LANGUAGE) . '&nbsp;<a href="javascript:showDialogAlert(\'DadosPessoais\', \'' . $this->getView()->tradutor(DIALOG_HELP_TITLE, DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_NOME_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)">(?)</a>');
    $elements[0]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_HINT', DEFAULT_USER_LANGUAGE));
    if ($options!=null)
        $elements[0]->setValue($options->nome);

    // Adicionando elementos ao formulario.
    $basicoDadosPessoaisSubForm->addElements($elements);

    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoDadosPessoaisSubForm, 'DadosPessoais');
?>