<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * AnexoMensagem data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Default_Model_DbTable_AnexoMensagem
 * @subpackage Model
 */
class Default_Model_AnexoMensagemMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Default_Model_AnexoMensagemMapper
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
     * Lazy loads Default_Model_DbTable_AnexoMensagem if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Default_Model_DbTable_AnexoMensagem');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a AnexoMensagem entry
     * 
     * @param  Default_Model_AnexoMensagem $object
     * @return void
     */
    public function save(Default_Model_AnexoMensagem $object)
    {
        $data = array(
				'nomeOriginal'   => $object->getNomeOriginal(),
				'nomeSugestao'   => $object->getNomeSugestao(),
				'descricao'   => $object->getDescricao(),
				'arquivo'   => $object->getArquivo(),
				'mimeType'   => $object->getMimeType(),
              'mensagem'   => $object->getMensagem(),

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
	* @param Default_Model_AnexoMensagem $object
	* @return void
	*/
	public function delete(Default_Model_AnexoMensagem $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a AnexoMensagem entry by id
     * 
     * @param  int $id 
     * @param  Default_Model_AnexoMensagem $object 
     * @return void
     */
    public function find($id, Default_Model_AnexoMensagem $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNomeOriginal($row->nomeOriginal)
				->setNomeSugestao($row->nomeSugestao)
				->setDescricao($row->descricao)
				->setArquivo($row->arquivo)
				->setMimeType($row->mimeType)
                ->setMensagem($row->mensagem);
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
			$entry = new Default_Model_AnexoMensagem();
			$entry->setId($row->id)

				->setNomeOriginal($row->nomeOriginal)
				->setNomeSugestao($row->nomeSugestao)
				->setDescricao($row->descricao)
				->setArquivo($row->arquivo)
				->setMimeType($row->mimeType)
                ->setMensagem($row->mensagem)
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
			$entry = new Default_Model_AnexoMensagem();
			$entry->setId($row->id)

				->setNomeOriginal($row->nomeOriginal)
				->setNomeSugestao($row->nomeSugestao)
				->setDescricao($row->descricao)
				->setArquivo($row->arquivo)
				->setMimeType($row->mimeType)
                ->setMensagem($row->mensagem)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}


//#BlockStart number=161 id=_bDB3EMSvEd6vnL5X62mZVw_#_0
      
//start block for manually written code
        
//end block for manually written code

//#BlockEnd number=161

}
