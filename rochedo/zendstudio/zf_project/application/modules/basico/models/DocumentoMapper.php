<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Documento data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Documento
 * @subpackage Model
 */
class Basico_Model_DocumentoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_DocumentoMapper
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
     * Lazy loads Basico_Model_DbTable_Documento if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Documento');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Documento entry
     * 
     * @param  Basico_Model_Documento $object
     * @return void
     */
    public function save(Basico_Model_Documento $object)
    {
        $data = array(
        		'id_categoria'   		   => $object->getCategoria(),
				'id_generico_proprietario' => $object->getIdGenericoProprietario(),
				'numero'   				   => $object->getNumero(),
				'orgao_emissor'   		   => $object->getOrgaoEmissor(),
				'data_emissao'   		   => $object->getDataEmissao(),
				'descricao'   			   => $object->getDescricao(),
        		'rowinfo' 				   => $object->getRowinfo(),
              

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Documento entry
	* @param Basico_Model_Documento $object
	* @return void
	*/
	public function delete(Basico_Model_Documento $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Documento entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Documento $object 
     * @return void
     */
    public function find($id, Basico_Model_Documento $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
			   ->setCategoria($row->id_categoria)
			   ->setIdGenericoProprietario($row->id_generico_proprietario)
			   ->setNumero($row->numero)
			   ->setOrgaoEmissor($row->orgao_emissor)
			   ->setDataEmissao($row->data_emissao)
			   ->setDescricao($row->descricao)
               ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all documento entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Documento();
			$entry->setId($row->id)
				  ->setCategoria($row->id_categoria)
				  ->setIdGenericoProprietario($row->id_generico_proprietario)
				  ->setNumero($row->numero)
				  ->setOrgaoEmissor($row->orgao_emissor)
				  ->setDataEmissao($row->data_emissao)
				  ->setDescricao($row->descricao)
				  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all documento entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Documento();
			$entry->setId($row->id)
				  ->setCategoria($row->id_categoria)
				  ->setIdGenericoProprietario($row->id_generico_proprietario)
				  ->setNumero($row->numero)
				  ->setOrgaoEmissor($row->orgao_emissor)
				  ->setDataEmissao($row->data_emissao)
				  ->setDescricao($row->descricao)
				  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
