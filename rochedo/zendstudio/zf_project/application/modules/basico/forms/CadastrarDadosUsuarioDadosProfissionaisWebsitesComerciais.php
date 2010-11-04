<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 03/11/2010 21:01:51
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
* @version    1: 03/11/2010 20:53:21
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

        // Criando array de elementos.
        $elements = array();

        $elements[0] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisWebsitesComerciaisButtonDialogDojo1');
        $elements[0]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_WEBSITE')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarWebsite\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarWebsite." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_WEBSITE')}\")"));
        $elements[0]->setRequired(false);
        $elements[0]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>