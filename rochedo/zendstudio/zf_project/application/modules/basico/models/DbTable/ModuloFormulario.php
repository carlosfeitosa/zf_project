<?php
/**
 * ModuloFormulario table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class Basico_Model_DbTable_ModuloFormulario extends Zend_Db_Table_Abstract
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'basico_formulario.assoccl_modulo';
    protected $_referenceMap    = array(
        'Modulo' => array(
            'columns'           => array('modulo'),
            'refTableClass'     => 'Modulo',
            'refColumns'        => array('id')
        ),
        'Formulario' => array(
            'columns'           => array('formulario'),
            'refTableClass'     => 'Formulario',
            'refColumns'        => array('id')
        )
    );
    
}
?>