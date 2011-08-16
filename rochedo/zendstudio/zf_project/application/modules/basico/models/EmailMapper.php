<?php
/**
 * Email data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Email
 * @subpackage Model
 */
class Basico_Model_EmailMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_EmailMapper
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
     * Lazy loads Basico_Model_DbTable_Email if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Email');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Email entry
     * 
     * @param  Basico_Model_Email $object
     * @return void
     */
    public function save(Basico_Model_Email $object)
    {   
        $data = array(
                      'id_generico_proprietario'    => $object->getIdGenericoProprietario(),
                      'id_categoria'                => $object->getCategoria(),
    			 	  'unique_id'                   => $object->getUniqueId(),
    				  'email'                       => $object->getEmail(),
    				  'validado'                    => $object->getValidado(),
    				  'datahora_ultima_validacao'   => $object->getDataHoraUltimaValidacao(),
    				  'ativo'                       => $object->getAtivo(),
        			  'datahora_cadastro'			=> $object->getDataHoraCadastro(),
        			  'datahora_ultima_atualizacao' => $object->getDataHoraUltimaAtualizacao(),
        			  'rowinfo'				        => $object->getRowinfo(),
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
	* @param Basico_Model_Email $object
	* @return void
	*/
	public function delete(Basico_Model_Email $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Email entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Email $object 
     * @return void
     */
    public function find($id, Basico_Model_Email $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
                ->setIdGenericoProprietario($row->id_generico_proprietario)
                ->setCategoria($row->id_categoria)
				->setUniqueId($row->unique_id)
				->setEmail($row->email)
				->setValidado($row->validado)
				->setDataHoraUltimaValidacao($row->datahora_ultima_validacao)
				->setDataHoraCadastro($row->datahora_cadastro)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setAtivo($row->ativo)
                ->setRowinfo($row->rowinfo);
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
			$entry = new Basico_Model_Email();
			$entry->setId($row->id)
                ->setIdGenericoProprietario($row->id_generico_proprietario)
                ->setCategoria($row->id_categoria)
				->setUniqueId($row->unique_id)
				->setEmail($row->email)
				->setValidado($row->validado)
				->setDataHoraUltimaValidacao($row->datahora_ultima_validacao)
				->setDataHoraCadastro($row->datahora_cadastro)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setAtivo($row->ativo)
                ->setRowinfo($row->rowinfo)
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
			$entry = new Basico_Model_Email();
			$entry->setId($row->id)
                ->setIdGenericoProprietario($row->id_generico_proprietario)
                ->setCategoria($row->id_categoria)
				->setUniqueId($row->unique_id)
				->setEmail($row->email)
				->setValidado($row->validado)
				->setDataHoraUltimaValidacao($row->datahora_ultima_validacao)
				->setDataHoraCadastro($row->datahora_cadastro)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setAtivo($row->ativo)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
