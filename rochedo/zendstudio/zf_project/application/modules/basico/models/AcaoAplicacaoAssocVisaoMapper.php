<?php
/**
 * AcaoAplicacaoAssocVisao data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_AcaoAplicacaoAssocVisaoAssocVisao
 * @subpackage Model
 */
class Basico_Model_AcaoAplicacaoAssocVisaoMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
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
		$this->_arrayMapper['id']						 = 'id';
		$this->_arrayMapper['idCategoria']				 = 'id_categoria';
		$this->_arrayMapper['idAcaoAplicacao']			 = 'id_acao_aplicacao';
		$this->_arrayMapper['constanteTextual']			 = 'constante_textual';
		$this->_arrayMapper['constanteTextualDescricao'] = 'constante_textual_descricao';
		$this->_arrayMapper['constanteTextualTitulo']	 = 'constante_textual_titulo';
		$this->_arrayMapper['constanteTextualSubtitulo'] = 'constante_textual_subtitulo';
		$this->_arrayMapper['constanteTextualMensagem']	 = 'constante_textual_mensagem';
		$this->_arrayMapper['datahoraCriacao'] 			 = 'datahora_criacao';
		$this->_arrayMapper['datahoraUltimaAtualizacao'] = 'datahora_ultima_atualizacao';
		$this->_arrayMapper['rowinfo']					 = 'rowinfo'; 
	}

   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_AcaoAplicacaoAssocVisao if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_AcaoAplicacaoAssocVisao')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a AcaoAplicacaoAssocVisao entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_AcaoAplicacaoAssocVisao $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all AcaoAplicacaoAssocVisao entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_AcaoAplicacaoAssocVisao');
	}
	
	/**
	 * Fetch all AcaoAplicacaoAssocVisao entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_AcaoAplicacaoAssocVisao', $where, $order, $count, $offset);
	}
    
    /**
     * Save a AcaoAplicacaoAssocVisao entry
     * 
     * @param  Basico_Model_AcaoAplicacaoAssocVisao $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a AcaoAplicacaoAssocVisao entry
	* 
	* @param Basico_Model_AcaoAplicacaoAssocVisao $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// chamando método pai
    	$this->deleteAbstrato($this->_arrayMapper, $object);
	}
}