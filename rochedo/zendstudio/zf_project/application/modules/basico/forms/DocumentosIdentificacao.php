<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 12/11/2010 12:11:36
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
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('DocumentosIdentificacao'))"));

        // Criando array de elementos.
        $elements = array();

        $elements[7] = $this->createElement('button', 'BasicoDocumentosIdentificacaoButtonDialogDojo1');
        $elements[7]->setOrder(7);
        $elements[7]->setAttribs(array('label' => "{$this->getView()->tradutor('FORM_DOCUMENTO_TITULO')}", 'onClick' => "exibirDialogUrl(\"Basico_Form_CadastrarDocumento\", \"/rochedo_project/public/public_forms/basico/forms/CadastrarDocumento." . Basico_PessoaControllerController::retornaLinguaUsuario() . ".html\", \"{$this->getView()->tradutor('FORM_DOCUMENTO_TITULO')}\")"));
        $elements[7]->setRequired(false);
        $elements[7]->removeDecorator('DtDdWrapper');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>