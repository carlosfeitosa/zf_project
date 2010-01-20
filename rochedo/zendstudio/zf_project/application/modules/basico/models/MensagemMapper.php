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
            throw new Exception('Invalid table data gateway provided');
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
				'remetente'         => $object->getRemetente(),
				'destinatarios'     => $object->getDestinatariosString(),
				'assunto'           => $object->getAssunto(),
                'datahora_mensagem' => $object->getDatahoraMensagem(),
                'mensagem'          => $object->getMensagem(),
				'id_categoria'      => $object->getCategoria(),
                'rowinfo'           => $object->getRowinfo(),
         
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
               ->setRemetente($row->remetente)
			   ->setDestinatarios($row->destinatarios)
			   ->setAssunto($row->assunto)
			   ->setDatahoraMensagem($row->datahora_mensagem)
			   ->setMensagem($row->mensagem)
			   ->setCategoria($row->id_categoria)
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
                  ->setRemetente($row->remetente)
				  ->setDestinatarios($row->destinatarios)
				  ->setAssunto($row->assunto)
				  ->setDatahoraMensagem($row->datahora_mensagem)
				  ->setMensagem($row->mensagem)
				  ->setCategoria($row->id_categoria)
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
                  ->setRemetente($row->remetente)
				  ->setDestinatarios($row->destinatarios)
				  ->setAssunto($row->assunto)
				  ->setDatahoraMensagem($row->datahora_mensagem)
				  ->setMensagem($row->mensagem)
				  ->setCategoria($row->id_categoria)
				  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

}
