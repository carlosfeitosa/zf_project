<?php
/**
 * Mensagem data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Mensagem
 * @subpackage Model
 */
class Basico_Model_MensagemMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_MensagemMapper
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
     * Lazy loads Basico_Model_DbTable_Mensagem if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Mensagem');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Mensagem entry
     * 
     * @param  Basico_Model_Mensagem $object
     * @return void
     */
    public function save(Basico_Model_Mensagem $object)
    {
        $data = array(
        		'id_categoria'      			=> $object->getIdCategoria(),
        		'id_generico_proprietario'		=> $object->getIdGenericoProprietario(),
				'remetente'        				=> $object->getRemetente(),
				'destinatarios'     			=> $object->getDestinatariosString(),
				'assunto'           			=> $object->getAssunto(),
        		'mensagem'          			=> $object->getMensagem(),
                'datahora_envio'    			=> $object->getDatahoraEnvio(),
        		'datahora_criacao'	 			=> $object->getDatahoraCriacao(),
        		'datahora_ultima_atualizacao'	=> $object->getDatahoraUltimaAtualizacao(),
                'rowinfo'           			=> $object->getRowinfo(),
         
        );
        
        if (null === ($id = $object->getId())) {
        	unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
        	$this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Mensagem entry
	* @param Basico_Model_Mensagem $object
	* @return void
	*/
	public function delete(Basico_Model_Mensagem $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Mensagem entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Mensagem $object 
     * @return void
     */
    public function find($id, Basico_Model_Mensagem $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
        		->setIdCategoria($row->id_categoria)
        		->setIdGenericoProprietario($row->id_generico_proprietario)
        		->setRemetente($row->remetente)
				->setDestinatarios($row->destinatarios)
				->setAssunto($row->assunto)
				->setMensagem($row->mensagem)
				->setDatahoraEnvio($row->datahora_envio)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)	   
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all mensagem entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Mensagem();
			$entry->setId($row->id)
        		->setIdCategoria($row->id_categoria)
        		->setIdGenericoProprietario($row->id_generico_proprietario)
        		->setRemetente($row->remetente)
				->setDestinatarios($row->destinatarios)
				->setAssunto($row->assunto)
				->setMensagem($row->mensagem)
				->setDatahoraEnvio($row->datahora_envio)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)	   
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all mensagem entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Mensagem();
			$entry->setId($row->id)
        		->setIdCategoria($row->id_categoria)
        		->setIdGenericoProprietario($row->id_generico_proprietario)
        		->setRemetente($row->remetente)
				->setDestinatarios($row->destinatarios)
				->setAssunto($row->assunto)
				->setMensagem($row->mensagem)
				->setDatahoraEnvio($row->datahora_envio)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)	   
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}