<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 15/12/2010 13:55:11
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
* @version    1: 14/12/2010 13:55:48
*/
class Basico_Form_CadastrarDadosUsuarioInformacoesBancarias extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarDadosUsuarioInformacoesBancarias
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('CadastrarDadosUsuarioInformacoesBancarias');
        $this->setDecorators(array('FormElements',
                array('TabContainer', array('id' => 'TabContainer', 'style' => 'width: 850px; height: 430px; top: 10px; position: relative; z-index: 3;',
                      'dijitParams' => array('tabPosition' => 'top'),)),));

        // Incluindo arquivos de sub-formularios no formulario pai.
        require("/usr/local/zend/apache2/htdocs/rochedo_project/application/modules/basico/forms//CadastrarDadosUsuarioInformacoesBancariasDadosBancarios.php");
    }
}
?>