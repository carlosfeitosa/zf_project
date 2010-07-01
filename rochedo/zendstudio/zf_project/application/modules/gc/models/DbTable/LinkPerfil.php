<?php
/**
 * LinkPerfil table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class GC_Model_DbTable_LinkPerfil extends Zend_Db_Table_Abstract
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'link_perfil';
    protected $_referenceMap    = array(
        'Link' => array(
            'columns'           => array('link'),
            'refTableClass'     => 'Link',
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