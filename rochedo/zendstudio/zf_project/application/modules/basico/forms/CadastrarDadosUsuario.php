<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 22/03/2011 10:34:06
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
* @version    1: 22/03/2011 09:57:35
*/
class Basico_Form_CadastrarDadosUsuario extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuario
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuario');
        $this->setDecorators(array('FormElements',
                array('TabContainer', array('id' => 'TabContainer', 'style' => 'width: 850px; height: 430px; top: 10px; position: relative; z-index: 3;',
                      'dijitParams' => array('tabPosition' => 'top'),)),));

        // Criando array de elementos.
        $elements = array();

        $elements[0] = $this->createElement('hash', 'BasicoCadastrarDadosUsuarioCsrf', array('ignore' => true, 'salt' => 'unique',));
        $elements[0]->setOrder(0);
        $elements[0]->setRequired(false);
        $elements[0]->removeDecorator('Label');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
        // Incluindo arquivos de sub-formularios no formulario pai.
        require("subForms/CadastrarDadosUsuarioDadosAcademicos.php");
        // Incluindo arquivos de sub-formularios no formulario pai.
        require("subForms/CadastrarDadosUsuarioDadosProfissionais.php");
        // Incluindo arquivos de sub-formularios no formulario pai.
        require("subForms/CadastrarDadosUsuarioDadosBiometricos.php");
        // Incluindo arquivos de sub-formularios no formulario pai.
        require("subForms/CadastrarDadosUsuarioPerfil.php");
        // Incluindo arquivos de sub-formularios no formulario pai.
        require("subForms/CadastrarDadosUsuarioDadosPessoais.php");
        // Incluindo arquivos de sub-formularios no formulario pai.
        require("subForms/CadastrarDadosUsuarioInformacoesBancarias.php");
    }
}
?>