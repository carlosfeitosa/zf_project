<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 20/10/2011 10:27:57
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
* @version    1: 20/10/2011 10:21:47
*/
class Basico_Form_CadastrarDocumento extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDocumento
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('BasicoCadastrarDocumento');
        $this->setMethod('post');
        $this->addAttribs(array('onSubmit'=>"return(validateForm('CadastrarDocumento', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
        $this->addAttribs(array('rascunho' => true));

        // Criando array de elementos.
        $elements = array();

        $elements[2] = $this->createElement('ValidationTextBox', 'BasicoCadastrarDocumentoNumeroDocumento');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(false);
        $elements[2]->addFilters(array('StringTrim', 'StripTags'));
        $elements[2]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_FIELD_NUMERO_DOCUMENTO') . '');

        $elements[5] = $this->createElement('submitButton', 'BasicoCadastrarDocumentoEnviar');
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->removeDecorator('DtDdWrapper');
        $elements[5]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SUBMIT') . '');

        $elements[6] = $this->createElement('button', 'BasicoCadastrarDocumentoResetar', array('type' => 'reset', 'onClick' => 'hideDialog(\"Basico_Form_CadastrarDocumento\", \"/rochedo_project/public\");'));
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(false);
        $elements[6]->removeDecorator('DtDdWrapper');
        $elements[6]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_RESET') . '');

        // Removendo escapes das mensagens de erro dos elementos do formulario.
        Basico_OPController_UtilOPController::removeEscapeMensagensErrosZendFormElements($elements);

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>