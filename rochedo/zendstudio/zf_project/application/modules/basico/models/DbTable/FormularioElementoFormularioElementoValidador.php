<?php

/**
 * FormularioElementoFormularioElementoValidador table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class Basico_Model_DbTable_FormularioElementoFormularioElementoValidador extends Zend_Db_Table_Abstract
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'formulario_elemento_formulario_elemento_validador';
    protected $_referenceMap    = array(
        'FormularioElementoValidador' => array(
            'columns'           => array('formulario_elemento_validador'),
            'refTableClass'     => 'FormularioElementoValidador',
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