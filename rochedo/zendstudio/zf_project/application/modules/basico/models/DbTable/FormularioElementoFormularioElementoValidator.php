<?php
/**
 * FormularioElementoFormularioElementoValidator table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class Basico_Model_DbTable_FormularioElementoFormularioElementoValidator extends Zend_Db_Table_Abstract
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'formulario_elemento_formulario_elemento_validator';
    protected $_referenceMap    = array(
        'FormularioElementoValidator' => array(
            'columns'           => array('formulario_elemento_validator'),
            'refTableClass'     => 'FormularioElementoValidator',
            'refColumns'        => array('id')
        ),
        'FormularioElemento' => array(
            'columns'           => array('formulario_elemento'),
            'refTableClass'     => 'FormularioElemento',
            'refColumns'        => array('id')
        )
    );

}
?>