<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 23/11/2010 23:29:28
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
    $basicoCadastrarDadosUsuarioPerfilSubForm = new Zend_Dojo_Form_SubForm();

    // Inicializando o sub-formulário.
    $basicoCadastrarDadosUsuarioPerfilSubForm->setName('CadastrarDadosUsuarioPerfil');
    $basicoCadastrarDadosUsuarioPerfilSubForm->setMethod('post');
    $basicoCadastrarDadosUsuarioPerfilSubForm->addAttribs(array('dijitParams' => array('title' => $this->getView()->tradutor('SUBFORM_TABTITLE_PERFIL'))));
    $basicoCadastrarDadosUsuarioPerfilSubForm->setOrder(7);

    $this->addSubForm($basicoCadastrarDadosUsuarioPerfilSubForm, 'CadastrarDadosUsuarioPerfil');
?>