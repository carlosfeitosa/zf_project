<?php
/**
* Classe Basico_Form_SugestaoLogin
* Formulário SugestaoLogin
*
* Formulário gerado pelo gerador RF.
* em: 30/10/2012 13:59:11
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
* @since 30/10/2012 13:59:11
*/

/**
* Formulário para sugestão de login
* 
*
* @author SYSTEM
* @since 30/10/2012 13:59:11
*/
class Basico_Form_SugestaoLogin extends Zend_Dojo_Form
{
    /**
    * Construtor do Formulário
    * 
    * @param array $options - array com opções para construção do formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 30/10/2012 13:59:11
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
    * @since 30/10/2012 13:59:11
    */
    private function initForm()
    {
        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Setando o nome do formulário
        $this->setName('BasicoSugestaoLogin');
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
    * @since 30/10/2012 13:59:11
    */
    private function adicionaDecorators()
    {
        $this->addDecorator('AjaxForm');
    }

    /**
    * Adiciona elementos ao Formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 30/10/2012 13:59:11
    */
    private function adicionaElementos()
    {
        // Adicionando elementos do formulário
        $this->addElement('RadioButton', 'BasicoSugestaoLoginSugestaoLogin');
        $this->BasicoSugestaoLoginSugestaoLogin->setLabel('<span title=\'' . $this->getView()->tradutor('REQUIRED_ELEMENT_TEXTO_AJUDA') . '\' class=\'labelRequiredSymbol\'>* </span>' . $this->getView()->tradutor('FORM_FIELD_SUGESTAO_LOGIN'));
        $this->BasicoSugestaoLoginSugestaoLogin->setOptions(array('separator' => '<br>'));
        $this->BasicoSugestaoLoginSugestaoLogin->setOrder(1);
        $this->BasicoSugestaoLoginSugestaoLogin->setRequired(false);
        $this->BasicoSugestaoLoginSugestaoLogin->addDecorator('Label');
        $this->BasicoSugestaoLoginSugestaoLogin->getDecorator('Label')->setOptions(array('escape' => false, 'disableFor' => true));
        $this->BasicoSugestaoLoginSugestaoLogin->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoSugestaoLoginSugestaoLogin->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-left-clear-both'));

        $this->addElement('Html', 'BasicoSugestaoLoginLinhaHorizontal');
        $this->BasicoSugestaoLoginLinhaHorizontal->setOptions(array('value' => '<hr>'));
        $this->BasicoSugestaoLoginLinhaHorizontal->setOrder(2);
        $this->BasicoSugestaoLoginLinhaHorizontal->setRequired(false);
        $this->BasicoSugestaoLoginLinhaHorizontal->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoSugestaoLoginLinhaHorizontal->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $this->addElement('Button', 'BasicoSugestaoLoginEnviar');
        $this->BasicoSugestaoLoginEnviar->setLabel($this->getView()->tradutor('FORM_BUTTON_SUBMIT'));
        $this->BasicoSugestaoLoginEnviar->setOrder(3);
        $this->BasicoSugestaoLoginEnviar->setRequired(false);
        $this->BasicoSugestaoLoginEnviar->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoSugestaoLoginEnviar->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-right-clear-both'));

        $this->addElement('Button', 'BasicoSugestaoLoginFechar');
        $this->BasicoSugestaoLoginFechar->setLabel($this->getView()->tradutor('FORM_BUTTON_CLOSE_DIALOG'));
        $this->BasicoSugestaoLoginFechar->setAttrib("onclick", "hideDialog('BasicoSugestaoLogin')");
        $this->BasicoSugestaoLoginFechar->setOrder(4);
        $this->BasicoSugestaoLoginFechar->setRequired(false);
        $this->BasicoSugestaoLoginFechar->addDecorator(array('row' => 'HtmlTag'));
        $this->BasicoSugestaoLoginFechar->getDecorator('row')->setOptions(array('tag' => 'div', 'id' => 'float-right'));

    }

    /**
    * Adiciona diplayGroups ao Formulário
    *
    * @return void - não espera retorno
    *
    * @author SYSTEM
    * @since 30/10/2012 13:59:12
    */
    private function adicionaDisplayGroups()
    {
    }
}
?>