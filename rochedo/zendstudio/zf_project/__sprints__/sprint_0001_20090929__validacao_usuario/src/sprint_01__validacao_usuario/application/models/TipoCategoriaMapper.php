<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * TipoCategoria data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Default_Model_DbTable_TipoCategoria
 * @subpackage Model
 */
class Default_Model_TipoCategoriaMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Default_Model_TipoCategoriaMapper
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
     * Lazy loads Default_Model_DbTable_TipoCategoria if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Default_Model_DbTable_TipoCategoria');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a TipoCategoria entry
     * 
     * @param  Default_Model_TipoCategoria $object
     * @return void
     */
    public function save(Default_Model_TipoCategoria $object)
    {
        $data = array(
				'nome'   => $object->getNome(),
				'descricao'   => $object->getDescricao(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a TipoCategoria entry
	* @param Default_Model_TipoCategoria $object
	* @return void
	*/
	public function delete(Default_Model_TipoCategoria $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a TipoCategoria entry by id
     * 
     * @param  int $id 
     * @param  Default_Model_TipoCategoria $object 
     * @return void
     */
    public function find($id, Default_Model_TipoCategoria $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao);
    }

	/**
	 * Fetch all tipocategoria entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Default_Model_TipoCategoria();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all tipocategoria entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Default_Model_TipoCategoria();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}


//#BlockStart number=80 id=_Cx0PkKw9Ed68D_d-n4iFew_#_0
      
//start block for manually written code
        
//end block for manually written code

//#BlockEnd number=80

}
