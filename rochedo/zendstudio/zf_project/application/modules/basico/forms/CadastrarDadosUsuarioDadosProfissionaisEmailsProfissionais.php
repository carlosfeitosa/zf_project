<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 25/04/2011 13:34:13
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
* @version    1: 25/04/2011 13:07:28
*/
class Basico_Form_CadastrarDadosUsuarioDadosProfissionaisEmailsProfissionais extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosProfissionaisEmailsProfissionais
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioDadosProfissionaisEmailsProfissionais');
        $this->setMethod('post');

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[2] = $this->createElement('html', 'BasicoCadastrarDadosUsuarioDadosProfissionaisEmailsProfissionaisLinhaHorizontal', array('value' => '<hr>'));
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(false);
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[3] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisEmailsProfissionaisButtonDialogDojo1');
        $elements[3]->setOrder(3);
        $elements[3]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarEmail\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarEmail." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL')}\")"));
        $elements[3]->setRequired(false);
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[3]->removeDecorator('DtDdWrapper');

        $elements[4] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisEmailsProfissionaisFechar', array('onClick' => 'hideDialog("Basico_Form_CadastrarDadosUsuarioDadosProfissionaisEmailsProfissionais");'));
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(false);
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right',));
        $elements[4]->removeDecorator('DtDdWrapper');
        $elements[4]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_CLOSE_DIALOG') . '');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>