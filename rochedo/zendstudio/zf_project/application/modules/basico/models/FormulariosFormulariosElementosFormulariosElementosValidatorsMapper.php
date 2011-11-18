<?php
/**
 * FormulariosFormulariosElementosFormulariosElementosValidators data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormulariosFormulariosElementosFormulariosElementosValidators
 * @subpackage Model
 */
class Basico_Model_FormulariosFormulariosElementosFormulariosElementosValidatorsMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_FormulariosFormulariosElementosFormulariosElementosValidatorsMapper
     */
    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception(MSG_ERRO_TABLE_DATA_GATEWAY_INVALIDO);
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormulariosFormulariosElementosFormulariosElementosValidators if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_FormulariosFormulariosElementosFormulariosElementosValidators');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a LearningBasket entry
     * 
     * @param  Basico_Model_FormulariosFormulariosElementosFormulariosElementosValidators $object
     * @return void
     */
    public function save(Basico_Model_FormulariosFormulariosElementosFormulariosElementosValidators $object)
    {
        $data = array(
                'id_formularios_formularios_elementos' => $object->getFormulariosFormulariosElementos(),
                'id_formulario_elemento_filter'        => $object->getFormularioElementoFilter(),
                'option'        => $object->getOption(), 
        		'datahora_criacao'                     => $object->getDataHoraCriacao(),
        		'datahora_ultima_atualizacao'          => $object->getDataHoraUltimaAtualizacao(),
        		'rowinfo'                              => $object->getRowinfo(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
    /**
    * Delete a FormulariosFormulariosElementosFormulariosElementosValidators entry
    * @param Basico_Model_FormulariosFormulariosElementosFormulariosElementosValidators $object
    * @return void
    */
    public function delete(Basico_Model_FormulariosFormulariosElementosFormulariosElementosValidators $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }

    /**
     * Find a LearningBasket entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormulariosFormulariosElementosFormulariosElementosValidators $object 
     * @return void
     */
    public function find($id, Basico_Model_FormulariosFormulariosElementosFormulariosElementosValidators $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setFormulariosFormulariosElementos($row->id_formularios_formularios_elementos)
               ->setFormularioElementoFilter($row->id_formulario_elemento_filter)
               ->setDataHoraCriacao($row->datahora_criacao)
               ->setOption($row->option)
               ->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
               ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all FormulariosFormulariosElementosFormulariosElementosValidators entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormulariosFormulariosElementosFormulariosElementosValidators();
            $entry->setId($row->id)
                ->setFormulariosFormulariosElementos($row->id_formularios_formularios_elementos)
                ->setFormularioElementoFilter($row->id_formulario_elemento_filter)
                ->setDataHoraCriacao($row->datahora_criacao)
                ->setOption($row->option)
                ->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo)
                ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all learningbasket entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormulariosFormulariosElementosFormulariosElementosValidators();
            $entry->setId($row->id)
                  ->setFormulariosFormulariosElementos($row->id_formularios_formularios_elementos)
                  ->setFormularioElementoFilter($row->id_formulario_elemento_filter)
                  ->setDataHoraCriacao($row->datahora_criacao)
                  ->setOption($row->option)
                  ->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
}