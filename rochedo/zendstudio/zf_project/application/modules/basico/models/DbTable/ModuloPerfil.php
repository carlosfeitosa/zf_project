<?php
/**
 * ModuloPerfil table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class Basico_Model_DbTable_ModuloPerfil extends Zend_Db_Table_Abstract
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'modulo_perfil';
    protected $_referenceMap    = array(
        'Modulo' => array(
            'columns'           => array('modulo'),
            'refTableClass'     => 'Modulo',
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