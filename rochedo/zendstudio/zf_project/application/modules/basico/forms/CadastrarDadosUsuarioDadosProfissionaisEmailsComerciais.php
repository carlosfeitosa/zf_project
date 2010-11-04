<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 03/11/2010 21:01:42
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
class Basico_Form_CadastrarDadosUsuarioDadosProfissionaisEmailsComerciais extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosProfissionaisEmailsComerciais
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioDadosProfissionaisEmailsComerciais');
        $this->setMethod('post');

        // Criando array de elementos.
        $elements = array();

        $elements[0] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisEmailsComerciaisButtonDialogDojo1');
        $elements[0]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarEmail\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarEmail." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL')}\")"));
        $elements[0]->setRequired(false);
        $elements[0]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>