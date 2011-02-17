<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 17/02/2011 13:42:23
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
* @version    1: 17/02/2011 13:21:26
*/
class Basico_Form_CadastrarDadosUsuarioDadosProfissionaisWebsitesProfissionais extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosProfissionaisWebsitesProfissionais
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioDadosProfissionaisWebsitesProfissionais');
        $this->setMethod('post');

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[2] = $this->createElement('html', 'BasicoCadastrarDadosUsuarioDadosProfissionaisWebsitesProfissionaisLinhaHorizontal', array('value' => '<hr>'));
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(false);
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[3] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisWebsitesProfissionaisFechar', array('onClick' => 'hideDialog(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisWebsitesProfissionais\");'));
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(false);
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[3]->removeDecorator('DtDdWrapper');
        $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_CLOSE_DIALOG') . '');

        $elements[4] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisWebsitesProfissionaisButtonDialogDojo1');
        $elements[4]->setOrder(4);
        $elements[4]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_WEBSITE')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarWebsite\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarWebsite." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_WEBSITE')}\")"));
        $elements[4]->setRequired(false);
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right',));
        $elements[4]->removeDecorator('DtDdWrapper');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>