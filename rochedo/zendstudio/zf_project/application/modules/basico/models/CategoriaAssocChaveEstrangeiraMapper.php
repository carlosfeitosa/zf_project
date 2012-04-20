<?php
/**
 * CategoriaAssocChaveEstrangeira data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_CategoriaAssocChaveEstrangeira
 * @subpackage Model
 */
class Basico_Model_CategoriaAssocChaveEstrangeiraMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
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
		$this->_arrayMapper['id'] 				 = 'id';
		$this->_arrayMapper['idCategoria'] 		 = 'id_categoria';
		$this->_arrayMapper['idModulo'] 		 = 'id_modulo';
		$this->_arrayMapper['tabelaEstrangeira'] = 'tabela_estrangeira';
		$this->_arrayMapper['campoEstrangeiro']  = 'campo_estrangeiro';
		$this->_arrayMapper['datahoraCriacao'] 	 = 'datahora_criacao';
		$this->_arrayMapper['rowinfo'] 		     = 'rowinfo'; 
	}

   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_CategoriaAssocChaveEstrangeira if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_CategoriaAssocChaveEstrangeira')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a CategoriaAssocChaveEstrangeira entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_CategoriaAssocChaveEstrangeira $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all CategoriaAssocChaveEstrangeira entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_CategoriaAssocChaveEstrangeira');
	}
	
	/**
	 * Fetch all CategoriaAssocChaveEstrangeira entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_CategoriaAssocChaveEstrangeira', $where, $order, $count, $offset);
	}
    
    /**
     * Save a CategoriaAssocChaveEstrangeira entry
     * 
     * @param  Basico_Model_CategoriaAssocChaveEstrangeira $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a CategoriaAssocChaveEstrangeira entry
	* 
	* @param Basico_Model_CategoriaAssocChaveEstrangeira $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// chamando método pai
    	$this->deleteAbstrato($this->_arrayMapper, $object);
	}
}