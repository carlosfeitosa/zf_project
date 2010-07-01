<?php
/**
 * ArquivoPerfil table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class GC_Model_DbTable_ArquivoPerfil extends Zend_Db_Table_Abstract
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'arquivo_perfil';
    protected $_referenceMap    = array(
        'Arquivo' => array(
            'columns'           => array('arquivo'),
            'refTableClass'     => 'Arquivo',
            'refColumns'        => array('id')
        ),
        'Perfil' => array(
            'columns'           => array('perfil'),
            'refTableClass'     => 'Perfil',
            'refColumns'        => array('id')
        )
    );
    
}
?>