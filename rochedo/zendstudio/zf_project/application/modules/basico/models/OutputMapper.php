<?php
/**
 * Output data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Output
 * @subpackage Model
 */
class Basico_Model_OutputMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Output if no instance registered
     * 
     * @return Basico_Model_DbTable_Output
     */
    public function getDbTable()
    {
    	return parent::getDbTable('Basico_Model_DbTable_Output');
    }
    
    /**
     * Save a Output entry
     * 
     * @param  Basico_Model_Output $object
     * @return void
     */
    public function save(Basico_Model_Output $object)
    {
        $data = array(
				'id_categoria'					=> $object->getIdCategoria(),
        		'nome'        					=> $object->getNome(),
        		'constante_textual'   			=> $object->getConstanteTextual(),
				'constante_textual_descricao'	=> $object->getConstanteTextualDescricao(),
        		'contexto'     					=> $object->getContexto(),
        		'Ativo'        					=> $object->getAtivo(),
        		'datahora_criacao'				=> $object->getDatahoraCriacao(),
        		'datahora_ultima_atualizacao'	=> $object->getDatahoraUltimaAtualizacao(),
                'rowinfo'    					=> $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Output entry
	* @param Basico_Model_Output $object
	* @return void
	*/
	public function delete(Basico_Model_Output $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Output entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Output $object 
     * @return void
     */
    public function find($id, Basico_Model_Output $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setNome($row->nome)
				->setConstanteTextua($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setContexto($row->contexto)
				->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo);
    }
    
	/**
	 * Fetch all output entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Output();
			$entry->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setNome($row->nome)
				->setConstanteTextua($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setContexto($row->contexto)
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
	 * Fetch all output entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Output();
			$entry->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setNome($row->nome)
				->setConstanteTextua($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setContexto($row->contexto)
				->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}