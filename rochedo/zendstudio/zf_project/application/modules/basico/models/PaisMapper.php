<?php
/**
 * Pais data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Pais
 * @subpackage Model
 */
class Basico_Model_PaisMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_PaisMapper
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
     * Lazy loads Basico_Model_DbTable_Pais if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Pais');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Pais entry
     * 
     * @param  Basico_Model_Pais $object
     * @return void
     */
    public function save(Basico_Model_Pais $object)
    {
        $data = array(
				'constante_textual_nome'   => $object->getConstanteTextualNome(),
				'sigla'   => $object->getSigla(),
				'codigo_ddi'   => $object->getCodigoDDI(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Pais entry
	* @param Basico_Model_Pais $object
	* @return void
	*/
	public function delete(Basico_Model_Pais $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Pais entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Pais $object 
     * @return void
     */
    public function find($id, Basico_Model_Pais $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
				->setConstanteTextualNome($row->constante_textual_nome)
				->setSigla($row->sigla)
				->setCodigoDDI($row->codigo_ddi);
    }

	/**
	 * Fetch all pais entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Pais();
			$entry->setId($row->id)
				->setConstanteTextualNome($row->constante_textual_nome)
				->setSigla($row->sigla)
				->setCodigoDDI($row->codigo_ddi)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all pais entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Pais();
			$entry->setId($row->id)
				->setConstanteTextualNome($row->constante_textual_nome)
				->setSigla($row->sigla)
				->setCodigoDDI($row->codigo_ddi)
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
            ->from(array('table1' => 'pais'),
                   array('id' => 'table1.id',
                        'constante_textual_nome' => 'table1.constante_textual_nome' ,
                        'sigla' => 'table1.sigla' ,
                        'codigo_ddi' => 'table1.codigo_ddi'))
            ->joinInner($join[0])
            ->where($where)
            ->order($order)
            ->limit($count, $offset);
        $stmt = $this->getDbTable()->getAdapter()->query($select);
        $resultSet = $stmt->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_Pais();
            $entry->setId($row['id'])
                ->setConstanteTextualNome($row['constante_textual_nome'])
                ->setSigla($row['sigla'])
                ->setCodigoDDI($row['codigo_ddi'])
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
            $entry = new Basico_Model_Pais();
            $entry->setId($row->id)
				->setConstanteTextualNome($row->constante_textual_nome)
				->setSigla($row->sigla)
				->setCodigoDDI($row->codigo_ddi)
                ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }    

}
