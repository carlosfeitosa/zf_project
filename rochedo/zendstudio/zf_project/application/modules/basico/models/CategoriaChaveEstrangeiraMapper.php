<?php
/**
 * CategoriaChaveEstrangeira data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_CategoriaChaveEstrangeira
 * @subpackage Model
 */
class Basico_Model_CategoriaChaveEstrangeiraMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_CategoriaChaveEstrangeiraMapper
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
     * Lazy loads Basico_Model_DbTable_CategoriaChaveEstrangeira if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_CategoriaChaveEstrangeira');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a CategoriaChaveEstrangeira entry
     * 
     * @param  Basico_Model_CategoriaChaveEstrangeira $object
     * @return void
     */
    public function save(Basico_Model_CategoriaChaveEstrangeira $object)
    {
        $data = array(
                'id_categoria'         => $object->getCategoria(),
                'id_modulo'            => $object->getModulo(),
 				'tabela_estrangeira'   => $object->getTabelaEstrangeira(),
				'campo_estrangeiro'    => $object->getCampoEstrangeiro(),
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
	* Delete a CategoriaChaveEstrangeira entry
	* @param Basico_Model_CategoriaChaveEstrangeira $object
	* @return void
	*/
	public function delete(Basico_Model_CategoriaChaveEstrangeira $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a CategoriaChaveEstrangeira entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_CategoriaChaveEstrangeira $object 
     * @return void
     */
    public function find($id, Basico_Model_CategoriaChaveEstrangeira $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
                ->setCategoria($row->id_categoria)
                ->setModulo($row->id_modulo)
				->setTabelaEstrangeira($row->tabela_estrangeira)
				->setCampoEstrangeiro($row->campo_estrangeiro)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all categoriachaveestrangeira entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_CategoriaChaveEstrangeira();
			$entry->setId($row->id)
                  ->setCategoria($row->id_categoria)
                  ->setModulo($row->id_modulo)
				  ->setTabelaEstrangeira($row->tabela_estrangeira)
				  ->setCampoEstrangeiro($row->campo_estrangeiro)
				  ->setRowinfo($row->rowinfo)
    			  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all categoriachaveestrangeira entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_CategoriaChaveEstrangeira();
			$entry->setId($row->id)
                  ->setCategoria($row->id_categoria)
                  ->setModulo($row->id_modulo)
				  ->setTabelaEstrangeira($row->tabela_estrangeira)
				  ->setCampoEstrangeiro($row->campo_estrangeiro)
				  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

}
