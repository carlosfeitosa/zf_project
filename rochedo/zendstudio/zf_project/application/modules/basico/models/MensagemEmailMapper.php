<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * MensagemEmail data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Default_Model_DbTable_MensagemEmail
 * @subpackage Model
 */
class Default_Model_MensagemEmailMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Default_Model_MensagemEmailMapper
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
     * Lazy loads Default_Model_DbTable_MensagemEmail if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Default_Model_DbTable_MensagemEmail');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a MensagemEmail entry
     * 
     * @param  Default_Model_MensagemEmail $object
     * @return void
     */
    public function save(Default_Model_MensagemEmail $object)
    {
        $data = array(
				'destinatariosCopiaCarbonada'   => $object->getDestinatariosCopiaCarbonada(),
				'destinatariosCopiaCarbonadaCega'   => $object->getDestinatariosCopiaCarbonadaCega(),
				'responderPara'   => $object->getResponderPara(),
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
	* Delete a MensagemEmail entry
	* @param Default_Model_MensagemEmail $object
	* @return void
	*/
	public function delete(Default_Model_MensagemEmail $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a MensagemEmail entry by id
     * 
     * @param  int $id 
     * @param  Default_Model_MensagemEmail $object 
     * @return void
     */
    public function find($id, Default_Model_MensagemEmail $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setDestinatariosCopiaCarbonada($row->destinatariosCopiaCarbonada)
				->setDestinatariosCopiaCarbonadaCega($row->destinatariosCopiaCarbonadaCega)
				->setResponderPara($row->responderPara)
                ->setMensagem($row->mensagem);
    }

	/**
	 * Fetch all mensagememail entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Default_Model_MensagemEmail();
			$entry->setId($row->id)

				->setDestinatariosCopiaCarbonada($row->destinatariosCopiaCarbonada)
				->setDestinatariosCopiaCarbonadaCega($row->destinatariosCopiaCarbonadaCega)
				->setResponderPara($row->responderPara)
                ->setMensagem($row->mensagem)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all mensagememail entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Default_Model_MensagemEmail();
			$entry->setId($row->id)

				->setDestinatariosCopiaCarbonada($row->destinatariosCopiaCarbonada)
				->setDestinatariosCopiaCarbonadaCega($row->destinatariosCopiaCarbonadaCega)
				->setResponderPara($row->responderPara)
                ->setMensagem($row->mensagem)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}


//#BlockStart number=140 id=_l3UeAK0fEd6Tgc0yakCadQ_#_0
      
//start block for manually written code
        
//end block for manually written code

//#BlockEnd number=140

}
