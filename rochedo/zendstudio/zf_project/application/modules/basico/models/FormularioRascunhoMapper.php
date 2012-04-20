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
class Basico_Model_FormularioRascunhoMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
	/**
	 * Mapeamento da classe
	 * 
	 * @var Array'
	 */
	public $_arrayMapper = array();

	/**
	 * Constructor
	 * 
	 * @param  array|null $options 
	 * 
	 * @return void
	 */
	public function __construct()
	{
		// montando array de mapeamento
		$this->_arrayMapper['id'] = 'id';
		$this->_arrayMapper['idRascunhoPai'] = 'id_rascunho_pai';
		$this->_arrayMapper['idCategoria'] = 'id_categoria';
		$this->_arrayMapper['idAssocclPerfil'] = 'id_assoccl_perfil';
		$this->_arrayMapper['idAssocagGrupo'] = 'id_assocag_grupo';
		$this->_arrayMapper['idAssocsqFormularioRascunho'] = 'id_assocsq_acao_aplicacao';
		$this->_arrayMapper['idAssocVisaoOrigem'] = 'id_assoc_visao_origem';
		$this->_arrayMapper['request'] = 'request';
		$this->_arrayMapper['post'] = 'post';
		$this->_arrayMapper['formAction'] = 'form_action';
		$this->_arrayMapper['formName'] = 'form_name';
		$this->_arrayMapper['actionOrigem'] = 'action_origem';
		$this->_arrayMapper['ativo'] = 'ativo';
		$this->_arrayMapper['datahoraCriacao'] = 'datahora_criacao';
		$this->_arrayMapper['datahoraUltimaAtualizacao'] = 'datahora_ultima_atualizacao';
		$this->_arrayMapper['rowinfo'] = 'rowinfo'; 
	}

   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioRascunho if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_FormularioRascunho')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a FormularioRascunho entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_FormularioRascunho $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all FormularioRascunho entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_FormularioRascunho');
	}
	
	/**
	 * Fetch all FormularioRascunho entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_FormularioRascunho', $where, $order, $count, $offset);
	}
    
    /**
     * Save a FormularioRascunho entry
     * 
     * @param  Basico_Model_FormularioRascunho $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a FormularioRascunho entry
	* 
	* @param Basico_Model_FormularioRascunho $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// chamando método pai
    	$this->deleteAbstrato($this->_arrayMapper, $object);
	}
}
