<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 12/11/2010 12:10:29
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
class Basico_Form_CadastrarDadosUsuarioDadosProfissionaisTelefonesComerciais extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosProfissionaisTelefonesComerciais
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioDadosProfissionaisTelefonesComerciais');
        $this->setMethod('post');

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[2] = $this->createElement('html', 'BasicoCadastrarDadosUsuarioDadosProfissionaisTelefonesComerciaisLinhaHorizontal', array('value' => '<hr>'));
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(false);
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[3] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisTelefonesComerciaisButtonDialogDojo1');
        $elements[3]->setOrder(3);
        $elements[3]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_TELEFONE')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarTelefone\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarTelefone." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_BUTTON_ABRIR_DIALOG_NOVO_TELEFONE')}\")"));
        $elements[3]->setRequired(false);
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[3]->removeDecorator('DtDdWrapper');

        $elements[4] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosProfissionaisTelefonesComerciaisFechar', array('onClick' => 'hideDialog("Basico_Form_CadastrarDadosUsuarioDadosProfissionaisTelefonesComerciais");'));
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(false);
        $elements[4]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right',));
        $elements[4]->removeDecorator('DtDdWrapper');
        $elements[4]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_CLOSE_DIALOG') . '');

        $elements[5] = $this->createElement('hidden', 'BasicoCadastrarDadosUsuarioDadosProfissionaisTelefonesComerciaisDummyHidden');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'clear-both',));

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>