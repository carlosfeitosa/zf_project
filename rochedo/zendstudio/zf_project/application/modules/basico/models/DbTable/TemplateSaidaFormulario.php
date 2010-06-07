<?php

/**
 * TemplateSaidaFormulario table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class Basico_Model_DbTable_TemplateSaidaFormulario extends Zend_Db_Table_Abstract
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'template_saida_formulario';
    protected $_referenceMap    = array(
        'FormularioTemplate' => array(
            'columns'           => array('template_saida'),
            'refTableClass'     => 'FormularioTemplate',
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