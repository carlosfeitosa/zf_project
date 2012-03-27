<?php
/**
 * CpgToken data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_CpgToken
 * @subpackage Model
 */
class Basico_Model_CpgTokenMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_CpgToken if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_CpgToken')
    {
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a CpgToken entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_CpgToken $object 
     * @return void
     */
    public function find($id, Basico_AbstractController_RochedoPersistentOPController $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
        		->setIdCategoria($row->id_categoria)
        		->setIdGenericoProprietario($row->id_generico_proprietario)
    			->setToken($row->token)
    			->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraExpiracao($row->datahora_expiracao)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all CpgToken entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_CpgToken();
			$entry->setId($row->id)
				->setIdCategoria($row->id_categoria)
        		->setIdGenericoProprietario($row->id_generico_proprietario)
    			->setToken($row->token)
    			->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraExpiracao($row->datahora_expiracao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all CpgToken entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_CpgToken();
			$entry->setId($row->id)
				->setIdCategoria($row->id_categoria)
        		->setIdGenericoProprietario($row->id_generico_proprietario)
    			->setToken($row->token)
    			->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraExpiracao($row->datahora_expiracao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a CpgToken entry
     * 
     * @param  Basico_Model_CpgToken $object
     * @return void
     */
    public function save(Basico_AbstractController_RochedoPersistentOPController $object)
    {
        $data = array(
        		'id_categoria'       		=> $object->getIdCategoria(),
        		'id_generico_proprietario'  => $object->getIdGenericoProprietario(),
				'token'              		=> $object->getToken(),
                'datahora_expiracao' 		=> $object->getDatahoraExpiracao(),
        		'datahora_criacao'   		=> $object->getDatahoraCriacao(),
                'rowinfo'            		=> $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a CpgToken entry
	* @param Basico_Model_CpgToken $object
	* @return void
	*/
	public function delete(Basico_AbstractController_RochedoPersistentOPController $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}
