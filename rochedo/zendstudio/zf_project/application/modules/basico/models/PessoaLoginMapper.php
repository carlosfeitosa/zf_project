<?php
/**
 * PessoaLogin data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_PessoaLogin
 * @subpackage Model
 */
class Basico_Model_PessoaLoginMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
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
		$this->_arrayMapper['id'] 							= 'id';
		$this->_arrayMapper['idPessoa'] 					= 'id_pessoa';
		$this->_arrayMapper['login'] 						= 'login';
		$this->_arrayMapper['senha']				 		= 'senha';
		$this->_arrayMapper['ativo'] 						= 'ativo';
		$this->_arrayMapper['tentativasFalhas'] 			= 'tentativas_falhas';
		$this->_arrayMapper['travado'] 						= 'travado';
		$this->_arrayMapper['resetado'] 					= 'resetado';
		$this->_arrayMapper['datahoraUltimoLogon']		 	= 'datahora_ultimo_logon';
		$this->_arrayMapper['podeExpirar'] 					= 'pode_expirar';
		$this->_arrayMapper['datahoraProximaExpiracao'] 	= 'datahora_proxima_expiracao';
		$this->_arrayMapper['datahoraUltimaExpiracao'] 		= 'datahora_ultima_expiracao';
		$this->_arrayMapper['datahoraExpiracaoSenha'] 		= 'datahora_expiracao_senha';
		$this->_arrayMapper['datahoraUltimaTentativaFalha'] = 'datahora_ultima_tentativa_falha';
		$this->_arrayMapper['datahoraUltimoReset']		    = 'datahora_ultimo_reset';
		$this->_arrayMapper['datahoraUltimaTrocaSenha']	 	= 'datahora_ultima_troca_senha';
		$this->_arrayMapper['datahoraAceiteTermoUso']	 	= 'datahora_aceite_termo_uso';
		$this->_arrayMapper['datahoraCriacao']			 	= 'datahora_criacao';
		$this->_arrayMapper['datahoraUltimaAtualizacao'] 	= 'datahora_ultima_atualizacao';
		$this->_arrayMapper['rowinfo']					 	= 'rowinfo'; 
	}

	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_PessoaLogin if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_PessoaLogin')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a PessoaLogin entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_PessoaLogin $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all PessoaLogin entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_PessoaLogin');
	}
	
	/**
	 * Fetch all PessoaLogin entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_PessoaLogin', $where, $order, $count, $offset);
	}
    
    /**
     * Save a PessoaLogin entry
     * 
     * @param  Basico_Model_PessoaLogin $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a PessoaLogin entry
	* 
	* @param Basico_Model_PessoaLogin $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// chamando método pai
    	$this->deleteAbstrato($this->_arrayMapper, $object);
	}
}