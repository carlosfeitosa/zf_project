<?php
/**
 * FormularioDecoratorGrupoAssocagGrupo data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormDecoratorGrupoAssocagGrupo
 * @subpackage Model
 */
class Basico_Model_FormularioDecoratorGrupoAssocagGrupoMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
	/**
	 * Mapeamento da classe
	 * 
	 * @var Array
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
		$this->_arrayMapper['id']						  	   = 'id';
		$this->_arrayMapper['idFormularioDecoratorGrupo'] 	   = 'id_form_decorator_grupo';
		$this->_arrayMapper['idFormularioDecorator']	       = 'id_formulario_decorator';
		$this->_arrayMapper['idFormularioDecoratorGrupoAssoc'] = 'id_form_decorator_grupo_assoc';
		$this->_arrayMapper['ordem']                      	   = 'ordem';
		$this->_arrayMapper['datahoraCriacao']            	   = 'datahora_criacao';
		$this->_arrayMapper['rowinfo']                    	   = 'rowinfo'; 
	}
	
   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioDecoratorGrupoAssocagGrupo if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_FormularioDecoratorGrupoAssocagGrupo')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a FormularioDecoratorGrupoAssocagGrupo entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_FormularioDecoratorGrupoAssocagGrupo $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all FormularioDecoratorGrupoAssocagGrupo entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_FormularioDecoratorGrupoAssocagGrupo');
	}
	
	/**
	 * Fetch all FormularioDecoratorGrupoAssocagGrupo entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_FormularioDecoratorGrupoAssocagGrupo', $where, $order, $count, $offset);
	}
    
    /**
     * Save a FormularioDecoratorGrupoAssocagGrupo entry
     * 
     * @param  Basico_Model_FormularioDecoratorGrupoAssocagGrupo $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a FormularioDecoratorGrupoAssocagGrupo entry
	* 
	* @param Basico_Model_FormularioDecoratorGrupoAssocagGrupo $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// chamando método pai
    	$this->deleteAbstrato($this->_arrayMapper, $object);
	}
}