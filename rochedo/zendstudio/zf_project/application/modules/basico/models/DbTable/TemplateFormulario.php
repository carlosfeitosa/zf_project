<?php

/**
 * TemplateFormulario table data gateway
 *
 * @uses       Zend_Db_Table_Abstract
 * @subpackage Model
 */
class Basico_Model_DbTable_TemplateFormulario extends Zend_Db_Table_Abstract
{
    /**
     * @var string Name of the database table
     */
    protected $_name = 'template_formulario';
    protected $_referenceMap    = array(
        'Template' => array(
            'columns'           => array('template'),
            'refTableClass'     => 'Template',
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