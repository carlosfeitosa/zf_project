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
class Basico_Model_PessoaLoginMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPersistencia, Interface_RochedoMapperPesquisa
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_PessoaLogin if no instance registered
     * 
     * @return Basico_Model_DbTable_PessoaLogin
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_PessoaLogin');
    }
    
    /**
     * Save a Login entry
     * 
     * @param  Basico_Model_PessoaLogin $object
     * @return void
     */
    public function save(Basico_Model_PessoaLogin $object)
    {
        $data = array(
                      'id_pessoa'                       => $object->getIdPessoa(),
    				  'login'                           => $object->getLogin(),
    				  'senha'                           => $object->getSenha(),
    				  'ativo'                           => $object->getAtivo(),
    				  'tentativas_falhas'               => $object->getTentativasFalhas(),
    				  'travado'                         => $object->getTravado(),
    				  'resetado'  				        => $object->getResetado(),
    				  'datahora_ultimo_logon'           => $object->getDataHoraUltimoLogon(),
    				  'pode_expirar'  			        => $object->getPodeExpirar(),
    				  'datahora_proxima_expiracao'      => $object->getDataHoraProximaExpiracao(),
    				  'datahora_ultima_expiracao'       => $object->getDataHoraUltimaExpiracao(),
        			  'datahora_expiracao_senha'        => $object->getDataHoraExpiracaoSenha(),
                      'datahora_ultima_tentativa_falha' => $object->getDataHoraUltimaTentativaFalha(),
                      'datahora_ultimo_reset'           => $object->getDataHoraUltimoReset(),
                      'datahora_ultima_troca_senha'     => $object->getDataHoraUltimaTrocaSenha(),
        			  'datahora_aceite_termo_uso'      => $object->getDataHoraAceiteTermoUso(),
        			  'datahora_criacao'				=> $object->getDataHoraCriacao(),
        			  'datahora_ultima_atualizacao'     => $object->getDataHoraUltimaAtualizacao(),
                      'rowinfo'                    => $object->getRowinfo(),
                    );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Login entry
	* @param Basico_Model_PessoaLogin $object
	* @return void
	*/
	public function delete(Basico_Model_Login $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Login entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_PessoaLogin $object 
     * @return void
     */
    public function find($id, Basico_Model_Login $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setIdPessoa($row->id_pessoa)
			   ->setLogin($row->login)
			   ->setSenha($row->senha)
			   ->setAtivo($row->ativo)
			   ->setTentativasFalhas($row->tentativas_falhas)
			   ->setTravado($row->travado)
			   ->setResetado($row->resetado)
			   ->setDataHoraUltimoLogon($row->datahora_ultimo_logon)
			   ->setPodeExpirar($row->pode_expirar)
			   ->setDataHoraProximaExpiracao($row->datahora_proxima_expiracao)
			   ->setDataHoraUltimaExpiracao($row->datahora_ultima_expiracao)
			   ->setDataHoraExpiracaoSenha($row->datahora_expiracao_senha)
			   ->setDataHoraUltimaTentativaFalha($row->datahora_ultima_tentativa_falha)
			   ->setDataHoraUltimoReset($row->datahora_ultimo_reset)
			   ->setDataHoraUltimaTrocaSenha($row->datahora_ultima_troca_senha)
			   ->setDataHoraAceiteTermoUso($row->datahora_aceite_termo_uso)
			   ->setDataHoraCriacao($row->datahora_criacao)
			   ->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
			   ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all login entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Login();
			$entry->setId($row->id)
			      ->setIdPessoa($row->id_pessoa)
				  ->setLogin($row->login)
				  ->setSenha($row->senha)
				  ->setAtivo($row->ativo)
				  ->setTentativasFalhas($row->tentativas_falhas)
				  ->setTravado($row->travado)
				  ->setResetado($row->resetado)
				  ->setDataHoraUltimoLogon($row->datahora_ultimo_logon)
				  ->setPodeExpirar($row->pode_expirar)
				  ->setDataHoraProximaExpiracao($row->datahora_proxima_expiracao)
				  ->setDataHoraUltimaExpiracao($row->datahora_ultima_expiracao)
				  ->setDataHoraExpiracaoSenha($row->datahora_expiracao_senha)
				  ->setDataHoraUltimaTentativaFalha($row->datahora_ultima_tentativa_falha)
			      ->setDataHoraUltimoReset($row->datahora_ultimo_reset)
			      ->setDataHoraUltimaTrocaSenha($row->datahora_ultima_troca_senha)
			      ->setDataHoraAceiteTermoUso($row->datahora_aceite_termo_uso)
			      ->setDataHoraCriacao($row->datahora_criacao)
			      ->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all login entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Login();
			$entry->setId($row->id)
			      ->setIdPessoa($row->id_pessoa)
				  ->setLogin($row->login)
				  ->setSenha($row->senha)
				  ->setAtivo($row->ativo)
				  ->setTentativasFalhas($row->tentativas_falhas)
				  ->setTravado($row->travado)
				  ->setResetado($row->resetado)
				  ->setDataHoraUltimoLogon($row->datahora_ultimo_logon)
				  ->setPodeExpirar($row->pode_expirar)
				  ->setDataHoraProximaExpiracao($row->datahora_proxima_expiracao)
				  ->setDataHoraUltimaExpiracao($row->datahora_ultima_expiracao)
				  ->setDataHoraExpiracaoSenha($row->datahora_expiracao_senha)
				  ->setDataHoraUltimaTentativaFalha($row->datahora_ultima_tentativa_falha)
			      ->setDataHoraUltimoReset($row->datahora_ultimo_reset)
			      ->setDataHoraUltimaTrocaSenha($row->datahora_ultima_troca_senha)
			      ->setDataHoraAceiteTermoUso($row->datahora_aceite_termo_uso)
			      ->setDataHoraCriacao($row->datahora_criacao)
			      ->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}