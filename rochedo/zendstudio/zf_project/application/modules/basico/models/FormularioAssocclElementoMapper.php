<?php
/**
 * FormularioAssocclElemento data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioAssocclElemento
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
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
		$this->_arrayMapper['idFormulario']				 = 'id_formulario';
		$this->_arrayMapper['idElemento']				 = 'id_elemento';
		$this->_arrayMapper['idAjuda'] 					 = 'id_ajuda';
		$this->_arrayMapper['idGrupo'] 					 = 'id_grupo';
		$this->_arrayMapper['constanteTextualLabel'] 	 = 'constante_textual_label';
		$this->_arrayMapper['elementName'] 				 = 'element_name';
		$this->_arrayMapper['elementOptions'] 			 = 'element_options';
		$this->_arrayMapper['elementAttribs'] 			 = 'element_attribs';
		$this->_arrayMapper['elementValueDefault'] 		 = 'element_value_default';
		$this->_arrayMapper['elementReloadable']   		 = 'element_reloadable';
		$this->_arrayMapper['elementRequired']      	 = 'element_required';
		$this->_arrayMapper['ordem']               		 = 'ordem';
		$this->_arrayMapper['datahoraCriacao']           = 'datahora_criacao';
		$this->_arrayMapper['datahoraUltimaAtualizacao'] = 'datahora_ultima_atualizacao';
		$this->_arrayMapper['rowinfo']                   = 'rowinfo'; 
	}
	
   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioAssocclElemento if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_FormularioAssocclElemento')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a FormularioAssocclElemento entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_FormularioAssocclElemento $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all FormularioAssocclElemento entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_FormularioAssocclElemento');
	}
	
	/**
	 * Fetch all FormularioAssocclElemento entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_FormularioAssocclElemento', $where, $order, $count, $offset);
	}
    
    /**
     * Save a FormularioAssocclElemento entry
     * 
     * @param  Basico_Model_FormularioAssocclElemento $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a FormularioAssocclElemento entry
	* 
	* @param Basico_Model_FormularioAssocclElemento $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// chamando método pai
    	$this->deleteAbstrato($this->_arrayMapper, $object);
	}
}