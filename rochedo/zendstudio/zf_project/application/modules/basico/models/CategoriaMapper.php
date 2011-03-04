<?php
/**
 * Categoria data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Categoria
 * @subpackage Model
 */
class Basico_Model_CategoriaMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_CategoriaMapper
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
     * Lazy loads Basico_Model_DbTable_Categoria if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Categoria');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Categoria entry
     * 
     * @param  Basico_Model_Categoria $object
     * @return void
     */
    public function save(Basico_Model_Categoria $object)
    {
        $data = array(
                      'id_tipo_categoria'   => $object->getTipoCategoria(),
                      'id_categoria_pai'    => $object->getCategoria(),
					  'nivel'  			    => $object->getNivel(),
					  'nome'                => $object->getNome(),
					  'descricao'           => $object->getDescricao(),
					  'ativo'               => $object->getAtivo(),
              		  'rowinfo'             => $object->getRowinfo(),
                     );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Categoria entry
	* @param Basico_Model_Categoria $object
	* @return void
	*/
	public function delete(Basico_Model_Categoria $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Categoria entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Categoria $object 
     * @return void
     */
    public function find($id, Basico_Model_Categoria $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setTipoCategoria($row->id_tipo_categoria)
               ->setCategoria($row->id_categoria_pai)
			   ->setNivel($row->nivel)
			   ->setNome($row->nome)
			   ->setDescricao($row->descricao)
			   ->setAtivo($row->ativo)
               ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all categoria entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Categoria();
			$entry->setId($row->id)
                   ->setTipoCategoria($row->id_tipo_categoria)
                   ->setCategoria($row->id_categoria_pai)
				   ->setNivel($row->nivel)
				   ->setNome($row->nome)
				   ->setDescricao($row->descricao)
				   ->setAtivo($row->ativo)
				   ->setRowinfo($row->rowinfo)
				   ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all categoria entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Categoria();
			$entry->setId($row->id)
                  ->setTipoCategoria($row->id_tipo_categoria)
                  ->setCategoria($row->id_categoria_pai)
				  ->setNivel($row->nivel)
				  ->setNome($row->nome)
				  ->setDescricao($row->descricao)
				  ->setAtivo($row->ativo)
				  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
