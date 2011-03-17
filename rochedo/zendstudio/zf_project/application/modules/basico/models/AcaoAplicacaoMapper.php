<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * AcaoAplicacao data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_AcaoAplicacao
 * @subpackage Model
 */
class Basico_Model_AcaoAplicacaoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_AcaoAplicacaoMapper
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
     * Lazy loads Basico_Model_DbTable_AcaoAplicacao if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_AcaoAplicacao');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a AcaoAplicacao entry
     * 
     * @param  Basico_Model_AcaoAplicacao $object
     * @return void
     */
    public function save(Basico_Model_AcaoAplicacao $object)
    {
        $data = array(
        		'id_modulo'            => $object->getModulo(),
				'controller'           => $object->getController(),
				'action'               => $object->getAction(),
				'ativo'                => $object->getAtivo(),
				'motivo_desativacao'   => $object->getMotivoDesativacao(),
				'datahora_desativacao' => $object->getDataHoraDesativacao(),
				'datahora_reativacao'  => $object->getDataHoraReativacao(),
                'rowinfo'              => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a AcaoAplicacao entry
	* @param Basico_Model_AcaoAplicacao $object
	* @return void
	*/
	public function delete(Basico_Model_AcaoAplicacao $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a AcaoAplicacao entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_AcaoAplicacao $object 
     * @return void
     */
    public function find($id, Basico_Model_AcaoAplicacao $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setController($row->controller)
				->setAction($row->action)
				->setAtivo($row->ativo)
				->setMotivoDesativacao($row->motivo_desativacao)
				->setDataHoraDesativacao($row->datahora_desativacao)
				->setDataHoraReativacao($row->datahora_reativacao)
				->setDataHoraCadastro($row->datahora_cadastro)
				->setRowinfo($row->rowinfo)
                ->setModulo($row->id_modulo);
    }

	/**
	 * Fetch all acaoaplicacao entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AcaoAplicacao();
			$entry->setId($row->id)

				->setController($row->controller)
				->setAction($row->action)
				->setAtivo($row->ativo)
				->setMotivoDesativacao($row->motivo_desativacao)
				->setDataHoraDesativacao($row->datahora_desativacao)
				->setDataHoraReativacao($row->datahora_reativacao)
				->setDataHoraCadastro($row->datahora_cadastro)
				->setRowinfo($row->rowinfo)
                ->setModulo($row->id_modulo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all acaoaplicacao entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AcaoAplicacao();
			$entry->setId($row->id)

				->setController($row->controller)
				->setAction($row->action)
				->setAtivo($row->ativo)
				->setMotivoDesativacao($row->motivo_desativacao)
				->setDataHoraDesativacao($row->datahora_desativacao)
				->setDataHoraReativacao($row->datahora_reativacao)
				->setDataHoraCadastro($row->datahora_cadastro)
				->setRowinfo($row->rowinfo)
                ->setModulo($row->id_modulo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
