<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 20/10/2011 10:27:47
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
* @version    1: 20/10/2011 10:21:47
*/
class Basico_Form_CadastrarDadosUsuarioDadosPessoaisEmailsPessoais extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosPessoaisEmailsPessoais
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('BasicoCadastrarDadosUsuarioDadosPessoaisEmailsPessoais');
        $this->setMethod('post');
        $this->addAttribs(array('rascunho' => true));

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('html', 'BasicoCadastrarDadosUsuarioDadosPessoaisEmailsPessoaisLinhaHorizontal', array('value' => '<hr>'));
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(false);
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));
        $elements[1]->removeDecorator('DtDdWrapper');

        $elements[2] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosPessoaisEmailsPessoaisButtonDialogDojo1');
        $elements[2]->setOrder(2);
        $elements[2]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarEmail\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarEmail." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL')}\")"));
        $elements[2]->setRequired(false);
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[2]->removeDecorator('DtDdWrapper');

        $elements[3] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosPessoaisEmailsPessoaisFechar', array('onClick' => 'hideDialog(\"Basico_Form_CadastrarDadosUsuarioDadosPessoaisEmailsPessoais\");'));
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(false);
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right',));
        $elements[3]->removeDecorator('DtDdWrapper');
        $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_CLOSE_DIALOG') . '');

        // Removendo escapes das mensagens de erro dos elementos do formulario.
        Basico_OPController_UtilOPController::removeEscapeMensagensErrosZendFormElements($elements);

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>