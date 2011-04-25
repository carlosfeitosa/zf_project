<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 25/04/2011 13:34:25
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
class Basico_Form_DocumentosIdentificacao extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_DocumentosIdentificacao
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('DocumentosIdentificacao');
        $this->setMethod('post');
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('DocumentosIdentificacao', id_decorator, '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('html', 'BasicoDocumentosIdentificacaoLinhaHorizontal', array('value' => '<hr>'));
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(false);
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[2] = $this->createElement('button', 'BasicoDocumentosIdentificacaoButtonDialogDojo1');
        $elements[2]->setOrder(2);
        $elements[2]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_DOCUMENTO_TITULO')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDocumento\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDocumento." . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_DOCUMENTO_TITULO')}\")"));
        $elements[2]->setRequired(false);
        $elements[2]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right-clear-both',));
        $elements[2]->removeDecorator('DtDdWrapper');

        $elements[3] = $this->createElement('button', 'BasicoDocumentosIdentificacaoFechar', array('onClick' => 'hideDialog("Basico_Form_DocumentosIdentificacao");'));
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(false);
        $elements[3]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'float-right',));
        $elements[3]->removeDecorator('DtDdWrapper');
        $elements[3]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_CLOSE_DIALOG') . '');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>