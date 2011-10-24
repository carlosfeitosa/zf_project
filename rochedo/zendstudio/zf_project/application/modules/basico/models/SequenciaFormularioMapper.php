<?php
/**
 * SequenciaFormulario data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_SequenciaFormulario
 * @subpackage Model
 */
class Basico_Model_SequenciaFormularioMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_SequenciaFormularioMapper
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
     * Lazy loads Basico_Model_DbTable_SequenciaFormulario if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_SequenciaFormulario');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a SequenciaFormulario entry
     * 
     * @param  Basico_Model_SequenciaFormulario $object
     * @return void
     */
    public function save(Basico_Model_SequenciaFormulario $object)
    {
        $data = array(
				'nome'                        => $object->getNome(),
        		'formulario'                  => $object->getFormulario(),
				'datahora_criacao'            => $object->getDataHoraCriacao(),
				'datahora_ultima_atualizacao' => $object->getDataHoraUltimaAtualizacao(),
              	'ordem'                       => $object->getOrdem(),
              	'descricao'                   => $object->getDescricao(),
        		'rowinfo'					  => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a SequenciaFormulario entry
	* @param Basico_Model_SequenciaFormulario $object
	* @return void
	*/
	public function delete(Basico_Model_SequenciaFormulario $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a SequenciaFormulario entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_SequenciaFormulario $object 
     * @return void
     */
    public function find($id, Basico_Model_SequenciaFormulario $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNome($row->nome)
				->setFormulario($row->id_formulario)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setDataHoraCriacao($row->datahora_criacao)
                ->setOrdem($row->ordem)
                ->setDescricao($row->descricao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all SequenciaFormulario entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_SequenciaFormulario();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setFormulario($row->id_formulario)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setDataHoraCriacao($row->datahora_criacao)
                ->setOrdem($row->ordem)
                ->setDescricao($row->descricao)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all SequenciaFormulario entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_SequenciaFormulario();
			$entry->setId($row->id)
				
				->setNome($row->nome)
				->setFormulario($row->id_formulario)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setDataHoraCriacao($row->datahora_criacao)
                ->setOrdem($row->ordem)
                ->setDescricao($row->descricao)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
