<?php
/**
 * FormularioRascunhoAssocagGrupo data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioRascunhoAssocagGrupo
 * @subpackage Model
 */
class Basico_Model_FormularioRascunhoAssocagGrupoMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioRascunhoAssocagGrupo if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_FormularioRascunhoAssocagGrupo');
    }
    
	/**
     * Find a FormularioRascunhoAssocagGrupo entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioRascunhoAssocagGrupo $object 
     * @return void
     */
    public function find($id, Basico_Model_FormularioRascunhoAssocagGrupo $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setIdAssocclPerfil($row->id_assoccl_perfil)
				->setForms($row->forms)
				->setDataHoraCriacao($row->datahora_criacao)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all FormularioRascunhoAssocagGrupo entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioRascunhoAssocagGrupo();
			$entry->setId($row->id)

				->setIdAssocclPerfil($row->id_assoccl_perfil)
				->setForms($row->forms)
				->setDataHoraCriacao($row->datahora_criacao)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all FormularioRascunhoAssocagGrupo entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioRascunhoAssocagGrupo();
			$entry->setId($row->id)
				
				->setIdAssocclPerfil($row->id_assoccl_perfil)
				->setForms($row->forms)
				->setDataHoraCriacao($row->datahora_criacao)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a FormularioRascunhoAssocagGrupo entry
     * 
     * @param  Basico_Model_FormularioRascunhoAssocagGrupo $object
     * @return void
     */
    public function save(Basico_Model_FormularioRascunhoAssocagGrupo $object)
    {
        $data = array(
				'id_assoccl_perfil'			  => $object->getIdAssocclPerfil(),
        		'forms'                       => $object->getForms(),
				'datahora_criacao'            => $object->getDataHoraCriacao(),
				'datahora_ultima_atualizacao' => $object->getDataHoraUltimaAtualizacao(),
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
	* Delete a FormularioRascunhoAssocagGrupo entry
	* @param Basico_Model_FormularioRascunhoAssocagGrupo $object
	* @return void
	*/
	public function delete(Basico_Model_FormularioRascunhoAssocagGrupo $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}
