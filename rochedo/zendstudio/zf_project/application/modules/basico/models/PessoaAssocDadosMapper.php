<?php
/**
 * PessoaAssocDados data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_PessoaAssocDados
 * @subpackage Model
 */
class Basico_Model_PessoaAssocDadosMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
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
		$this->_arrayMapper['idPessoa'] = 'id_pessoa';
		$this->_arrayMapper['nome'] = 'nome';
		$this->_arrayMapper['dataNascimento'] = 'data_nascimento';
		$this->_arrayMapper['constanteTextualPaisNascimento'] = 'constante_textual_pais_nasc';
		$this->_arrayMapper['nomeUfNascimento'] = 'nome_uf_nascimento';
		$this->_arrayMapper['nomeMunicipioNascimento'] = 'nome_municipio_nascimento';
		$this->_arrayMapper['nomePai'] = 'nome_pai';
		$this->_arrayMapper['nomeMae'] = 'nome_mae';
		$this->_arrayMapper['datahoraCriacao'] = 'datahora_criacao';
		$this->_arrayMapper['datahoraUltimaAtualizacao'] = 'datahora_ultima_atualizacao';
		$this->_arrayMapper['rowinfo'] = 'rowinfo'; 
	}

   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_PessoaAssocDados if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_PessoaAssocDados')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a PessoaAssocDados entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_PessoaAssocDados $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all PessoaAssocDados entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_PessoaAssocDados');
	}
	
	/**
	 * Fetch all PessoaAssocDados entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_PessoaAssocDados', $where, $order, $count, $offset);
	}
    
    /**
     * Save a PessoaAssocDados entry
     * 
     * @param  Basico_Model_PessoaAssocDados $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a PessoaAssocDados entry
	* 
	* @param Basico_Model_PessoaAssocDados $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// chamando método pai
    	$this->deleteAbstrato($this->_arrayMapper, $object);
	}
}