<?php

/**
 * PessoaPerfil table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class Default_Model_DbTable_PessoaPerfil extends Zend_Db_Table_Abstract
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'pessoaperfil';
    protected $_referenceMap    = array(
        'Pessoa' => array(
            'columns'           => array('pessoa'),
            'refTableClass'     => 'Pessoa',
            'refColumns'        => array('id')
        ),
        'Perfil' => array(
            'columns'           => array('perfil'),
            'refTableClass'     => 'Perfil',
            'refColumns'        => array('id')
        )
    );
    
      
    //start block for manually written code
        
    //end block for manually written code

}
?>