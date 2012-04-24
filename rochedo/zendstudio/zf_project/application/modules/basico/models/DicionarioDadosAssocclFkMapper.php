<?php
/**
 * DicionarioDadosAssocclFk data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_DicionarioDadosAssocclFk
 * @subpackage Model
 */
class Basico_Model_DicionarioDadosAssocclFkMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
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
		$this->_arrayMapper['idAssocTable']				 = 'id_assoc_table';
		$this->_arrayMapper['idAssocField']				 = 'id_assoc_field';
		$this->_arrayMapper['idAssocFieldFk']			 = 'id_assoc_field_fk';
		$this->_arrayMapper['metodoRecuperacao']		 = 'metodo_recuperacao';
		$this->_arrayMapper['constanteTextual']			 = 'constante_textual';
		$this->_arrayMapper['constanteTextualDescricao'] = 'constante_textual_descricao';
		$this->_arrayMapper['constanteTextualAlias']	 = 'constante_textual_alias';
		$this->_arrayMapper['ativo']					 = 'ativo';
		$this->_arrayMapper['datahoraCriacao']			 = 'datahora_criacao';
		$this->_arrayMapper['datahoraUltimaAtualizacao'] = 'datahora_ultima_atualizacao';
		$this->_arrayMapper['rowinfo'] 					 = 'rowinfo'; 
	}

   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_DicionarioDadosAssocclFk if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_DicionarioDadosAssocclFk')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a DicionarioDadosAssocclFk entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_DicionarioDadosAssocclFk $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all DicionarioDadosAssocclFk entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_DicionarioDadosAssocclFk');
	}
	
	/**
	 * Fetch all DicionarioDadosAssocclFk entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_DicionarioDadosAssocclFk', $where, $order, $count, $offset);
	}
    
    /**
     * Save a DicionarioDadosAssocclFk entry
     * 
     * @param  Basico_Model_DicionarioDadosAssocclFk $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a DicionarioDadosAssocclFk entry
	* 
	* @param Basico_Model_DicionarioDadosAssocclFk $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// chamando método pai
    	$this->deleteAbstrato($this->_arrayMapper, $object);
	}
}