<?php
/**
 * ArtigoPerfil table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class GC_Model_DbTable_ArtigoPerfil extends Zend_Db_Table_Abstract
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'artigo_perfil';
    protected $_referenceMap    = array(
        'Artigo' => array(
            'columns'           => array('artigo'),
            'refTableClass'     => 'Artigo',
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