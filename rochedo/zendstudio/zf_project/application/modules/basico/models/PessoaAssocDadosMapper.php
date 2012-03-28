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
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_DadosPessoais if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_PessoaAssocDados')
    {
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a DadosPessoais entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_DadosPessoais $object 
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
                ->setIdPessoa($row->id_pessoa)
				->setNome($row->nome)
				->setDataNascimento($row->data_nascimento)
				->setConstanteTextualPaisNascimento($row->constante_textual_pais_nasc)
				->setNomeUfNascimento($row->nome_uf_nascimento)
				->setNomeMunicipioNascimento($row->nome_municipio_nascimento)
				->setNomePai($row->nome_pai)
				->setNomeMae($row->nome_mae)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all dadospessoais entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_PessoaAssocDados();
			$entry->setId($row->id)
	                ->setIdPessoa($row->id_pessoa)
					->setNome($row->nome)
					->setDataNascimento($row->data_nascimento)
					->setConstanteTextualPaisNascimento($row->constante_textual_pais_nasc)
					->setNomeUfNascimento($row->nome_uf_nascimento)
					->setNomeMunicipioNascimento($row->nome_municipio_nascimento)
					->setNomePai($row->nome_pai)
					->setNomeMae($row->nome_mae)
					->setDatahoraCriacao($row->datahora_criacao)
					->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
					->setRowinfo($row->rowinfo)
					->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all dadospessoais entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_PessoaAssocDados();
			$entry->setId($row->id)
	                ->setIdPessoa($row->id_pessoa)
					->setNome($row->nome)
					->setDataNascimento($row->data_nascimento)
					->setConstanteTextualPaisNascimento($row->constante_textual_pais_nasc)
					->setNomeUfNascimento($row->nome_uf_nascimento)
					->setNomeMunicipioNascimento($row->nome_municipio_nascimento)
					->setNomePai($row->nome_pai)
					->setNomeMae($row->nome_mae)
					->setDatahoraCriacao($row->datahora_criacao)
					->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
					->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a DadosPessoais entry
     * 
     * @param  Basico_Model_DadosPessoais $object
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {       
        $data = array(
                      'id_pessoa'       			=> $object->getIdPessoa(),
                      'nome'            			=> $object->getNome(),
        			  'data_nascimento' 			=> $object->getDataNascimento(),
        			  'constante_textual_pais_nasc' => $object->getConstanteTextualPaisNascimento(),
        			  'nome_uf_nascimento'			=> $object->getNomeUfNascimento(),
        			  'nome_municipio_nascimento'	=> $object->getNomeMunicipioNascimento(),
        			  'nome_pai'        			=> $object->getNomePai(),
        			  'nome_mae'        			=> $object->getNomeMae(),
        			  'datahora_criacao'			=> $object->getDatahoraCriacao(),
        			  'datahora_ultima_atualizacao'	=> $object->getDatahoraUltimaAtualizacao(),
                      'rowinfo'   	  	    		=> $object->getRowinfo(),
                     );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }

	/**
	* Delete a DadosPessoais entry
	* @param Basico_Model_DadosPessoais $object
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}