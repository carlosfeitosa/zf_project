<?php
/**
 * Template data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses        Basico_Model_DbTable_Template
 * @subpackage Model
 */
class Basico_Model_TemplateMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_TemplateMapper
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
     * Lazy loads Basico_Model_DbTable_Template if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Template');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Template entry
     * 
     * @param  Basico_Model_Template $object
     * @return void
     */
    public function save(Basico_Model_Template $object)
    {
        $data = array(
				'nome'                     => $object->getNome(),
				'descricao'                => $object->getDescricao(),
                'id_categoria'             => $object->getCategoria(),
				'stylesheet_full_filename' => $object->getStyleSheetFullFilename(),
				'javascript_full_filename' => $object->getJavaScriptFullFilename(),
				'template'                 => $object->getTemplate(),
        		'id_output'				   => $object->getOutput(),
                'rowinfo'                  => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Template entry
	* @param Basico_Model_Template $object
	* @return void
	*/
	public function delete(Basico_Model_Template $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Template entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Template $object 
     * @return void
     */
    public function find($id, Basico_Model_Template $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setCategoria($row->id_categoria)
				->setStyleSheetFullFilename($row->stylesheet_full_filename)
				->setJavaScriptFullFilename($row->javascript_full_filename)
				->setTemplate($row->template)
				->setOutput($row->id_output)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all template entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Template();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setCategoria($row->id_categoria)
				->setStyleSheetFullFilename($row->stylesheet_full_filename)
				->setJavaScriptFullFilename($row->javascript_full_filename)
				->setTemplate($row->template)
				->setOutput($row->id_output)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all template entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Template();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setCategoria($row->id_categoria)
				->setStyleSheetFullFilename($row->stylesheet_full_filename)
				->setJavaScriptFullFilename($row->javascript_full_filename)
				->setTemplate($row->template)
				->setOutput($row->id_output)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
