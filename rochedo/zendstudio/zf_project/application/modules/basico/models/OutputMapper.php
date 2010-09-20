<?php
/**
 * Output data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Output
 * @subpackage Model
 */
class Basico_Model_OutputMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_OutputMapper
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
     * Lazy loads Basico_Model_DbTable_Output if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Output');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Output entry
     * 
     * @param  Basico_Model_Output $object
     * @return void
     */
    public function save(Basico_Model_Output $object)
    {
        $data = array(
				'nome'        => $object->getNome(),
				'descricao'   => $object->getDescricao(),
                'rowinfo'     => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Output entry
	* @param Basico_Model_Output $object
	* @return void
	*/
	public function delete(Basico_Model_Output $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Output entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Output $object 
     * @return void
     */
    public function find($id, Basico_Model_Output $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all output entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Output();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all output entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Output();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

	/**
    * Fetch all entries but allowing a join
    * @return array
    */
    public function fetchJoinList($join=null, $where=null, $order=null, $count=null, $offset=null)
    {
        $select = $this->getDbTable()->getAdapter()->select()
            ->from(array('table1' => 'output'),
                   array('id' => 'table1.id',
                        'nome' => 'table1.nome' ,
                        'descricao' => 'table1.descricao' ))
            ->joinInner($join[0])
            ->where($where)
            ->order($order)
            ->limit($count, $offset);
        $stmt = $this->getDbTable()->getAdapter()->query($select);
        $resultSet = $stmt->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_Output();
            $entry->setId($row['id'])
                ->setNome($row['nome'])
                ->setDescricao($row['descricao'])
                ->setMapper($this);
            $entries[] = $entry;
            
        }
        return $entries;
    }
    
    
    /**
    * Fetch all entries but allowing a join. This is an alternative method similar to fetchJoinList
    * @return array
    */
    public function fetchJoin($jointable=null, $joinby, $where=null, $order=null)
    {
        $select = $this->getDbTable()->select();
        $select->join($jointable, $joinby, array());
        $select->where($where, array());
        $resultSet = $this->getDbTable()->fetchAll($select);
        $entries   = array();
        foreach ($resultSet as $row)
        {
            $entry = new Basico_Model_Output();
            $entry->setId($row->id)
				->setNome($row->nome)
				->setDescricao($row->descricao)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }    

}