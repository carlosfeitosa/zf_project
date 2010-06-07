<?php

/**
 * FormularioFormularioElemento table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class Basico_Model_DbTable_FormularioFormularioElemento extends Zend_Db_Table_Abstract
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'formulario_formulario_elemento';
    protected $_referenceMap    = array(
        'Formulario' => array(
            'columns'           => array('formulario'),
            'refTableClass'     => 'Formulario',
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