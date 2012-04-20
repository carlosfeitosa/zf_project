<?php
/**
 * CpgToken data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_CpgToken
 * @subpackage Model
 */
class Basico_Model_CpgTokenMapper extends Basico_AbstractMapper_RochedoMapper
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
		$this->_arrayMapper['idGenericoProprietario']	 = 'id_generico_proprietario';
		$this->_arrayMapper['token'] 		 			 = 'token';
		$this->_arrayMapper['datahoraCriacao']           = 'datahora_criacao';
		$this->_arrayMapper['datahoraExpiracao'] 		 = 'datahora_expiracao';
		$this->_arrayMapper['rowinfo']                   = 'rowinfo'; 
	}
	
   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_CpgToken if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_CpgToken')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a CpgToken entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_CpgToken $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all CpgToken entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_CpgToken');
	}
	
	/**
	 * Fetch all CpgToken entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_CpgToken', $where, $order, $count, $offset);
	}
    
    /**
     * Save a CpgToken entry
     * 
     * @param  Basico_Model_CpgToken $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a CpgToken entry
	* 
	* @param Basico_Model_CpgToken $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// chamando método pai
    	$this->deleteAbstrato($this->_arrayMapper, $object);
	}
}