<?php
/**
 * DadosBiometricosAssocPessoa data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_DadosBiometricosAssocPessoa
 * @subpackage Model
 */
class Basico_Model_DadosBiometricosAssocPessoaMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
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
		$this->_arrayMapper['idDadosBiometricos']		 = 'id_dados_biometricos';
		$this->_arrayMapper['idCategoriaSexo']			 = 'id_categoria_sexo';
		$this->_arrayMapper['idCategoriaRaca']			 = 'id_categoria_raca';
		$this->_arrayMapper['idCategoriaTipoSanguineo']  = 'id_categoria_tipo_sanguineo';
		$this->_arrayMapper['altura'] 				     = 'altura';
		$this->_arrayMapper['peso'] 	 				 = 'peso';
		$this->_arrayMapper['historicoMedico'] 		 	 = 'historico_medico';
		$this->_arrayMapper['datahoraCriacao']           = 'datahora_criacao';
		$this->_arrayMapper['datahoraUltimaAtualizacao'] = 'datahora_ultima_atualizacao';
		$this->_arrayMapper['rowinfo']                   = 'rowinfo'; 
	}
	
   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_DadosBiometricosAssocPessoa if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_DadosBiometricosAssocPessoa')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a DadosBiometricosAssocPessoa entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_DadosBiometricosAssocPessoa $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all DadosBiometricosAssocPessoa entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_DadosBiometricosAssocPessoa');
	}
	
	/**
	 * Fetch all DadosBiometricosAssocPessoa entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_DadosBiometricosAssocPessoa', $where, $order, $count, $offset);
	}
    
    /**
     * Save a DadosBiometricosAssocPessoa entry
     * 
     * @param  Basico_Model_DadosBiometricosAssocPessoa $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a DadosBiometricosAssocPessoa entry
	* 
	* @param Basico_Model_DadosBiometricosAssocPessoa $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// chamando método pai
    	$this->deleteAbstrato($this->_arrayMapper, $object);
	}
}