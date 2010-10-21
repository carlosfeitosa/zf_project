<?php
/**
 * Mascara data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Mascara
 * @subpackage Model
 */
class Basico_Model_MascaraMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_MascaraMapper
     */
    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception('Invalid table data gateway provided');
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Mascara if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Mascara');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Mascara entry
     * 
     * @param  Basico_Model_Mascara $object
     * @return void
     */
    public function save(Basico_Model_Mascara $object)
    {
        $data = array(
				'nome'   => $object->getNome(),
				'descricao'   => $object->getDescricao(),
				'mascara'   => $object->getMascara(),
                'id_categoria'   => $object->getCategoria(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Mascara entry
	* @param Basico_Model_Mascara $object
	* @return void
	*/
	public function delete(Basico_Model_Mascara $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Mascara entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Mascara $object 
     * @return void
     */
    public function find($id, Basico_Model_Mascara $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setMascara($row->mascara)
                ->setCategoria($row->id_categoria);
    }

	/**
	 * Fetch all mascara entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Mascara();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setMascara($row->mascara)
                ->setCategoria($row->id_categoria)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all mascara entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Mascara();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setMascara($row->mascara)
                ->setCategoria($row->id_categoria)
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
            ->from(array('table1' => 'mascara'),
                   array('id' => 'table1.id',
                        'nome' => 'table1.nome' ,
                        'descricao' => 'table1.descricao' ,
                        'mascara' => 'table1.mascara' ,
                        'id_categoria' => 'table1.id_categoria)'))
            ->joinInner($join[0])
            ->where($where)
            ->order($order)
            ->limit($count, $offset);
        $stmt = $this->getDbTable()->getAdapter()->query($select);
        $resultSet = $stmt->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_Mascara();
            $entry->setId($row['id'])
                ->setNome($row['nome'])
                ->setDescricao($row['descricao'])
                ->setMascara($row['mascara'])
                ->setCategoria($row['id_categoria'])
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
            $entry = new Basico_Model_Mascara();
            $entry->setId($row->id)
				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setMascara($row->mascara)
                ->setCategoria($row->id_categoria)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }    

}
