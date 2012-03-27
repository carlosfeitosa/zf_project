<?php
/**
 * SequenciaAssocsqAcaoAplicacao data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_SequenciaAssocsqAcaoAplicacao
 * @subpackage Model
 */
class Basico_Model_SequenciaAssocsqAcaoAplicacaoMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_SequenciaAssocsqAcaoAplicacao if no instance registered
     * 
     * @return Basico_Model_DbTable_SequenciaAssocsqAcaoAplicacao
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_SequenciaAssocsqAcaoAplicacao');
    }

    /**
     * Find a SequenciaAssocsqAcaoAplicacao entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_SequenciaAssocsqAcaoAplicacao $object 
     * 
     * @return void
     */
    public function find($id, Basico_Model_SequenciaAssocsqAcaoAplicacao $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object ->setId($row->id)
				->setIdCategoria($row->id_categoria)
        		->setIdSequencia($row->id_sequencia)
				->setIdAcaoAplicacao($row->id_acao_aplicacao)
				->setNome($row->nome)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setPasso($row->passo)
				->setAtivo($row->ativo)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all SequenciaAssocsqAcaoAplicacao entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_SequenciaAssocsqAcaoAplicacao();
			$entry->setId($row->id)
				  ->setIdCategoria($row->id_categoria)
        		  ->setIdSequencia($row->id_sequencia)
				  ->setIdAcaoAplicacao($row->id_acao_aplicacao)
				  ->setNome($row->nome)
				  ->setConstanteTextual($row->constante_textual)
				  ->setConstanteTextualDescricao($row->constante_textual_descricao)
				  ->setPasso($row->passo)
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
	 * Fetch all SequenciaAssocsqAcaoAplicacao entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_SequenciaAssocsqAcaoAplicacao();
			$entry->setId($row->id)
				  ->setIdCategoria($row->id_categoria)
        		  ->setIdSequencia($row->id_sequencia)
				  ->setIdAcaoAplicacao($row->id_acao_aplicacao)
				  ->setNome($row->nome)
				  ->setConstanteTextual($row->constante_textual)
				  ->setConstanteTextualDescricao($row->constante_textual_descricao)
				  ->setPasso($row->passo)
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
     * Save a SequenciaAssocsqAcaoAplicacao entry
     * 
     * @param  Basico_Model_SequenciaAssocsqAcaoAplicacao $object
     * 
     * @return void
     */
    public function save(Basico_Model_SequenciaAssocsqAcaoAplicacao $object)
    {
        $data = array(
			          'id_categoria'        	    => $object->getIdMetodoValidacao(),
                      'id_sequencia'	            => $object->getIdInclude(),
        			  'id_acao_aplicacao'  		    => $object->getIdAcaoAplicacao(),
        			  'nome'					    => $object->getNome(),
         	          'constante_textual' 		    => $object->getConstanteTextual(),
                      'constante_textual_descricao' => $object->getConstanteTextualDescricao(),
        			  'passo'  						=> $object->getPasso(),
        			  'ativo' 						=> $object->getAtivo(),        		      
        		      'datahora_criacao' 			=> $object->getDatahoraCriacao(),
        			  'datahora_ultima_atualizacao' => $object->getDatahoraUltimaAtualizacao(),
        		      'rowinfo'          			=> $object->getRowinfo(),
                     );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a SequenciaAssocsqAcaoAplicacao entry
	* 
	* @param Basico_Model_SequenciaAssocsqAcaoAplicacao $object
	* 
	* @return void
	*/
	public function delete(Basico_Model_SequenciaAssocsqAcaoAplicacao $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}	
}