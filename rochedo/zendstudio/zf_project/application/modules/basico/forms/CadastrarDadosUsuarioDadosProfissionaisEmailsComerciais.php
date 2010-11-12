<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 12/11/2010 12:10:35
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
* @version    1: 11/11/2010 14:27:45
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

        $elements[2] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisEmailsComerciaisButtonDialogDojo1');
        $elements[2]->setOrder(2);
        $elements[2]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarEmail\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarEmail." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL')}\")"));
        $elements[2]->setRequired(false);
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-left-clear-both',));
        $elements[2]->removeDecorator('DtDdWrapper');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>