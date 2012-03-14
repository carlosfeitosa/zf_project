<?php
/**
 * Log data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Log
 * @subpackage Model
 */
class Basico_Model_LogMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_LogMapper
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
     * Lazy loads Basico_Model_DbTable_Log if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Log');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Log entry
     * 
     * @param  Basico_Model_Log $object
     * @return void
     */
    public function save(Basico_Model_Log $object)
    {
        $data = array(
        		'id_categoria'      => $object->getIdCategoria(),
        		'id_assoccl_perfil' => $object->getIdAssocclPerfil(),
				'datahora_evento'   => $object->getDatahoraEvento(),
				'xml'               => $object->getXml(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Log entry
	* @param Basico_Model_Log $object
	* @return void
	*/
	public function delete(Basico_Model_Log $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Log entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Log $object 
     * @return void
     */
    public function find($id, Basico_Model_Log $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
        		->setIdCategoria($row->id_categoria)
                ->setIdAssocclPerfil($row->id_assoccl_perfil)
                ->setDatahoraEvento($row->datahora_evento)
                ->setXml($row->xml);
    }

	/**
	 * Fetch all log entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Log();
			$entry->setId($row->id)
        		->setIdCategoria($row->id_categoria)
                ->setIdAssocclPerfil($row->id_assoccl_perfil)
                ->setDatahoraEvento($row->datahora_evento)
                ->setXml($row->xml)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

	/**
	 * Fetch all log entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Log();
			$entry->setId($row->id)
        		->setIdCategoria($row->id_categoria)
                ->setIdAssocclPerfil($row->id_assoccl_perfil)
                ->setDatahoraEvento($row->datahora_evento)
                ->setXml($row->xml)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}