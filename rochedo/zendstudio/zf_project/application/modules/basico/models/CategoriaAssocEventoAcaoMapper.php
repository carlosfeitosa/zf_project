<?php
/**
 * CategoriaAssocEventoAcao data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_CategoriaAssocEventoAcao
 * @subpackage Model
 */
class Basico_Model_CategoriaAssocEventoAcaoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_CategoriaAssocEventoAcaoMapper
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
     * Lazy loads Basico_Model_DbTable_CategoriaAssocEventoAcao if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_CategoriaAssocEventoAcao');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a AcaoEvento entry
     * 
     * @param  Basico_Model_CategoriaAssocEventoAcao $object
     * @return void
     */
    public function save(Basico_Model_CategoriaAssocEventoAcao $object)
    {
        $data = array(
        		'id_categoria'		=> $object->getIdCategoria(),
				'tag_abertura'		=> $object->getTagAbertura(),
				'tag_fechamento'	=> $object->getTagFechamento(),
        		'delimitador'		=> $object->getDelimitador(),
				'datahora_criacao'	=> $object->getDatahoraCriacao(),
                'rowinfo'			=> $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a CategoriaAssocEventoAcao entry
	* @param Basico_Model_CategoriaAssocEventoAcao $object
	* @return void
	*/
	public function delete(Basico_Model_CategoriaAssocEventoAcao $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a CategoriaAssocEventoAcao entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_CategoriaAssocEventoAcao $object 
     * @return void
     */
    public function find($id, Basico_Model_CategoriaAssocEventoAcao $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setTagAbertura($row->tag_abertura)
				->setTagFechamento($row->tag_fechamento)
				->setDelimitador($row->delimitador)
				->setDatahoraCriacao($row->datahora_criacao)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all CategoriaAssocEventoAcao entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_CategoriaAssocEventoAcao();
			$entry->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setTagAbertura($row->tag_abertura)
				->setTagFechamento($row->tag_fechamento)
				->setDelimitador($row->delimitador)
				->setDatahoraCriacao($row->datahora_criacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all CategoriaAssocEventoAcao entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_CategoriaAssocEventoAcao();
			$entry->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setTagAbertura($row->tag_abertura)
				->setTagFechamento($row->tag_fechamento)
				->setDelimitador($row->delimitador)
				->setDatahoraCriacao($row->datahora_criacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}