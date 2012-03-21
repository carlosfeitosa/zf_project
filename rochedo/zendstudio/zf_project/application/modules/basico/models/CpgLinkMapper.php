<?php
/**
 * CpgLink data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_CpgLink
 * @subpackage Model
 */
class Basico_Model_CpgLinkMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_CpgLink if no instance registered
     * 
     * @return Basico_Model_DbTable_CpgLink
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_CpgLink');
    }

    /**
     * Find a CpgLink entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_CpgLink $object 
     * 
     * @return void
     */
    public function find($id, Basico_Model_CpgLink $object)
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
				->setUrl($row->url)
				->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo);
    }
    
	/**
	 * Fetch all CpgLink entries
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
				->setUrl($row->url)
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
	 * Fetch all CpgLink entries
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
				->setUrl($row->url)
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
     * Save a CpgLink entry
     *
     * @param  Basico_Model_CpgLink $object
     * 
     * @return void
     */
    public function save(Basico_Model_CpgLink $object)
    {
        $data = array(
        			  'id_categoria' => $object->getIdCategoria(),
        			  'id_generico_proprietario' => $object->getIdGenericoProprietario(),
					  'Nome' => $object->getNome(),
        			  'ConstanteTextual' => $object->getConstanteTextual(),
        			  'ConstanteTextualDescricao' => $object->getConstanteTextualDescricao(),
        			  'Url' =>  $object->getUrl(),
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
	* Delete a CpgLink entry
	* 
	* @param Basico_Model_CpgLink $object
	* 
	* @return void
	*/
	public function delete(Basico_Model_CpgLink $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}