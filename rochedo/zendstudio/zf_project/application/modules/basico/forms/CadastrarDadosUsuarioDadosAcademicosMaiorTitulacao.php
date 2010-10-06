<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 06/10/2010 15:50:24
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
* @version    1: 06/10/2010 15:49:47
*/
class Basico_Form_CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao');
        $this->setMethod('post');

        // Criando array de elementos.
        $elements = array();

        $elements[0] = $this->createElement('FilteringSelect', 'maiorTitulacao');
        $elements[0]->setRequired(true);
        $elements[0]->addFilters(array('StringTrim', 'StripTags'));
        $elements[0]->AddDecorator('Label', array('escape' => false));
        $elements[0]->setLabel($this->getView()->tradutor('FORM_FIELD_MAIOR_TITULACAO', DEFAULT_USER_LANGUAGE) . '');
        if ($options!=null)
            $elements[0]->setValue($options->maiorTitulacao);

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>