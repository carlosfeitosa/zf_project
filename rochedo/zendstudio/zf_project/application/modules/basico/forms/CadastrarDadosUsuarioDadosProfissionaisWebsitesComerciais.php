<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 16/11/2010 23:18:12
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
* @version    1: 16/11/2010 23:17:52
*/
class Basico_Form_CadastrarDadosUsuarioDadosProfissionaisWebsitesComerciais extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosProfissionaisWebsitesComerciais
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioDadosProfissionaisWebsitesComerciais');
        $this->setMethod('post');

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('html', 'BasicoCadastrarDadosUsuarioDadosProfissionaisWebsitesComerciaisLinhaHorizontal', array('value' => '<hr>'));
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(false);
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[2] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisWebsitesComerciaisFechar', array('onClick' => 'hideDialog("Basico_Form_CadastrarDadosUsuarioDadosProfissionaisWebsitesComerciais");'));
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(false);
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[2]->removeDecorator('DtDdWrapper');
        $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_CLOSE_DIALOG') . '');

        $elements[3] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisWebsitesComerciaisButtonDialogDojo1');
        $elements[3]->setOrder(3);
        $elements[3]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_WEBSITE')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarWebsite\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarWebsite." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_WEBSITE')}\")"));
        $elements[3]->setRequired(false);
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right',));
        $elements[3]->removeDecorator('DtDdWrapper');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>