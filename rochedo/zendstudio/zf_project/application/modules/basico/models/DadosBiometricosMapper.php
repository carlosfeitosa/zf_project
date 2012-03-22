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
class Basico_Model_DadosBiometricosMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_DadosBiometricos if no instance registered
     * 
     * @return Basico_Model_DbTable_DadosBiometricos
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_DadosBiometricos');
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
        $object ->setId($row->id)
                ->setIdCategoria($row->id_categoria)
				->setIdGenericoProprietario($row->id_generico_proprietario)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo);				
    }

	/**
	 * Fetch all DadosBiometricos entries
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
			$entry ->setId($row->id)
				   ->setIdCategoria($row->id_categoria)
				   ->setIdGenericoProprietario($row->id_generico_proprietario)
				   ->setDatahoraCriacao($row->datahora_criacao)
				   ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				   ->setRowinfo($row->rowinfo)
				   ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all DadosBiometricos entries
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
			$entry ->setId($row->id)
				   ->setIdCategoria($row->id_categoria)
				   ->setIdGenericoProprietario($row->id_generico_proprietario)
				   ->setDatahoraCriacao($row->datahora_criacao)
				   ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)				   
				   ->setRowinfo($row->rowinfo)
				   ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
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
                'id_categoria'                => $object->getIdCategoria(),
				'id_generico_proprietario'    => $object->getIdGenericoProprietario(),
        		'datahora_criacao'			  => $object->getDatahoraCriacao(),
        		'datahora_ultima_atualizacao' => $object->getDatahoraUltimaAtualizacao(),
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
	* Delete a DadosBiometricos entry
	* @param Basico_Model_DadosBiometricos $object
	* @return void
	*/
	public function delete(Basico_Model_DadosBiometricos $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}	
}