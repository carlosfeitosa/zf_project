<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 06/12/2010 17:02:23
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
* @version    1: 06/12/2010 17:01:43
*/
class Basico_Form_CadastrarDadosUsuarioDadosProfissionais extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosProfissionais
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioDadosProfissionais');
        $this->setMethod('post');

        // Criando array de elementos.
        $elements = array();

        $elements[2] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisButtonDialogDojo1');
        $elements[2]->setOrder(2);
        $elements[2]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL')}\")"));
        $elements[2]->setRequired(false);
        $elements[2]->removeDecorator('DtDdWrapper');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
        // Adicionando sub-formulario ao formulario pai.
    }
}
?>