<?php
/**
 * MenuPerfil table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class GC_Model_DbTable_MenuPerfil extends Basico_AbstractDbTable_RochedoDbTable
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'menu_perfil';
    protected $_referenceMap    = array(
        'Menu' => array(
            'columns'           => array('menu'),
            'refTableClass'     => 'Menu',
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