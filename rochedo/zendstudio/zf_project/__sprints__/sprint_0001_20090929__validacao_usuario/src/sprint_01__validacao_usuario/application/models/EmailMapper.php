<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Email data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Default_Model_DbTable_Email
 * @subpackage Model
 */
class Default_Model_EmailMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Default_Model_EmailMapper
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
     * Lazy loads Default_Model_DbTable_Email if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Default_Model_DbTable_Email');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Email entry
     * 
     * @param  Default_Model_Email $object
     * @return void
     */
    public function save(Default_Model_Email $object)
    {
        $data = array(
				'uniqueId'   => $object->getUniqueId(),
				'email'   => $object->getEmail(),
				'validado'   => $object->getValidado(),
				'dataHoraUltimaValidacao'   => $object->getDataHoraUltimaValidacao(),
				'ativo'   => $object->getAtivo(),
              'pessoa'   => $object->getPessoa(),
              'categoria'   => $object->getCategoria(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Email entry
	* @param Default_Model_Email $object
	* @return void
	*/
	public function delete(Default_Model_Email $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Email entry by id
     * 
     * @param  int $id 
     * @param  Default_Model_Email $object 
     * @return void
     */
    public function find($id, Default_Model_Email $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setUniqueId($row->uniqueId)
				->setEmail($row->email)
				->setValidado($row->validado)
				->setDataHoraUltimaValidacao($row->dataHoraUltimaValidacao)
				->setAtivo($row->ativo)
                ->setPessoa($row->pessoa)
                ->setCategoria($row->categoria);
    }

	/**
	 * Fetch all email entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Default_Model_Email();
			$entry->setId($row->id)

				->setUniqueId($row->uniqueId)
				->setEmail($row->email)
				->setValidado($row->validado)
				->setDataHoraUltimaValidacao($row->dataHoraUltimaValidacao)
				->setAtivo($row->ativo)
                ->setPessoa($row->pessoa)
                ->setCategoria($row->categoria)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all email entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Default_Model_Email();
			$entry->setId($row->id)

				->setUniqueId($row->uniqueId)
				->setEmail($row->email)
				->setValidado($row->validado)
				->setDataHoraUltimaValidacao($row->dataHoraUltimaValidacao)
				->setAtivo($row->ativo)
                ->setPessoa($row->pessoa)
                ->setCategoria($row->categoria)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}


//#BlockStart number=23 id=_oQ1w0KoDEd687LtTWUTtuQ_#_0
      
//start block for manually written code
        
//end block for manually written code

//#BlockEnd number=23

}
