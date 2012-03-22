<?php
/**
 * AssocclPessoaPerfilAssocDados data mapper
 * 
 * @uses       Basico_Model_DbTable_AssocclPessoaPerfilAssocDados
 * @subpackage Model
 */
class Basico_Model_AssocclPessoaPerfilAssocDadosMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_AssocclPessoaPerfilAssocDadosMapper
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
     * Lazy loads Basico_Model_DbTable_AssocclPessoaPerfilAssocDados if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_AssocclPessoaPerfilAssocDados');
        }
        return $this->_dbTable;
    }

    /**
     * Save a AssocclPessoaPerfilAssocDados entry
     * 
     * @param  Basico_Model_AssocclPessoaPerfilAssocDados $object
     * @return void
     */
    public function save(Basico_Model_AssocclPessoaPerfilAssocDados $object)
    {
        $data = array(
			'id_assoccl_pessoa_perfil'  => $object->getIdAssocclPessoaPerfil(),		
        	'assinatura_mensagem_email' => $object->getAssinaturaMensagemEmail(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }

	/**
	* Delete a AssocclPessoaPerfilAssocDados entry
	* @param Basico_Model_AssocclPessoaPerfilAssocDados $object
	* @return void
	*/
	public function delete(Basico_Model_DadosPessoasPerfis $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a AssocclPessoaPerfilAssocDados entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_AssocclPessoaPerfilAssocDados $object 
     * @return void
     */
    public function find($id, Basico_Model_AssocclPessoaPerfilAssocDados $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
				->setIdAssocclPessoaPerfil($row->id_assoccl_pessoa_perfil)
				->setAssinaturaMensagemEmail($row->assinatura_mensagem_email);
    }

	/**
	 * Fetch all AssocclPessoaPerfilAssocDados entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AssocclPessoaPerfilAssocDados();
			$entry->setId($row->id)
				->setIdAssocclPessoaPerfil($row->id_assoccl_pessoa_perfil)
				->setAssinaturaMensagemEmail($row->assinatura_mensagem_email)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

	/**
	 * Fetch all AssocclPessoaPerfilAssocDados entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AssocclPessoaPerfilAssocDados();
			$entry->setId($row->id)
				->setIdAssocclPessoaPerfil($row->id_assoccl_pessoa_perfil)
				->setAssinaturaMensagemEmail($row->assinatura_mensagem_email)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}