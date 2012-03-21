<?php
/**
 * FormularioElementoAssocclEvento data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioElementoAssocclEvento
 * @subpackage Model
 */
class Basico_Model_FormularioElementoAssocclEventoMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioElementoAssocclEvento if no instance registered
     * 
     * @return Basico_Model_DbTable_FormularioElementoAssocclEvento
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_FormularioElementoAssocclEvento');
    }

    /**
     * Find a FormularioElementoAssocclEvento entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioElementoAssocclEvento $object 
     * 
     * @return void
     */
    public function find($id, Basico_Model_FormularioElementoAssocclEvento $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object ->setId($row->id)
        		->setIdElemento($row->id_elemento)
        		->setIdEvento($row->id_evento)
        		->setIdAcaoEvento($row->id_acao_evento)
        		->setOrdem($row->ordem)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all FormularioElementoAssocclEvento entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioElementoAssocclEvento();
			$entry->setId($row->id)
        		->setIdElemento($row->id_elemento)
        		->setIdEvento($row->id_evento)
        		->setIdAcaoEvento($row->id_acao_evento)
        		->setOrdem($row->ordem)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all FormularioElementoAssocclEvento entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioElementoAssocclEvento();
			$entry->setId($row->id)
        		->setIdElemento($row->id_elemento)
        		->setIdEvento($row->id_evento)
        		->setIdAcaoEvento($row->id_acao_evento)
        		->setOrdem($row->ordem)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo)
			    ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a FormularioElementoAssocclEvento entry
     * 
     * @param  Basico_Model_FormularioElementoAssocclEvento $object
     * 
     * @return void
     */
    public function save(Basico_Model_FormularioElementoAssocclEvento $object)
    {
        $data = array(
			          'id_elemento'                 => $object->getIdElemento(),
                      'id_evento'				    => $object->getIdEvento(),
        		      'id_acao_evento'			    => $object->getidAcaoEvento(),
                      'ordem'						=> $object->getOrdem(),
        		      'datahora_criacao'            => $object->getDatahoraCriacao(),
        		      'datahora_ultima_atualizacao' => $object->getDatahoraUltimaAtualizacao(),
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
	* Delete a FormularioElementoAssocclEvento entry
	* 
	* @param Basico_Model_FormularioElementoAssocclEvento $object
	* 
	* @return void
	*/
	public function delete(Basico_Model_FormularioElementoAssocclEvento $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}	
}