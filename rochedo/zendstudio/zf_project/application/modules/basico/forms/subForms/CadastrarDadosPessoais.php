<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 25/08/2010 15:36:52
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
* @version    0.666: 19/08/2010 11:29:50
*/
    $basicoCadastrarDadosPessoaisSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosPessoaisSubForm->setName('CadastrarDadosPessoais');
    $basicoCadastrarDadosPessoaisSubForm->setMethod('post');
    $basicoCadastrarDadosPessoaisSubForm->setAction('index');
    $basicoCadastrarDadosPessoaisSubForm->addAttribs(array('title' => $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_PESSOAIS),'onSubmit'=>"loading();return(validateForm('CadastrarDadosPessoais'))"));
    $basicoCadastrarDadosPessoaisSubForm->setDecorators(array('FormElements',
                                    array('HtmlTag', array('tag' => 'dl')),
                                    'DijitForm'));

    // Criando array de elementos.
    $elements = array();

    $elements[0] = $this->createElement('ValidationTextBox', 'email');
    $elements[0]->setAttribs(array('size' => 80));
    $elements[0]->setRequired(true);
    $elements[0]->addFilters(array('StringTrim', 'StripTags'));
    $elements[0]->addValidator('NotEmpty');
    $elements[0]->addValidator('EmailAddress', true, array('mx' => true, 'deep' => true,));
    $elements[0]->AddDecorator('Label', array('escape' => false));
    $elements[0]->setLabel($this->getView()->tradutor('FORM_FIELD_EMAIL', DEFAULT_USER_LANGUAGE) . '&nbsp;<button dojoType="dijit.form.Button" type="button">?<script type="dojo/method" event="onClick" args="evt">showDialogAlert(\'CadastrarDadosPessoais\', \'' . $this->getView()->tradutor(DIALOG_HELP_TITLE, DEFAULT_USER_LANGUAGE) . '\', \'' . $this->getView()->tradutor('FORM_FIELD_EMAIL_AJUDA', DEFAULT_USER_LANGUAGE) . '\', 1)</script></button>');
    $elements[0]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_EMAIL_HINT', DEFAULT_USER_LANGUAGE));
    if ($options!=null)
        $elements[0]->setValue($options->email);

    $basicoCadastrarUsuarioNaoValidadoSubFormDOJO = new Basico_Form_CadastrarUsuarioNaoValidado();
    $basicoCadastrarUsuarioNaoValidadoSubFormDOJO = Basico_Model_Util::escapaCaracteresFormDialogDOJO($basicoCadastrarUsuarioNaoValidadoSubFormDOJO);
    $elements[1] = $this->createElement('button', 'buttonDialogDojo1');
    $elements[1]->setAttribs(array('label' => "{$this->getView()->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO)}", 'onClick' => "exibirForm(\"Basico_Form_CadastrarUsuarioNaoValidado\", \"{$basicoCadastrarUsuarioNaoValidadoSubFormDOJO}\", \"{$this->getView()->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO)}\")"));
    $elements[1]->setRequired(false);

    // Adicionando elementos ao formulario.
    $basicoCadastrarDadosPessoaisSubForm->addElements($elements);

    // Adicionando sub-formulario ao formulario pai.
    $this->addSubForm($basicoCadastrarDadosPessoaisSubForm, 'CadastrarDadosPessoais');
?>