<?php

/**
 * PessoaPerfilMensagem table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class Default_Model_DbTable_PessoaPerfilMensagem extends Zend_Db_Table_Abstract
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'pessoaperfilmensagem';
    protected $_referenceMap    = array(
        'a_pessoa_possui_perfil' => array(
            'columns'           => array('pessoaperfil'),
            'refTableClass'     => 'a_pessoa_possui_perfil',
            'refColumns'        => array('id')
        ),
        'Mensagem' => array(
            'columns'           => array('mensagem'),
            'refTableClass'     => 'Mensagem',
            'refColumns'        => array('id')
        )
    );
    
      
    //start block for manually written code
        
    //end block for manually written code

}
?>