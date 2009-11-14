<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Mensagem data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Default_Model_DbTable_Mensagem
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
     * @return Default_Model_MensagemMapper
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
     * Lazy loads Default_Model_DbTable_Mensagem if no instance registered
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
     * @param  Default_Model_Mensagem $object
     * @return void
     */
    public function save(Basico_Model_Mensagem $object)
    {
        $data = array(
				'remetente'   => $object->getRemetente(),
				'destinatarios'   => $object->getDestinatario(),
				'assunto'   => $object->getAssunto(),
				'datahora'   => $object->getDataHora(),
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
	* Delete a Mensagem entry
	* @param Default_Model_Mensagem $object
	* @return void
	*/
	public function delete(Default_Model_Mensagem $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Mensagem entry by id
     * 
     * @param  int $id 
     * @param  Default_Model_Mensagem $object 
     * @return void
     */
    public function find($id, Default_Model_Mensagem $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setRemetente($row->remetente)
				->setDestinatario($row->destinatarios)
				->setAssunto($row->assunto)
				->setDataHora($row->datahora)
				->setMensagem($row->mensagem);
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
			$entry = new Default_Model_Mensagem();
			$entry->setId($row->id)

				->setRemetente($row->remetente)
				->setDestinatario($row->destinatarios)
				->setAssunto($row->assunto)
				->setDataHora($row->datahora)
				->setMensagem($row->mensagem)
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
			$entry = new Default_Model_Mensagem();
			$entry->setId($row->id)

				->setRemetente($row->remetente)
				->setDestinatario($row->destinatarios)
				->setAssunto($row->assunto)
				->setDataHora($row->datahora)
				->setMensagem($row->mensagem)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}


//#BlockStart number=149 id=_kDO0oMIwEd6r_uu4CwoKLQ_#_0
      
//start block for manually written code
        
//end block for manually written code

//#BlockEnd number=149

}
