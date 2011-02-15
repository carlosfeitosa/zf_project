<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 15/02/2011 20:00:44
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
* @version    1: 15/02/2011 17:22:09
*/
class Basico_Form_CadastrarDadosUsuarioDadosAcademicosCoordenacaoPosGraduacao extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioDadosAcademicosCoordenacaoPosGraduacao
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioDadosAcademicosCoordenacaoPosGraduacao');
        $this->setMethod('post');

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('html', 'BasicoCadastrarDadosUsuarioDadosAcademicosCoordenacaoPosGraduacaoLinhaHorizontal', array('value' => '<hr>'));
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(false);
        $elements[1]->addDecorator(array('row' => 'HtmlTag'), array('tag' => 'div', 'id' => 'width100percent-clear-both'));

        $elements[2] = $this->createElement('button', 'BasicoCadastrarDadosUsuarioDadosAcademicosCoordenacaoPosGraduacaoFechar', array('onClick' => 'hideDialog(\"Basico_Form_CadastrarDadosUsuarioDadosAcademicosCoordenacaoPosGraduacao\");'));
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(false);
        $elements[2]->removeDecorator('DtDdWrapper');
        $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_CLOSE_DIALOG') . '');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>