<?php
/**
 * FormularioAssocclEvento data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioAssocclEvento
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclEventoMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioAssocclEvento if no instance registered
     * 
     * @return Basico_Model_DbTable_FormularioAssocclEvento
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_FormularioAssocclEvento');
    }

    /**
     * Find a FormularioAssocclEvento entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioAssocclEvento $object 
     * 
     * @return void
     */
    public function find($id, Basico_Model_FormularioAssocclEvento $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object ->setId($row->id)
        		->setIdFormulario($row->id_formulario)
        		->setIdEvento($row->id_evento)
        		->setIdAcaoEvento($row->id_acao_evento)
        		->setOrdem($row->ordem)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all FormularioAssocclEvento entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioAssocclEvento();
			$entry->setId($row->id)
        		->setIdFormulario($row->id_formulario)
        		->setIdEvento($row->id_evento)
        		->setIdAcaoEvento($row->id_acao_evento)
        		->setOrdem($row->ordem)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all FormularioAssocclEvento entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioAssocclEvento();
			$entry->setId($row->id)
        		->setIdFormulario($row->id_formulario)
        		->setIdEvento($row->id_evento)
        		->setIdAcaoEvento($row->id_acao_evento)
        		->setOrdem($row->ordem)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setRowinfo($row->rowinfo)
			    ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a FormularioAssocclEvento entry
     * 
     * @param  Basico_Model_FormularioAssocclEvento $object
     * 
     * @return void
     */
    public function save(Basico_Model_FormularioAssocclEvento $object)
    {
        $data = array(
			          'id_formulario'               => $object->getIdFormulario(),
                      'id_evento'				    => $object->getIdEvento(),
        		      'id_acao_evento'			    => $object->getidAcaoEvento(),
                      'ordem'						=> $object->getOrdem(),
        		      'datahora_criacao'            => $object->getDatahoraCriacao(),
        		      'rowinfo'					    => $object->getRowinfo(),
                     );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a FormularioAssocclEvento entry
	* 
	* @param Basico_Model_FormularioAssocclEvento $object
	* 
	* @return void
	*/
	public function delete(Basico_Model_FormularioAssocclEvento $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}	
}