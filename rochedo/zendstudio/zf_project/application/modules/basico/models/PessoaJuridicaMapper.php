<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * PessoaJuridica data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_PessoaJuridica
 * @subpackage Model
 */
class Basico_Model_PessoaJuridicaMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_PessoaJuridicaMapper
     */
    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception(MSG_ERRO_TABLE_DATA_GATEWAY_INVALIDO);
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_PessoaJuridica if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_PessoaJuridica');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a PessoaJuridica entry
     * 
     * @param  Basico_Model_PessoaJuridica $object
     * @return void
     */
    public function save(Basico_Model_PessoaJuridica $object)
    {
        $data = array(
				'nivel_hierarquia'   			 => $object->getNivelHierarquia(),
        		'id_pessoa_juridica_pai'         => $object->getPessoaJuridicaPai(),
                'id_categoria'   				 => $object->getCategoria(),
                'id_pessoa_responsavel_cadastro' => $object->getPessoaResponsavelCadastro(),
        		'id_natureza_pessoa_juridica'    => $object->getNaturezaPessoaJuridica(),
        		'id_area_economia_default'       => $object->getAreaEconomiaDefault(),
                'id_telefone_default'            => $object->getTelefoneDefault(),
                'id_email_default'   			 => $object->getEmailDefault(),
        		'id_website_default'   			 => $object->getWebsiteDefault(),
                'id_endereco_correspondencia'    => $object->getEnderecoCorrespondencia(),
                'id_endereco_default'  			 => $object->getEnderecoDefault(),
				'data_criacao'                   => $object->getDataCriacao(),
				'data_ultima_modificacao'        => $object->getDataUltimaModificacao(),
        		'rowinfo'						 => $object->rowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a PessoaJuridica entry
	* @param Basico_Model_PessoaJuridica $object
	* @return void
	*/
	public function delete(Basico_Model_PessoaJuridica $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a PessoaJuridica entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_PessoaJuridica $object 
     * @return void
     */
    public function find($id, Basico_Model_PessoaJuridica $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
			   ->setNivelHierarquia($row->nivel_hierarquia)
			   ->setPessoaJuridicaPai($row->id_pessoa_juridica_pai)
               ->setCategoria($row->id_categoria)
               ->setPessoaResponsavelCadastro($row->id_pessoa_responsavel_cadastro)
               ->setNaturezaJuridica($row->id_natureza_pessoa_juridica)
               ->setAreaEconomiaDefault($row->id_area_economia_default)
               ->setTelefoneDefault($row->id_telefone_default)
               ->setEmailDefault($row->id_email_default)               
               ->setWebsiteDefault($row->id_website_default)
               ->setEnderecoCorrespondencia($row->id_endereco_correspondencia)
               ->setEnderecoDefault($row->id_endereco_default)
			   ->setDataCriacao($row->data_criacao)
			   ->setDataUltimaModificacao($row->data_ultima_modificacao)
               ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all pessoajuridica entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_PessoaJuridica();
			$entry->setId($row->id)
				  ->setNivelHierarquia($row->nivel_hierarquia)
			      ->setPessoaJuridicaPai($row->id_pessoa_juridica_pai)
                  ->setCategoria($row->id_categoria)
               	  ->setPessoaResponsavelCadastro($row->id_pessoa_responsavel_cadastro)
               	  ->setNaturezaJuridica($row->id_natureza_pessoa_juridica)
               	  ->setAreaEconomiaDefault($row->id_area_economia_default)
               	  ->setTelefoneDefault($row->id_telefone_default)
               	  ->setEmailDefault($row->id_email_default)               
               	  ->setWebsiteDefault($row->id_website_default)
               	  ->setEnderecoCorrespondencia($row->id_endereco_correspondencia)
               	  ->setEnderecoDefault($row->id_endereco_default)
			   	  ->setDataCriacao($row->data_criacao)
			   	  ->setDataUltimaModificacao($row->data_ultima_modificacao)
               	  ->setRowinfo($row->rowinfo)
               	  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all pessoajuridica entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_PessoaJuridica();
			$entry->setId($row->id)
				  ->setNivelHierarquia($row->nivel_hierarquia)
			      ->setPessoaJuridicaPai($row->id_pessoa_juridica_pai)
                  ->setCategoria($row->id_categoria)
               	  ->setPessoaResponsavelCadastro($row->id_pessoa_responsavel_cadastro)
               	  ->setNaturezaJuridica($row->id_natureza_pessoa_juridica)
               	  ->setAreaEconomiaDefault($row->id_area_economia_default)
               	  ->setTelefoneDefault($row->id_telefone_default)
               	  ->setEmailDefault($row->id_email_default)               
               	  ->setWebsiteDefault($row->id_website_default)
               	  ->setEnderecoCorrespondencia($row->id_endereco_correspondencia)
               	  ->setEnderecoDefault($row->id_endereco_default)
			   	  ->setDataCriacao($row->data_criacao)
			   	  ->setDataUltimaModificacao($row->data_ultima_modificacao)
               	  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
