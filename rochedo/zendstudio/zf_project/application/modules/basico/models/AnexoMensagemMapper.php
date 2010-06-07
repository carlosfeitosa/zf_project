<?php
/**
 * AnexoMensagem data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_AnexoMensagem
 * @subpackage Model
 */
class Basico_Model_AnexoMensagemMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_AnexoMensagemMapper
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
     * Lazy loads Basico_Model_DbTable_AnexoMensagem if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_AnexoMensagem');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a AnexoMensagem entry
     * 
     * @param  Basico_Model_AnexoMensagem $object
     * @return void
     */
    public function save(Basico_Model_AnexoMensagem $object)
    {
        $data = array(
				'nome_original'   => $object->getNomeOriginal(),
				'nome_sugestao'   => $object->getNomeSugestao(),
				'descricao'   => $object->getDescricao(),
				'arquivo'   => $object->getArquivo(),
				'mime_type'   => $object->getMimeType(),
              'id_mensagem'   => $object->getMensagem(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a AnexoMensagem entry
	* @param Basico_Model_AnexoMensagem $object
	* @return void
	*/
	public function delete(Basico_Model_AnexoMensagem $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a AnexoMensagem entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_AnexoMensagem $object 
     * @return void
     */
    public function find($id, Basico_Model_AnexoMensagem $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNomeOriginal($row->nome_original)
				->setNomeSugestao($row->nome_sugestao)
				->setDescricao($row->descricao)
				->setArquivo($row->arquivo)
				->setMimeType($row->mime_type)
                ->setMensagem($row->id_mensagem);
    }

	/**
	 * Fetch all anexomensagem entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AnexoMensagem();
			$entry->setId($row->id)

				->setNomeOriginal($row->nome_original)
				->setNomeSugestao($row->nome_sugestao)
				->setDescricao($row->descricao)
				->setArquivo($row->arquivo)
				->setMimeType($row->mime_type)
                ->setMensagem($row->id_mensagem)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all anexomensagem entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AnexoMensagem();
			$entry->setId($row->id)

				->setNomeOriginal($row->nome-original)
				->setNomeSugestao($row->nome_sugestao)
				->setDescricao($row->descricao)
				->setArquivo($row->arquivo)
				->setMimeType($row->mime_type)
                ->setMensagem($row->id_mensagem)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

}
