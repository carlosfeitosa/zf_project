<?php
/**
* Classe Basico_Form_AutenticacaoUsuario
* Formulário AutenticacaoUsuario
*
* Formulário gerado pelo gerador RF.
* em: 30/10/2012 13:23:50
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
* @version    1: 30/10/2012 11:57:37
*
* @author SYSTEM
* @since 30/10/2012 13:23:50
*/

/**
* Formulário para autenticação de usuarios
* 
*
* @author SYSTEM
* @since 30/10/2012 13:23:50
*/
class Basico_Form_AutenticacaoUsuario extends Zend_Dojo_Form
{
    /**
    * Construtor do Formulário
    * 
    * @param array $options - array com opções para construção do formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 30/10/2012 13:23:50
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
    * @since 30/10/2012 13:23:50
    */
    private function initForm()
    {
        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Adicionando atributos ao formulário
        $this->setAttribs(array('onSubmit'=>"return(validateForm('BasicoAutenticacaoUsuario', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
        $this->setAttrib("onsubmit", "validaString(this, 'login'); verificaDisponibilidade('login', 'login', this.value, document.getElementById('idPessoa').value ,dijit.byId('BasicoCadastrarUsuarioValidadoNome').getValue(), dijit.byId('BasicoCadastrarUsuarioValidadoDataNascimento').getValue(), '" . Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_CpgTokenOPController::getInstance()->gerarTokenPorUrl('/basico/login/verificadisponibilidadelogin') . "')");
        // Setando o nome do formulário
        $this->setName('BasicoAutenticacaoUsuario');
        // Setando o método do formulário
        $this->setMethod('post');
        // Setando a ação do formulário
        $this->setAction(Basico_OPController_CpgTokenOPController::getInstance()->gerarTokenPorUrl(Basico_OPController_UtilOPController::retornaBaseUrl() . '/basico/autenticador/verificaAutenticacaoUsuario'));
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
    * @since 30/10/2012 13:23:50
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
    * @since 30/10/2012 13:23:50
    */
    private function adicionaElementos()
    {
        // Adicionando elementos do formulário
        $this->addElement('ValidationTextBox', 'BasicoAutenticacaoUsuarioLogin');
        $this->BasicoAutenticacaoUsuarioLogin->setLabel('<span title=\'' . $this->getView()->tradutor(REQUIRED_ELEMENT_TEXTO_AJUDA) . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_LOGIN') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'AutenticacaoUsuario\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_LOGIN_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor(REQUIRED_ELEMENT_TEXTO_AJUDA)) . '\', 1);"></button>');
        $this->BasicoAutenticacaoUsuarioLogin->setOrder(1);
        $this->BasicoAutenticacaoUsuarioLogin->setRequired(true);
        $this->BasicoAutenticacaoUsuarioLogin->addFilter('StringTrim');
        $this->BasicoAutenticacaoUsuarioLogin->addFilter('StripTags');
        $this->BasicoAutenticacaoUsuarioLogin->addValidator('Regex', false, array('pattern' => '/^[(a-zA-Z)]+[(a-zA-Z0-9_@.)]*$/', 'messages' => array(Zend_Validate_Regex::NOT_MATCH => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_REGEX_ERROR_MESSAGE'))));
        $this->BasicoAutenticacaoUsuarioLogin->addValidator('StringLength', false, array(3, 100));
        $this->BasicoAutenticacaoUsuarioLogin->addValidator('NotEmpty', false);
        $this->BasicoAutenticacaoUsuarioLogin->addDecorator('Label');
        $this->BasicoAutenticacaoUsuarioLogin->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));

        $this->addElement('PasswordTextBox', 'BasicoAutenticacaoUsuarioSenha');
        $this->BasicoAutenticacaoUsuarioSenha->setLabel('<span title=\'' . $this->getView()->tradutor(REQUIRED_ELEMENT_TEXTO_AJUDA) . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_SENHA') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'AutenticacaoUsuario\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SENHA_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor(REQUIRED_ELEMENT_TEXTO_AJUDA)) . '\', 1);"></button>');
        $this->BasicoAutenticacaoUsuarioSenha->setOrder(2);
        $this->BasicoAutenticacaoUsuarioSenha->setRequired(true);
        $this->BasicoAutenticacaoUsuarioSenha->addDecorator('Label');
        $this->BasicoAutenticacaoUsuarioSenha->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));

        $this->addElement('CheckBox', 'BasicoAutenticacaoUsuarioLoginManterLogado');
        $this->BasicoAutenticacaoUsuarioLoginManterLogado->setLabel('<span title=\'' . $this->getView()->tradutor(REQUIRED_ELEMENT_TEXTO_AJUDA) . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'AutenticacaoUsuario\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor(REQUIRED_ELEMENT_TEXTO_AJUDA)) . '\', 1);"></button>');
        $this->BasicoAutenticacaoUsuarioLoginManterLogado->setOptions(array('disableLoadDefaultDecorators' => true, 'decorators' => array('DijitElement', 'Errors', 'Description')));
        $this->BasicoAutenticacaoUsuarioLoginManterLogado->setOrder(3);
        $this->BasicoAutenticacaoUsuarioLoginManterLogado->setRequired(false);
        $this->BasicoAutenticacaoUsuarioLoginManterLogado->addDecorator('Label');
        $this->BasicoAutenticacaoUsuarioLoginManterLogado->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));

        $this->addElement('Html', 'BasicoAutenticacaoUsuarioLinkProblemasLogon');
        $this->BasicoAutenticacaoUsuarioLinkProblemasLogon->setOptions(array('value' => "<br><a href='{$this->getView()->url(array('module' => 'basico', 'controller' => 'login', 'action' => 'problemasLogin'), null, true)}'>{$this->getView()->tradutor('FORM_LINK_PROBLEMAS_LOGON')}</a>"));
        $this->BasicoAutenticacaoUsuarioLinkProblemasLogon->setOrder(4);
        $this->BasicoAutenticacaoUsuarioLinkProblemasLogon->setRequired(false);
        $this->BasicoAutenticacaoUsuarioLinkProblemasLogon->addDecorator('Label');
        $this->BasicoAutenticacaoUsuarioLinkProblemasLogon->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));

        $this->addElement('Html', 'BasicoAutenticacaoUsuarioLinkNovoUsuario');
        $this->BasicoAutenticacaoUsuarioLinkNovoUsuario->setOptions(array('value' => "<a href='{$this->getView()->url(array('module' => 'basico', 'controller' => 'login', 'action' => 'cadastrarUsuarioNaoValidado'), null, true)}'>{$this->getView()->tradutor('FORM_LINK_NOVO_USUARIO')}</a>"));
        $this->BasicoAutenticacaoUsuarioLinkNovoUsuario->setOrder(5);
        $this->BasicoAutenticacaoUsuarioLinkNovoUsuario->setRequired(false);
        $this->BasicoAutenticacaoUsuarioLinkNovoUsuario->addDecorator('Label');
        $this->BasicoAutenticacaoUsuarioLinkNovoUsuario->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));

        $this->addElement('Html', 'BasicoAutenticacaoUsuarioLinhaHorizontal');
        $this->BasicoAutenticacaoUsuarioLinhaHorizontal->setOptions(array('value' => '<hr>'));
        $this->BasicoAutenticacaoUsuarioLinhaHorizontal->setOrder(6);
        $this->BasicoAutenticacaoUsuarioLinhaHorizontal->setRequired(false);
        $this->BasicoAutenticacaoUsuarioLinhaHorizontal->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoAutenticacaoUsuarioLinhaHorizontal->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $this->addElement('SubmitButton', 'BasicoAutenticacaoUsuarioEnviar');
        $this->BasicoAutenticacaoUsuarioEnviar->setLabel($this->getView()->tradutor('FORM_BUTTON_SUBMIT'));
        $this->BasicoAutenticacaoUsuarioEnviar->setOrder(7);
        $this->BasicoAutenticacaoUsuarioEnviar->setRequired(false);
        $this->BasicoAutenticacaoUsuarioEnviar->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoAutenticacaoUsuarioEnviar->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-right-clear-both'));

        $this->addElement('Button', 'BasicoAutenticacaoUsuarioResetar');
        $this->BasicoAutenticacaoUsuarioResetar->setLabel($this->getView()->tradutor('FORM_BUTTON_RESET'));
        $this->BasicoAutenticacaoUsuarioResetar->setOptions(array('type' => 'reset'));
        $this->BasicoAutenticacaoUsuarioResetar->setAttrib("onclick", "hideDialog('BasicoAutenticacaoUsuario', '/rochedo_project/public')");
        $this->BasicoAutenticacaoUsuarioResetar->setOrder(8);
        $this->BasicoAutenticacaoUsuarioResetar->setRequired(false);
        $this->BasicoAutenticacaoUsuarioResetar->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoAutenticacaoUsuarioResetar->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-right'));

        $this->addElement('Hidden', 'BasicoAutenticacaoUsuarioUrlRedirect');
        $this->BasicoAutenticacaoUsuarioUrlRedirect->setOptions(array('decorators' => array('ViewHelper')));
        $this->BasicoAutenticacaoUsuarioUrlRedirect->setOrder(9);
        $this->BasicoAutenticacaoUsuarioUrlRedirect->setRequired(false);

    }

    /**
    * Adiciona diplayGroups ao Formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 30/10/2012 13:23:52
    */
    private function adicionaDisplayGroups()
    {
    }
}
?>