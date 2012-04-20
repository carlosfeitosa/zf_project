<?php
/**
 * MensagemAssocEmailAssocDados data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_MensagemAssocEmailAssocDados
 * @subpackage Model
 */
class Basico_Model_MensagemAssocEmailAssocDadosMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
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
		$this->_arrayMapper['idAssocEmail'] = 'id_assoc_email';
		$this->_arrayMapper['destinatariosCopiaCarbonada'] = 'destinatarios_copia_carbonada';
		$this->_arrayMapper['destinatariosCopiaCarbonadaNomes'] = 'destinatarios_copia_carbonada_nomes';
		$this->_arrayMapper['destinatariosCopiaCarbonadaOculta'] = 'destinatarios_copia_carbonada_oculta';
		$this->_arrayMapper['destinatariosCopiaCarbonadaOcultaNomes'] = 'destinatarios_copia_carbonada_oculta_nomes';
		$this->_arrayMapper['responderPara'] = 'responder_para';
		$this->_arrayMapper['prioridade'] = 'prioridade';
		$this->_arrayMapper['solicitacaoConfirmacaoLeitura'] = 'solicitacao_confirm_leitura';
		$this->_arrayMapper['datahoraConfirmacaoLeitura'] = 'datahora_confirmacao_leitura';
		$this->_arrayMapper['datahoraCriacao'] = 'datahora_criacao';
		$this->_arrayMapper['datahoraUltimaAtualizacao'] = 'datahora_ultima_atualizacao';
		$this->_arrayMapper['rowinfo'] = 'rowinfo'; 
	}

   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_MensagemAssocEmailAssocDados if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_MensagemAssocEmailAssocDados')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a MensagemAssocEmailAssocDados entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_MensagemAssocEmailAssocDados $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all MensagemAssocEmailAssocDados entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_MensagemAssocEmailAssocDados');
	}
	
	/**
	 * Fetch all MensagemAssocEmailAssocDados entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_MensagemAssocEmailAssocDados', $where, $order, $count, $offset);
	}
    
    /**
     * Save a MensagemAssocEmailAssocDados entry
     * 
     * @param  Basico_Model_MensagemAssocEmailAssocDados $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a MensagemAssocEmailAssocDados entry
	* 
	* @param Basico_Model_MensagemAssocEmailAssocDados $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// chamando método pai
    	$this->deleteAbstrato($this->_arrayMapper, $object);
	}
}
