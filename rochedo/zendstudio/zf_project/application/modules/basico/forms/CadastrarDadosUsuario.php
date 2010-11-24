<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 23/11/2010 23:29:27
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
* @version    1: 23/11/2010 23:28:43
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

        // Incluindo arquivos de sub-formularios no formulario pai.
        require("subForms/CadastrarDadosUsuarioDadosAcademicos.php");
        // Incluindo arquivos de sub-formularios no formulario pai.
        require("subForms/CadastrarDadosUsuarioDadosProfissionais.php");
        // Incluindo arquivos de sub-formularios no formulario pai.
        require("subForms/CadastrarDadosUsuarioPerfil.php");
    }
}
?>