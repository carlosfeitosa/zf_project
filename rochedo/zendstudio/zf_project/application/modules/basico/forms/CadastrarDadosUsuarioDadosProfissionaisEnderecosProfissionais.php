<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 06/10/2011 10:25:01
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
* @version    1: 05/10/2011 11:05:13
*/
class Basico_Form_CadastrarDadosUsuarioDadosProfissionaisEnderecosProfissionais extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosProfissionaisEnderecosProfissionais
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('BasicoCadastrarDadosUsuarioDadosProfissionaisEnderecosProfissionais');
        $this->setMethod('post');

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[2] = $this->createElement('html', 'BasicoCadastrarDadosUsuarioDadosProfissionaisEnderecosProfissionaisLinhaHorizontal', array('value' => '<hr>'));
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(false);
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));
        $elements[2]->removeDecorator('DtDdWrapper');

        $elements[3] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisEnderecosProfissionaisFechar', array('onClick' => 'hideDialog("Basico_Form_CadastrarDadosUsuarioDadosProfissionaisEnderecosProfissionais");'));
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(false);
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[3]->removeDecorator('DtDdWrapper');
        $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_CLOSE_DIALOG') . '');

        $elements[4] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisEnderecosProfissionaisButtonDialogDojo1');
        $elements[4]->setOrder(4);
        $elements[4]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_ENDERECO')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarEndereco\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarEndereco." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_ENDERECO')}\")"));
        $elements[4]->setRequired(false);
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right',));
        $elements[4]->removeDecorator('DtDdWrapper');

        // Removendo escapes das mensagens de erro dos elementos do formulario.
        Basico_OPController_UtilOPController::removeEscapeMensagensErrosZendFormElements($elements);

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>