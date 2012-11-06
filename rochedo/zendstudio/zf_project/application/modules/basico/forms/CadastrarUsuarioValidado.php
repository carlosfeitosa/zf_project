<?php
/**
* Classe Basico_Form_CadastrarUsuarioValidado
* Formulário CadastrarUsuarioValidado
*
* Formulário gerado pelo gerador RF.
* em: 05/11/2012 15:54:33
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
* @version    1: 30/10/2012 16:07:22
*
* @author SYSTEM
* @since 05/11/2012 15:54:33
*/

/**
* Formulário de cadastro de usuários validados
* 
*
* @author SYSTEM
* @since 05/11/2012 15:54:33
*/
class Basico_Form_CadastrarUsuarioValidado extends Zend_Dojo_Form
{
    /**
    * Construtor do Formulário
    * 
    * @param array $options - array com opções para construção do formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 05/11/2012 15:54:33
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
    * @since 05/11/2012 15:54:33
    */
    private function initForm()
    {
        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');
        $this->addPrefixPath('Ajaxterceiros_Form', 'Ajaxterceiros/Form');

        // Adicionando atributos ao formulário
        $this->setAttribs(array('onSubmit'=>"return(validateForm('BasicoCadastrarUsuarioValidado', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
        // Setando o nome do formulário
        $this->setName('BasicoCadastrarUsuarioValidado');
        // Setando o método do formulário
        $this->setMethod('post');
        // Setando a ação do formulário
        $this->setAction(Basico_OPController_CpgTokenOPController::getInstance()->gerarTokenPorUrl(Basico_OPController_UtilOPController::retornaBaseUrl() . '/basico/login/salvarUsuarioValidado'));
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
    * @since 05/11/2012 15:54:33
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
    * @since 05/11/2012 15:54:34
    */
    private function adicionaElementos()
    {
        // Adicionando elementos do formulário
        $this->addElement('ValidationTextBox', 'BasicoCadastrarUsuarioValidadoNome');
        $this->BasicoCadastrarUsuarioValidadoNome->setLabel('<span title=\'' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA') . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_NOME') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA')) . '\', 1);"></button>');
        $this->BasicoCadastrarUsuarioValidadoNome->setAttribs(array('size' => 100, 'style' => 'width: 300px;'));
        $this->BasicoCadastrarUsuarioValidadoNome->setOrder(1);
        $this->BasicoCadastrarUsuarioValidadoNome->setRequired(true);
        $this->BasicoCadastrarUsuarioValidadoNome->addFilter('StringTrim');
        $this->BasicoCadastrarUsuarioValidadoNome->addFilter('StripTags');
        $this->BasicoCadastrarUsuarioValidadoNome->addValidator('NotEmpty', false);
        $this->BasicoCadastrarUsuarioValidadoNome->addDecorator('Label');
        $this->BasicoCadastrarUsuarioValidadoNome->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));
        $this->BasicoCadastrarUsuarioValidadoNome->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoCadastrarUsuarioValidadoNome->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));

        $this->addElement('DateTextBox', 'BasicoCadastrarUsuarioValidadoDataNascimento');
        $this->BasicoCadastrarUsuarioValidadoDataNascimento->setLabel('<span title=\'' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA') . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_DATA_NASCIMENTO') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_DATA_NASCIMENTO_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA')) . '\', 1);"></button>');
        $this->BasicoCadastrarUsuarioValidadoDataNascimento->setAttribs(array('style' => 'width: 70px;'));
        $this->BasicoCadastrarUsuarioValidadoDataNascimento->setOrder(2);
        $this->BasicoCadastrarUsuarioValidadoDataNascimento->setRequired(true);
        $this->BasicoCadastrarUsuarioValidadoDataNascimento->addFilter('StringTrim');
        $this->BasicoCadastrarUsuarioValidadoDataNascimento->addFilter('StripTags');
        $this->BasicoCadastrarUsuarioValidadoDataNascimento->addValidator('NotEmpty', false);
        $this->BasicoCadastrarUsuarioValidadoDataNascimento->addDecorator('Label');
        $this->BasicoCadastrarUsuarioValidadoDataNascimento->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));
        $this->BasicoCadastrarUsuarioValidadoDataNascimento->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoCadastrarUsuarioValidadoDataNascimento->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));

        $this->addElement('RadioButton', 'BasicoCadastrarUsuarioValidadoSexo');
        $this->BasicoCadastrarUsuarioValidadoSexo->setLabel('<span title=\'' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA') . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_SEXO') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SEXO_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA')) . '\', 1);"></button>');
        $this->BasicoCadastrarUsuarioValidadoSexo->setOptions(array('separator' => " "));
        $this->BasicoCadastrarUsuarioValidadoSexo->setOrder(3);
        $this->BasicoCadastrarUsuarioValidadoSexo->setRequired(true);
        $this->BasicoCadastrarUsuarioValidadoSexo->addDecorator('Label');
        $this->BasicoCadastrarUsuarioValidadoSexo->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));
        $this->BasicoCadastrarUsuarioValidadoSexo->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoCadastrarUsuarioValidadoSexo->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));

        $this->addElement('ValidationTextBox', 'BasicoCadastrarUsuarioValidadoLogin');
        $this->BasicoCadastrarUsuarioValidadoLogin->setLabel('<span title=\'' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA') . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_LOGIN') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_LOGIN_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA')) . '\', 1);"></button>');
        $this->BasicoCadastrarUsuarioValidadoLogin->setAttrib("onblur", "validaString(this, 'login'); verificaDisponibilidade('login', 'login', this.value, document.getElementById('idPessoa').value ,dijit.byId('BasicoCadastrarUsuarioValidadoNome').getValue(), dijit.byId('BasicoCadastrarUsuarioValidadoDataNascimento').getValue(), '" . Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_CpgTokenOPController::getInstance()->gerarTokenPorUrl('/basico/login/verificadisponibilidadelogin') . "')");
        $this->BasicoCadastrarUsuarioValidadoLogin->setAttrib("onkeyup", "validaString(this, 'login')");
        $this->BasicoCadastrarUsuarioValidadoLogin->setOrder(4);
        $this->BasicoCadastrarUsuarioValidadoLogin->setRequired(true);
        $this->BasicoCadastrarUsuarioValidadoLogin->addFilter('StringTrim');
        $this->BasicoCadastrarUsuarioValidadoLogin->addFilter('StripTags');
        $this->BasicoCadastrarUsuarioValidadoLogin->addValidator('Regex', false, array('pattern' => '/^[(a-zA-Z)]+[(a-zA-Z0-9_@.)]*$/', 'messages' => array(Zend_Validate_Regex::NOT_MATCH => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_REGEX_ERROR_MESSAGE'))));
        $this->BasicoCadastrarUsuarioValidadoLogin->addValidator('StringLength', false, array(3, 100));
        $this->BasicoCadastrarUsuarioValidadoLogin->addValidator('NotEmpty', false);
        $this->BasicoCadastrarUsuarioValidadoLogin->addDecorator('Label');
        $this->BasicoCadastrarUsuarioValidadoLogin->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));
        $this->BasicoCadastrarUsuarioValidadoLogin->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoCadastrarUsuarioValidadoLogin->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left'));

        $this->addElement('Html', 'BasicoCadastrarUsuarioValidadoLoginDisponivel');
        $this->BasicoCadastrarUsuarioValidadoLoginDisponivel->setOptions(array('value' => ""));
        $this->BasicoCadastrarUsuarioValidadoLoginDisponivel->setOrder(5);
        $this->BasicoCadastrarUsuarioValidadoLoginDisponivel->setRequired(false);
        $this->BasicoCadastrarUsuarioValidadoLoginDisponivel->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoCadastrarUsuarioValidadoLoginDisponivel->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left'));

        $this->addElement('PasswordTextBox', 'BasicoCadastrarUsuarioValidadoSenha');
        $this->BasicoCadastrarUsuarioValidadoSenha->setLabel('<span title=\'' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA') . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_SENHA') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SENHA_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA')) . '\', 1);"></button>');
        $this->BasicoCadastrarUsuarioValidadoSenha->setAttrib("onkeyup", "chkPass(document.forms['BasicoCadastrarUsuarioValidado'].BasicoCadastrarUsuarioValidadoSenha.value, " . Basico_OPController_UtilOPController::retornaJsonMensagensPasswordStrengthChecker() . ")");
        $this->BasicoCadastrarUsuarioValidadoSenha->setOrder(6);
        $this->BasicoCadastrarUsuarioValidadoSenha->setRequired(true);
        $this->BasicoCadastrarUsuarioValidadoSenha->addValidator('NotEmpty', false);
        $this->BasicoCadastrarUsuarioValidadoSenha->addValidator('StringLength', false, array(6, 100));
        $this->BasicoCadastrarUsuarioValidadoSenha->addDecorator('Label');
        $this->BasicoCadastrarUsuarioValidadoSenha->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));
        $this->BasicoCadastrarUsuarioValidadoSenha->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoCadastrarUsuarioValidadoSenha->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));

        $this->addElement('Html', 'BasicoCadastrarUsuarioValidadoPasswordStrengthChecker');
        $this->BasicoCadastrarUsuarioValidadoPasswordStrengthChecker->setOptions(array('value' => "<div id='scorebarBorder'><div id='score'>0%</div><div id='scorebar'>&nbsp;</div></div><div id='complexity'></div>"));
        $this->BasicoCadastrarUsuarioValidadoPasswordStrengthChecker->setOrder(7);
        $this->BasicoCadastrarUsuarioValidadoPasswordStrengthChecker->setRequired(false);
        $this->BasicoCadastrarUsuarioValidadoPasswordStrengthChecker->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoCadastrarUsuarioValidadoPasswordStrengthChecker->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left'));

        $this->addElement('PasswordTextBox', 'BasicoCadastrarUsuarioValidadoSenhaConfirmacao');
        $this->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->setLabel('<span title=\'' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA') . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_SENHA_CONFIRMACAO') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'CadastrarUsuarioValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_SENHA_CONFIRMACAO_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA')) . '\', 1);"></button>');
        $this->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->setOrder(8);
        $this->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->setRequired(true);
        $this->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->addValidator('Identical', false, array('token' => 'BasicoCadastrarUsuarioValidadoSenha'));
        $this->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->addValidator('NotEmpty', false);
        $this->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->addDecorator('Label');
        $this->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));
        $this->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));

        $this->addElement('SubmitButton', 'BasicoCadastrarUsuarioValidadoEnviar');
        $this->BasicoCadastrarUsuarioValidadoEnviar->setLabel($this->getView()->tradutor('FORM_BUTTON_SUBMIT'));
        $this->BasicoCadastrarUsuarioValidadoEnviar->setOrder(9);
        $this->BasicoCadastrarUsuarioValidadoEnviar->setRequired(false);
        $this->BasicoCadastrarUsuarioValidadoEnviar->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoCadastrarUsuarioValidadoEnviar->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));

    }

    /**
    * Adiciona diplayGroups ao Formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 05/11/2012 15:54:38
    */
    private function adicionaDisplayGroups()
    {
        // Adicionando displays groups.
        $this->addDisplayGroup(array('BasicoCadastrarUsuarioValidadoNome','BasicoCadastrarUsuarioValidadoDataNascimento','BasicoCadastrarUsuarioValidadoSexo'), 'dados_usuario_dados_pessoais', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_INFORMACOES_PESSOAIS'), 'order' => 1));
        $dados_usuario_dados_pessoais = $this->getDisplayGroup('dados_usuario_dados_pessoais');
        $dados_usuario_dados_pessoais->removeDecorator('DtDdWrapper');
        $dados_usuario_dados_pessoais->addDecorator(array('row' => 'HtmlTag'));
        $dados_usuario_dados_pessoais->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));
        // Adicionando displays groups.
        $this->addDisplayGroup(array('BasicoCadastrarUsuarioValidadoLogin','BasicoCadastrarUsuarioValidadoLoginDisponivel','BasicoCadastrarUsuarioValidadoSenha','BasicoCadastrarUsuarioValidadoPasswordStrengthChecker','BasicoCadastrarUsuarioValidadoSenhaConfirmacao'), 'dados_usuario_dados_usuario', array('legend' => $this->getView()->tradutor('FORM_DISPLAY_GROUP_LABEL_INFORMACOES_USUARIO'), 'order' => 4));
        $dados_usuario_dados_usuario = $this->getDisplayGroup('dados_usuario_dados_usuario');
        $dados_usuario_dados_usuario->removeDecorator('DtDdWrapper');
        $dados_usuario_dados_usuario->addDecorator(array('row' => 'HtmlTag'));
        $dados_usuario_dados_usuario->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left'));

    }
}
?>