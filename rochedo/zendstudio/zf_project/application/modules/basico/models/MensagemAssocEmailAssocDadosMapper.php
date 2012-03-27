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
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_MensagemAssocEmailAssocDados if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_MensagemAssocEmailAssocDados')
    {
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a MensagemAssocEmailAssocDados entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_MensagemAssocEmailAssocDados $object 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
				->setIdAssocEmail($row->id_assoc_email)
				->setDestinatariosCopiaCarbonada($row->destinatariosCopiaCarbonada)
				->setDestinatariosCopiaCarbonadaOculta($row->destinatariosCopiaCarbonadaOculta)
				->setResponderPara($row->responderPara)
                ->setPrioridade($row->prioridade)
                ->setSolicitacaoConfirmacaoLeitura($row->solicitacao_confirm_leitura)
                ->setDatahoraConfirmacaoLeitura($row->datahora_confirmacao_leitura)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all MensagemAssocEmailAssocDados entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_MensagemAssocEmailAssocDados();
			$entry->setId($row->id)

				->setIdAssocEmail($row->id_assoc_email)
				->setDestinatariosCopiaCarbonada($row->destinatariosCopiaCarbonada)
				->setDestinatariosCopiaCarbonadaOculta($row->destinatariosCopiaCarbonadaOculta)
				->setResponderPara($row->responderPara)
                ->setPrioridade($row->prioridade)
                ->setSolicitacaoConfirmacaoLeitura($row->solicitacao_confirm_leitura)
                ->setDatahoraConfirmacaoLeitura($row->datahora_confirmacao_leitura)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all MensagemAssocEmailAssocDados entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_MensagemAssocEmailAssocDados();
			$entry->setId($row->id)

				->setIdAssocEmail($row->id_assoc_email)
				->setDestinatariosCopiaCarbonada($row->destinatariosCopiaCarbonada)
				->setDestinatariosCopiaCarbonadaOculta($row->destinatariosCopiaCarbonadaOculta)
				->setResponderPara($row->responderPara)
                ->setPrioridade($row->prioridade)
                ->setSolicitacaoConfirmacaoLeitura($row->solicitacao_confirm_leitura)
                ->setDatahoraConfirmacaoLeitura($row->datahora_confirmacao_leitura)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a MensagemAssocEmailAssocDados entry
     * 
     * @param  Basico_Model_MensagemAssocEmailAssocDados $object
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
        		'id_assoc_email'                       => $object->getIdAssocEmail(),
				'destinatarios_copia_carbonada'        => $object->getDestinatariosCopiaCarbonada(),
				'destinatarios_copia_carbonada_oculta' => $object->getDestinatariosCopiaCarbonadaOculta(),
				'responder_para'                       => $object->getResponderPara(),
              	'prioridade'                           => $object->getPrioridade(),
        		'solicitacao_confirm_leitura'          => $object->getSolicitacaoConfirmacaoLeitura(),
        		'datahora_confirmacao_leitura'         => $object->getDatahoraConfirmacaoLeitura(),
        		'datahora_criacao'                     => $object->getDatahoraCriacao(),
        		'datahora_ultima_atualizacao'          => $object->getDatahoraUltimaAtualizacao(),
        		'rowinfo'                              => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a MensagemAssocEmailAssocDados entry
	* @param Basico_Model_MensagemAssocEmailAssocDados $object
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}
