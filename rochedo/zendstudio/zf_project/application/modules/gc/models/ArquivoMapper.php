<?php
/**
 * Arquivo data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       GC_Model_DbTable_Arquivo
 * @subpackage Model
 */
class GC_Model_ArquivoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return GC_Model_ArquivoMapper
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
     * Lazy loads GC_Model_DbTable_Arquivo if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('GC_Model_DbTable_Arquivo');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Arquivo entry
     * 
     * @param  GC_Model_Arquivo $object
     * @return void
     */
    public function save(GC_Model_Arquivo $object)
    {
        $data = array(
				'nome'                 => $object->getNome(),
				'descricao'            => $object->getDescricao(),
                'id_categoria'         => $object->getCategoria(),
				'file_original_name'   => $object->getFileOriginalName(),
				'file_size'            => $object->getFileSize(),
				'file_name'            => $object->getFileName(),
                'rowinfo'              => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Arquivo entry
	* @param GC_Model_Arquivo $object
	* @return void
	*/
	public function delete(GC_Model_Arquivo $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Arquivo entry by id
     * 
     * @param  int $id 
     * @param  GC_Model_Arquivo $object 
     * @return void
     */
    public function find($id, GC_Model_Arquivo $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setFileOriginalName($row->file_original_name)
				->setFileSize($row->file_size)
				->setFileName($row->file_name)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all arquivo entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new GC_Model_Arquivo();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setFileOriginalName($row->file_original_name)
				->setFileSize($row->file_size)
				->setFileName($row->file_name)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all arquivo entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new GC_Model_Arquivo();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setFileOriginalName($row->file_original_name)
				->setFileSize($row->file_size)
				->setFileName($row->file_name)
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
            ->from(array('table1' => 'arquivo'),
                   array('id' => 'table1.id',
                        'nome' => 'table1.nome' ,
                        'descricao' => 'table1.descricao' ,
                        'fileOriginalName' => 'table1.file_original_name' ,
                        'fileSize' => 'table1.file_size' ,
                        'fileName' => 'table1.file_name' ,
                        'rowinfo'  => 'table1.rowinfo' ))
            ->joinInner($join[0])
            ->where($where)
            ->order($order)
            ->limit($count, $offset);
        $stmt = $this->getDbTable()->getAdapter()->query($select);
        $resultSet = $stmt->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new GC_Model_Arquivo();
            $entry->setId($row['id'])
                ->setNome($row['nome'])
                ->setDescricao($row['descricao'])
                ->setFileOriginalName($row['file_original_name'])
                ->setFileSize($row['file_size'])
                ->setFileName($row['file_name'])
                ->setRowinfo($row['rowinfo'])
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
            $entry = new GC_Model_Arquivo();
            $entry->setId($row->id)
				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setFileOriginalName($row->file_original_name)
				->setFileSize($row->file_size)
				->setFileName($row->file_name)
				->setRowinfo($row->rowinfo)
                ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }    

}
