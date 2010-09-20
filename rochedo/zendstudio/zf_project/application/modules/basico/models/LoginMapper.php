<?php
/**
 * Login data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Login
 * @subpackage Model
 */
class Basico_Model_LoginMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_LoginMapper
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
     * Lazy loads Basico_Model_DbTable_Login if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Login');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Login entry
     * 
     * @param  Basico_Model_Login $object
     * @return void
     */
    public function save(Basico_Model_Login $object)
    {
        $data = array(
                      'id_pessoa'                  => $object->getPessoa(),
    				  'login'                      => $object->getLogin(),
    				  'senha'                      => $object->getSenha(),
    				  'ativo'                      => $object->getAtivo(),
    				  'tentativas_falhas'          => $object->getTentativasFalhas(),
    				  'travado'                    => $object->getTravado(),
    				  'resetado'  				   => $object->getResetado(),
    				  'datahora_ultimo_logon'      => $object->getDataHoraUltimoLogon(),
    				  'observacoes'   			   => $object->getObservacoes(),
    				  'pode_expirar'  			   => $object->getPodeExpirar(),
    				  'datahora_proxima_expiracao' => $object->getDataHoraProximaExpiracao(),
    				  'datahora_ultima_expiracao'  => $object->getDataHoraUltimaExpiracao(),
                      'rowinfo'                    => $object->getRowinfo(),
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
	* @param Basico_Model_Login $object
	* @return void
	*/
	public function delete(Basico_Model_Login $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Login entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Login $object 
     * @return void
     */
    public function find($id, Basico_Model_Login $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setPessoa($row->id_pessoa)
			   ->setLogin($row->login)
			   ->setSenha($row->senha)
			   ->setAtivo($row->ativo)
			   ->setTentativasFalhas($row->tentativas_falhas)
			   ->setTravado($row->travado)
			   ->setResetado($row->resetado)
			   ->setDataHoraUltimoLogon($row->datahora_ultimo_logon)
			   ->setObservacoes($row->observacoes)
			   ->setPodeExpirar($row->pode_expirar)
			   ->setDataHoraProximaExpiracao($row->datahora_proxima_expiracao)
			   ->setDataHoraUltimaExpiracao($row->datahora_ultima_expiracao)
			   ->setRowinfo($row->rowinfo);
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
			$entry = new Basico_Model_Login();
			$entry->setId($row->id)
			      ->setPessoa($row->id_pessoa)
				  ->setLogin($row->login)
				  ->setSenha($row->senha)
				  ->setAtivo($row->ativo)
				  ->setTentativasFalhas($row->tentativas_falhas)
				  ->setTravado($row->travado)
				  ->setResetado($row->resetado)
				  ->setDataHoraUltimoLogon($row->datahora_ultimo_logon)
				  ->setObservacoes($row->observacoes)
				  ->setPodeExpirar($row->pode_expirar)
				  ->setDataHoraProximaExpiracao($row->datahora_proxima_expiracao)
				  ->setDataHoraUltimaExpiracao($row->datahora_ultima_expiracao)
				  ->setRowinfo($row->rowinfo)
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
			$entry = new Basico_Model_Login();
			$entry->setId($row->id)
			      ->setPessoa($row->id_pessoa)
				  ->setLogin($row->login)
				  ->setSenha($row->senha)
				  ->setAtivo($row->ativo)
				  ->setTentativasFalhas($row->tentativas_falhas)
				  ->setTravado($row->travado)
				  ->setResetado($row->resetado)
				  ->setDataHoraUltimoLogon($row->datahora_ultimo_logon)
				  ->setObservacoes($row->observacoes)
				  ->setPodeExpirar($row->pode_expirar)
				  ->setDataHoraProximaExpiracao($row->datahora_proxima_expiracao)
				  ->setDataHoraUltimaExpiracao($row->datahora_ultima_expiracao)
				  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}