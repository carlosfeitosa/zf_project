<?php
/**
 * FormulariosElementosDecorators data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormulariosElementosDecorators
 * @subpackage Model
 */
class Basico_Model_FormulariosElementosDecoratorsMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_FormulariosElementosDecoratorsMapper
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
     * Lazy loads Basico_Model_DbTable_FormulariosElementosDecorators if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_FormulariosElementosDecorators');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a FormulariosElementosDecorators entry
     * 
     * @param  Basico_Model_FormulariosElementosDecorators $object
     * @return void
     */
    public function save(Basico_Model_FormulariosElementosDecorators $object)
    {
        $data = array(
                'id_decorator'                => $object->getDecorator(),
                'id_formulario_elemento'      => $object->getFormularioElemento(),
        		'datahora_criacao'            => $object->getDataHoraCriacao(),
        		'datahora_ultima_atualizacao' => $object->getDataHoraUltimaAtualizacao(),
        		'rowinfo'                     => $object->getRowinfo(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
    /**
    * Delete a FormulariosElementosDecorators entry
    * @param Basico_Model_FormulariosElementosDecorators $object
    * @return void
    */
    public function delete(Basico_Model_FormulariosElementosDecorators $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }

    /**
     * Find a FormulariosElementosDecorators entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormulariosElementosDecorators $object 
     * @return void
     */
    public function find($id, Basico_Model_FormulariosElementosDecorators $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setDecorator($row->id_decorator)
               ->setFormularioElemento($row->id_formulario_elemento)
               ->setDataHoraCriacao($row->datahora_criacao)
               ->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
               ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all FormulariosElementosDecorators entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormulariosElementosDecorators();
            $entry->setId($row->id)
                ->setDecorator($row->id_decorator)
                ->setFormularioElemento($row->id_formulario_elemento)
                ->setDataHoraCriacao($row->datahora_criacao)
               	->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
               	->setRowinfo($row->rowinfo)
                ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all FormulariosElementosDecorators entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormulariosElementosDecorators();
            $entry->setId($row->id)
                  ->setDecorator($row->id_decorator)
                  ->setFormularioElemento($row->id_formulario_elemento)
                  ->setDataHoraCriacao($row->datahora_criacao)
               	  ->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
}