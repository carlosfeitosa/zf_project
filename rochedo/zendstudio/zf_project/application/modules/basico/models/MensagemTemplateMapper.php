<?php
/**
 * MensagemTemplate data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_MensagemTemplate
 * @subpackage Model
 */
class Basico_Model_MensagemTemplateMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_MensagemTemplateMapper
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
     * Lazy loads Basico_Model_DbTable_MensagemTemplate if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_MensagemTemplate');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a MensagemTemplate entry
     * 
     * @param  Basico_Model_MensagemTemplate $object
     * @return void
     */
    public function save(Basico_Model_MensagemTemplate $object)
    {
        $data = array(
				'id_categoria'                => $object->getIdCategoria(),
				'id_generico_proprietario'    => $object->getIdGenericoProprietario(),
				'nome'                   	  => $object->getNome(),
                'constante_textual' 		  => $object->getConstanteTextual(),
                'constante_textual_descricao' => $object->getConstanteTextualDescricao(),
                'ativo'          			  => $object->getAtivo(),
				'constante_textual_assunto'   => $object->getConstanteTextualAssunto(),
        		'constante_textual_mensagem'  => $object->getConstanteTextualMensagem(),
                'datahora_criacao'			  => $object->getDatahoraCriacao(),
        		'datahora_ultima_atualizacao' => $object->getDataHoraUltimaAtualizacao(),
        		'rowinfo'           		  => $object->getRowinfo(),
         
        );
        
        if (null === ($id = $object->getId())) {
        	unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
        	$this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a MensagemTemplate entry
	* @param Basico_Model_MensagemTemplate $object
	* @return void
	*/
	public function delete(Basico_Model_MensagemTemplate $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a MensagemTemplate entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_MensagemTemplate $object 
     * @return void
     */
    public function find($id, Basico_Model_MensagemTemplate $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setIdCategoria($row->id_categoria)
               ->setIdGenericoProprietario($row->id_generico_proprietario)
               ->setNome($row->nome)
               ->setConstanteTextual($row->constante_textual)
               ->setConstanteTextualDescricao($row->constante_textual_descricao)
               ->setAtivo($row->ativo)
               ->setConstanteTextualAssunto($row->constante_textual_assunto)
               ->setConstanteTextualMensagem($row->constante_textual_mensagem)
               ->setDatahoraCriacao($row->datahora_criacao)
               ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
			   ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all MensagemTemplate entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_MensagemTemplate();
			$entry->setId($row->id)
                   ->setIdCategoria($row->id_categoria)
	               ->setIdGenericoProprietario($row->id_generico_proprietario)
	               ->setNome($row->nome)
	               ->setConstanteTextual($row->constante_textual)
	               ->setConstanteTextualDescricao($row->constante_textual_descricao)
	               ->setAtivo($row->ativo)
	               ->setConstanteTextualAssunto($row->constante_textual_assunto)
	               ->setConstanteTextualMensagem($row->constante_textual_mensagem)
	               ->setDatahoraCriacao($row->datahora_criacao)
	               ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				   ->setRowinfo($row->rowinfo)
				   ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all MensagemTemplate entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_MensagemTemplate();
			$entry->setId($row->id)
                   ->setIdCategoria($row->id_categoria)
	               ->setIdGenericoProprietario($row->id_generico_proprietario)
	               ->setNome($row->nome)
	               ->setConstanteTextual($row->constante_textual)
	               ->setConstanteTextualDescricao($row->constante_textual_descricao)
	               ->setAtivo($row->ativo)
	               ->setConstanteTextualAssunto($row->constante_textual_assunto)
	               ->setConstanteTextualMensagem($row->constante_textual_mensagem)
	               ->setDatahoraCriacao($row->datahora_criacao)
	               ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				   ->setRowinfo($row->rowinfo)
				   ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
