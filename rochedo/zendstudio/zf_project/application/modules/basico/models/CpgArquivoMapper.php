<?php
/**
 * CpgArquivo data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_CpgArquivo
 * @subpackage Model
 */
class Basico_Model_CpgArquivoMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_CpgArquivo if no instance registered
     * 
     * @return Basico_Model_DbTable_CpgArquivo
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_CpgArquivo');
    }

    /**
     * Find a CpgArquivo entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_CpgArquivo $object 
     * 
     * @return void
     */
    public function find($id, Basico_Model_CpgArquivo $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setIdGenericoProprietario($row->id_generico_proprietario)
				->setNome($row->nome)
				->setConstateTextual($row->constante_textual)
				->setConstateTextualDescricao($row->constante_textual_descricao)
				->setNomeOriginal($row->nomeOriginal)
				->setNomeSugestao($row->nomeSugestao)
				->setTamanhoKylobytes($row->tamanhoKylobytes)
				->setMimeType($row->mimeType)
				->setUri($row->uri)
				->setRemoto($row->remoto)
				->setHits($row->hits)
				->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo);
    }
    
	/**
	 * Fetch all CpgArquivo entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Pessoa();
			$entry->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setIdGenericoProprietario($row->id_generico_proprietario)
				->setNome($row->nome)
				->setConstateTextual($row->constante_textual)
				->setConstateTextualDescricao($row->constante_textual_descricao)
				->setNomeOriginal($row->nomeOriginal)
				->setNomeSugestao($row->nomeSugestao)
				->setTamanhoKylobytes($row->tamanhoKylobytes)
				->setMimeType($row->mimeType)
				->setUri($row->uri)
				->setRemoto($row->remoto)
				->setHits($row->hits)
				->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

	/**
	 * Fetch all CpgArquivo entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Pessoa();
			$entry->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setIdGenericoProprietario($row->id_generico_proprietario)
				->setNome($row->nome)
				->setConstateTextual($row->constante_textual)
				->setConstateTextualDescricao($row->constante_textual_descricao)
				->setNomeOriginal($row->nome_original)
				->setNomeSugestao($row->nome_sugestao)
				->setTamanhoKylobytes($row->tamanho_kylobytes)
				->setMimeType($row->mime_type)
				->setUri($row->uri)
				->setRemoto($row->remoto)
				->setHits($row->hits)
				->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

    /**
     * Save a CpgArquivo entry
     *
     * @param  Basico_Model_CpgArquivo $object
     * 
     * @return void
     */
    public function save(Basico_Model_CpgArquivo $object)
    {
        $data = array(
        			  'id_categoria' => $object->getIdCategoria(),
        			  'id_generico_proprietario' => $object->getIdGenericoProprietario(),
					  'Nome' => $object->getNome(),
        			  'ConstanteTextual' => $object->getConstanteTextual(),
        			  'ConstanteTextualDescricao' => $object->getConstanteTextualDescricao(),
        			  'NomeOriginal' =>  $object->getNomeOriginal(),
        			  'NomeSugestao' =>  $object->getNomeSugestao(),
        			  'TamanhoKylobytes' =>  $object->getTamanhoKylobytes(),        			  
        			  'MimeType' =>  $object->getMimeType(),
        			  'Uri' =>  $object->getUri(),
        			  'Remoto' =>  $object->getRemoto(),
        			  'Hits' =>  $object->getHits(),
        			  'Ativo' =>  $object->getAtivo(),
        			  'datahora_criacao' => $object->getDatahoraCriacao(),
        			  'datahora_ultima_atualizacao' => $object->getDatahoraUltimaAtualizacao(),
                      'rowinfo'          => $object->getRowinfo(),
                     );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }

	/**
	* Delete a CpgArquivo entry
	* 
	* @param Basico_Model_CpgArquivo $object
	* 
	* @return void
	*/
	public function delete(Basico_Model_CpgArquivo $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}