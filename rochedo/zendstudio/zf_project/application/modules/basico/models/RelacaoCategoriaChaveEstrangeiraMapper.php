<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * RelacaoCategoriaChaveEstrangeira data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_RelacaoCategoriaChaveEstrangeira
 * @subpackage Model
 */
class Basico_Model_RelacaoCategoriaChaveEstrangeiraMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_RelacaoCategoriaChaveEstrangeiraMapper
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
     * Lazy loads Basico_Model_DbTable_RelacaoCategoriaChaveEstrangeira if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_RelacaoCategoriaChaveEstrangeira');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a RelacaoCategoriaChaveEstrangeira entry
     * 
     * @param  Basico_Model_RelacaoCategoriaChaveEstrangeira $object
     * @return void
     */
    public function save(Basico_Model_RelacaoCategoriaChaveEstrangeira $object)
    {
        $data = array(
				'tabela_origem'  => $object->getTabelaOrigem(),
				'campo_origem'   => $object->getCampoOrigem(),
        		'rowinfo'        => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a RelacaoCategoriaChaveEstrangeira entry
	* @param Basico_Model_RelacaoCategoriaChaveEstrangeira $object
	* @return void
	*/
	public function delete(Basico_Model_RelacaoCategoriaChaveEstrangeira $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a RelacaoCategoriaChaveEstrangeira entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_RelacaoCategoriaChaveEstrangeira $object 
     * @return void
     */
    public function find($id, Basico_Model_RelacaoCategoriaChaveEstrangeira $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setTabelaOrigem($row->tabela_origem)
				->setCampoOrigem($row->campo_origem)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all relacaocategoriachaveestrangeira entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_RelacaoCategoriaChaveEstrangeira();
			$entry->setId($row->id)

				->setTabelaOrigem($row->tabela_origem)
				->setCampoOrigem($row->campo_origem)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all relacaocategoriachaveestrangeira entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_RelacaoCategoriaChaveEstrangeira();
			$entry->setId($row->id)

				->setTabelaOrigem($row->tabela_origem)
				->setCampoOrigem($row->campo_origem)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
