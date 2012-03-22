<?php
/**
 * Rascunho data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Rascunho
 * @subpackage Model
 */
class Basico_Model_FormularioRascunhoMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_FormularioRascunho if no instance registered
     * 
     * @return Basico_Model_FormularioRascunho
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_FormularioRascunho');
    }
	
    /**
     * Find a FormularioRascunho entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioRascunho $object 
     * @return void
     */
    public function find($id, Basico_Model_Rascunho $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
				->setIdRascunhoPai($row->id_rascunho_pai)
				->setIdCategoria($row->id_categoria)
				->setIdAssocclPerfil($row->id_assoccl_perfil)
				->setIdAssocagGrupo($row->id_assocag_grupo)
				->setIdAssocsqAcaoAplicacao($row->id_assocsq_acao_aplicacao)
				->setRequest($row->request)
				->setPost($row->post)
                ->setFormAction($row->form_action)
                ->setFormName($row->form_name)
                ->setActionOrigem($row->action_origem)
                ->setAtivo($row->ativo)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all FormularioRascunho entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioRascunho();
			$entry->setId($row->id)
				->setIdRascunhoPai($row->id_rascunho_pai)
				->setIdCategoria($row->id_categoria)
				->setIdAssocclPerfil($row->id_assoccl_perfil)
				->setIdAssocagGrupo($row->id_assocag_grupo)
				->setIdAssocsqAcaoAplicacao($row->id_assocsq_acao_aplicacao)
				->setRequest($row->request)
				->setPost($row->post)
                ->setFormAction($row->form_action)
                ->setFormName($row->form_name)
                ->setActionOrigem($row->action_origem)
                ->setAtivo($row->ativo)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all FormularioRascunho entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioRascunho();
			$entry->setId($row->id)
				->setIdRascunhoPai($row->id_rascunho_pai)
				->setIdCategoria($row->id_categoria)
				->setIdAssocclPerfil($row->id_assoccl_perfil)
				->setIdAssocagGrupo($row->id_assocag_grupo)
				->setIdAssocsqAcaoAplicacao($row->id_assocsq_acao_aplicacao)
				->setRequest($row->request)
				->setPost($row->post)
                ->setFormAction($row->form_action)
                ->setFormName($row->form_name)
                ->setActionOrigem($row->action_origem)
                ->setAtivo($row->ativo)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo)
			    ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
     * Save a FormularioRascunho entry
     * 
     * @param  Basico_Model_FormularioRascunho $object
     * @return void
     */
    public function save(Basico_Model_FormularioRascunho $object)
    {
        $data = array(
				'id_rascunho_pai'             => $object->getIdRascunhoPai(),
				'id_categoria'                => $object->getIdCategoria(),
				'id_assoccl_perfil'           => $object->getIdAssocclPerfil(),
				'id_assocag_grupo'            => $object->getIdAssocagGrupo(),
				'id_assocsq_acao_aplicacao'   => $object->getIdAssocsqAcaoAplicacao(),
				'request'                     => $object->getRequest(),
				'post'                        => $object->getPost(),
              	'form_action'                 => $object->getFormAction(),
              	'form_name'                   => $object->getFormName(),
              	'action_origem'               => $object->getActionOrigem(),
              	'ativo'                       => $object->getAtivo(),
        		'datahora_criacao'            => $object->getDatahoraCriacao(),
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
	* Delete a FormularioRascunho entry
	* @param Basico_Model_FormularioRascunho $object
	* @return void
	*/
	public function delete(Basico_Model_FormularioRascunho $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
	
}
