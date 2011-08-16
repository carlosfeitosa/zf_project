<?php
/**
 * Token data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Token
 * @subpackage Model
 */
class Basico_Model_TokenMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_TokenMapper
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
     * Lazy loads Basico_Model_DbTable_Token if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Token');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Token entry
     * 
     * @param  Basico_Model_Token $object
     * @return void
     */
    public function save(Basico_Model_Token $object)
    {
        $data = array(
				'token'              => $object->getToken(),
				'id_generico'        => $object->getIdGenerico(),
                'id_categoria'       => $object->getCategoria(),
        		'datahora_expiracao' => $object->getDatahoraExpiracao(),
                'rowinfo'            => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Token entry
	* @param Basico_Model_Token $object
	* @return void
	*/
	public function delete(Basico_Model_Token $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Token entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Token $object 
     * @return void
     */
    public function find($id, Basico_Model_Token $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
    			->setToken($row->token)
				->setDatahoraExpiracao($row->datahora_expiracao)
				->setIdGenerico($row->id_generico)
                ->setCategoria($row->id_categoria)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all token entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Token();
			$entry->setId($row->id)
				->setToken($row->token)
				->setDatahoraExpiracao($row->datahora_expiracao)
				->setIdGenerico($row->id_generico)
                ->setCategoria($row->id_categoria)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all token entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Token();
			$entry->setId($row->id)
				->setToken($row->token)
				->setDatahoraExpiracao($row->datahora_expiracao)
				->setIdGenerico($row->id_generico)
                ->setCategoria($row->id_categoria)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

}
