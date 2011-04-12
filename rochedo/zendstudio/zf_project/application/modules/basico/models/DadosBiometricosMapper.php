<?php
/**
 * DadosBiometricos data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_DadosBiometricos
 * @subpackage Model
 */
class Basico_Model_DadosBiometricosMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_DadosBiometricosMapper
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
     * Lazy loads Basico_Model_DbTable_DadosBiometricos if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_DadosBiometricos');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a DadosBiometricos entry
     * 
     * @param  Basico_Model_DadosBiometricos $object
     * @return void
     */
    public function save(Basico_Model_DadosBiometricos $object)
    {
        $data = array(
                'id_pessoa'        => $object->getPessoa(),
				'sexo'             => $object->getSexo(),
                'id_raca'             => $object->getRaca(),
                'altura'           => $object->getAltura(),
                'peso'             => $object->getPeso(),
                'tipo_sanguineo'   => $object->getTipoSanguineo(),
                'historico_medico' => $object->getHistoricoMedico(),
                'rowinfo'          => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a DadosBiometricos entry
	* @param Basico_Model_DadosBiometricos $object
	* @return void
	*/
	public function delete(Basico_Model_DadosBiometricos $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a DadosBiometricos entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_DadosBiometricos $object 
     * @return void
     */
    public function find($id, Basico_Model_DadosBiometricos $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
                ->setPessoa($row->id_pessoa)
				->setSexo($row->sexo)
				->setRaca($row->id_raca)
				->setAltura($row->altura)
				->setPeso($row->peso)
				->setTipoSanguineo($row->tipo_sanguineo)
				->setHistoricoMedico($row->historico_medico)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all dadosbiometricos entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_DadosBiometricos();
			$entry->setId($row->id)
                ->setPessoa($row->id_pessoa)
				->setSexo($row->sexo)
				->setRaca($row->id_raca)
				->setAltura($row->altura)
				->setPeso($row->peso)
				->setTipoSanguineo($row->tipo_sanguineo)
				->setHistoricoMedico($row->historico_medico)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all dadosbiometricos entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_DadosBiometricos();
			$entry->setId($row->id)
                ->setPessoa($row->id_pessoa)
				->setSexo($row->sexo)
				->setRaca($row->id_raca)
				->setAltura($row->altura)
				->setPeso($row->peso)
				->setTipoSanguineo($row->tipo_sanguineo)
				->setHistoricoMedico($row->historico_medico)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

}
