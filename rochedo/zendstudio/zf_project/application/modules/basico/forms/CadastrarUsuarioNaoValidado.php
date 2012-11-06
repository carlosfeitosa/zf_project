<?php
/**
* Classe Basico_Form_CadastrarUsuarioNaoValidado
* Formulário CadastrarUsuarioNaoValidado
*
* Formulário gerado pelo gerador RF.
* em: 01/11/2012 15:09:17
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
* @since 01/11/2012 15:09:17
*/

/**
* Formulário de cadastro de usuários NÃO validados
* 
*
* @author SYSTEM
* @since 01/11/2012 15:09:17
*/
class Basico_Form_CadastrarUsuarioNaoValidado extends Zend_Dojo_Form
{
    /**
    * Construtor do Formulário
    * 
    * @param array $options - array com opções para construção do formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 01/11/2012 15:09:17
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
    * @since 01/11/2012 15:09:17
    */
    private function initForm()
    {
        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Adicionando atributos ao formulário
        $this->setAttribs(array('onSubmit'=>"return(validateForm('BasicoCadastrarUsuarioNaoValidado', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
        // Setando o nome do formulário
        $this->setName('BasicoCadastrarUsuarioNaoValidado');
        // Setando o método do formulário
        $this->setMethod('post');
        // Setando a ação do formulário
        $this->setAction(Basico_OPController_CpgTokenOPController::getInstance()->gerarTokenPorUrl(Basico_OPController_UtilOPController::retornaBaseUrl() . '/basico/login/verificaNovoLogin'));
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
    * @since 01/11/2012 15:09:17
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
    * @since 01/11/2012 15:09:18
    */
    private function adicionaElementos()
    {
        // Adicionando elementos do formulário
        $this->addElement('ValidationTextBox', 'BasicoCadastrarUsuarioNaoValidadoNome');
        $this->BasicoCadastrarUsuarioNaoValidadoNome->setLabel('<span title=\'' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA') . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_NOME') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'CadastrarUsuarioNaoValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_NOME_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA')) . '\', 1);"></button>');
        $this->BasicoCadastrarUsuarioNaoValidadoNome->setAttribs(array('size' => 100, 'style' => 'width: 300px;'));
        $this->BasicoCadastrarUsuarioNaoValidadoNome->setOrder(1);
        $this->BasicoCadastrarUsuarioNaoValidadoNome->setRequired(true);
        $this->BasicoCadastrarUsuarioNaoValidadoNome->addFilter('StringTrim');
        $this->BasicoCadastrarUsuarioNaoValidadoNome->addFilter('StripTags');
        $this->BasicoCadastrarUsuarioNaoValidadoNome->addValidator('NotEmpty', false);
        $this->BasicoCadastrarUsuarioNaoValidadoNome->addDecorator('Label');
        $this->BasicoCadastrarUsuarioNaoValidadoNome->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));

        $this->addElement('ValidationTextBox', 'BasicoCadastrarUsuarioNaoValidadoEmail');
        $this->BasicoCadastrarUsuarioNaoValidadoEmail->setLabel('<span title=\'' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA') . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_EMAIL') . '&nbsp;<button type="button" tabindex="-1" class="helpButton" onClick="showDialogAlert(\'CadastrarUsuarioNaoValidado\', \'' . $this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor('FORM_FIELD_EMAIL_AJUDA') . '<br><br>* = ' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA')) . '\', 1);"></button>');
        $this->BasicoCadastrarUsuarioNaoValidadoEmail->setAttribs(array('size' => 100, 'style' => 'width: 300px;'));
        $this->BasicoCadastrarUsuarioNaoValidadoEmail->setOrder(2);
        $this->BasicoCadastrarUsuarioNaoValidadoEmail->setRequired(true);
        $this->BasicoCadastrarUsuarioNaoValidadoEmail->addFilter('StringTrim');
        $this->BasicoCadastrarUsuarioNaoValidadoEmail->addFilter('StripTags');
        $this->BasicoCadastrarUsuarioNaoValidadoEmail->addValidator('EmailAddress', false, array('mx' => true, 'deep' => true));
        $this->BasicoCadastrarUsuarioNaoValidadoEmail->addValidator('NotEmpty', false);
        $this->BasicoCadastrarUsuarioNaoValidadoEmail->addDecorator('Label');
        $this->BasicoCadastrarUsuarioNaoValidadoEmail->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));

        if (!Basico_OPController_UtilOPController::ambienteDesenvolvimento()) {
            $this->addElement('Captcha', 'BasicoCadastrarUsuarioNaoValidadoVerificador6digitos', array('required'=> true, 
							     	   			'captcha' => array('captcha'=>'Image',
                                       					  				    'imgDir' => CAPTCHA_IMAGE_DIR,
                                       					  				    'imgUrl' => Basico_OPController_UtilOPController::retornaBaseUrl() . CAPTCHA_IMAGE_URL,
                                       					  				    'wordLen'=> CAPTCHA_WORDLEN,
                                       					  				    'width'  => CAPTCHA_WIDTH,
                                       					  				    'height' => CAPTCHA_HEIGHT,
                                       					  				    'font'   => CAPTCHA_FONT_PATH,
                                       					  				    'fontSize' => CAPTCHA_FONT_SIZE,
                                       					  				    'expiration' => CAPTCHA_EXPIRATION,
                                       					  				    'gcFreq' => CAPTCHA_GCFREQ,
                                       					  				    'messages' => array(Zend_Captcha_Word::BAD_CAPTCHA => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_CAPTCHA_BAD_CAPTCHA'), 
											 					 Zend_Captcha_Word::MISSING_ID => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_CAPTCHA_BAD_CAPTCHA'), 
											 					 Zend_Captcha_Word::MISSING_VALUE => $this->getView()->tradutor('FORM_ELEMENT_VALIDATOR_CAPTCHA_BAD_CAPTCHA'))),));
            $this->BasicoCadastrarUsuarioNaoValidadoVerificador6digitos->setLabel('<span title=\'' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA') . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_CAPTCHA_6'));
            $this->BasicoCadastrarUsuarioNaoValidadoVerificador6digitos->setAttribs(array('class' => 'dijitTextBox', 'style' => 'margin-top: 10px; margin-bottom: 10px;'));
            $this->BasicoCadastrarUsuarioNaoValidadoVerificador6digitos->setOrder(3);
            $this->BasicoCadastrarUsuarioNaoValidadoVerificador6digitos->setRequired(true);
            $this->BasicoCadastrarUsuarioNaoValidadoVerificador6digitos->addDecorator(array('row' => 'HtmlTag'));
            $this->BasicoCadastrarUsuarioNaoValidadoVerificador6digitos->getDecorator('row')->setOptions(array('tag' => 'div', 'style' => 'width: 300px;'));
        }

        $this->addElement('SubmitButton', 'BasicoCadastrarUsuarioNaoValidadoEnviar');
        $this->BasicoCadastrarUsuarioNaoValidadoEnviar->setLabel($this->getView()->tradutor('FORM_BUTTON_SUBMIT'));
        $this->BasicoCadastrarUsuarioNaoValidadoEnviar->setOrder(4);
        $this->BasicoCadastrarUsuarioNaoValidadoEnviar->setRequired(false);

    }

    /**
    * Adiciona diplayGroups ao Formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 01/11/2012 15:09:20
    */
    private function adicionaDisplayGroups()
    {
    }
}
?>