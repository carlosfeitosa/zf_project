<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Login data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Default_Model_DbTable_Login
 * @subpackage Model
 */
class Default_Model_LoginMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Default_Model_LoginMapper
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
     * Lazy loads Default_Model_DbTable_Login if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Default_Model_DbTable_Login');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Login entry
     * 
     * @param  Default_Model_Login $object
     * @return void
     */
    public function save(Default_Model_Login $object)
    {
        $data = array(
				'login'   => $object->getLogin(),
				'senha'   => $object->getSenha(),
				'ativo'   => $object->getAtivo(),
				'tentativasFalhas'   => $object->getTentativasFalhas(),
				'travado'   => $object->getTravado(),
				'resetado'   => $object->getResetado(),
				'dataHoraUltimoLogon'   => $object->getDataHoraUltimoLogon(),
				'observacoes'   => $object->getObservacoes(),
				'podeExpirar'   => $object->getPodeExpirar(),
				'dataHoraProximaExpiracao'   => $object->getDataHoraProximaExpiracao(),
				'dataHoraUltimaExpiracao'   => $object->getDataHoraUltimaExpiracao(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Login entry
	* @param Default_Model_Login $object
	* @return void
	*/
	public function delete(Default_Model_Login $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Login entry by id
     * 
     * @param  int $id 
     * @param  Default_Model_Login $object 
     * @return void
     */
    public function find($id, Default_Model_Login $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setLogin($row->login)
				->setSenha($row->senha)
				->setAtivo($row->ativo)
				->setTentativasFalhas($row->tentativasFalhas)
				->setTravado($row->travado)
				->setResetado($row->resetado)
				->setDataHoraUltimoLogon($row->dataHoraUltimoLogon)
				->setObservacoes($row->observacoes)
				->setPodeExpirar($row->podeExpirar)
				->setDataHoraProximaExpiracao($row->dataHoraProximaExpiracao)
				->setDataHoraUltimaExpiracao($row->dataHoraUltimaExpiracao);
    }

	/**
	 * Fetch all login entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Default_Model_Login();
			$entry->setId($row->id)

				->setLogin($row->login)
				->setSenha($row->senha)
				->setAtivo($row->ativo)
				->setTentativasFalhas($row->tentativasFalhas)
				->setTravado($row->travado)
				->setResetado($row->resetado)
				->setDataHoraUltimoLogon($row->dataHoraUltimoLogon)
				->setObservacoes($row->observacoes)
				->setPodeExpirar($row->podeExpirar)
				->setDataHoraProximaExpiracao($row->dataHoraProximaExpiracao)
				->setDataHoraUltimaExpiracao($row->dataHoraUltimaExpiracao)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all login entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Default_Model_Login();
			$entry->setId($row->id)

				->setLogin($row->login)
				->setSenha($row->senha)
				->setAtivo($row->ativo)
				->setTentativasFalhas($row->tentativasFalhas)
				->setTravado($row->travado)
				->setResetado($row->resetado)
				->setDataHoraUltimoLogon($row->dataHoraUltimoLogon)
				->setObservacoes($row->observacoes)
				->setPodeExpirar($row->podeExpirar)
				->setDataHoraProximaExpiracao($row->dataHoraProximaExpiracao)
				->setDataHoraUltimaExpiracao($row->dataHoraUltimaExpiracao)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}


//#BlockStart number=14 id=_nhohcKoDEd687LtTWUTtuQ_#_0
      
//start block for manually written code
        
//end block for manually written code

//#BlockEnd number=14

}
