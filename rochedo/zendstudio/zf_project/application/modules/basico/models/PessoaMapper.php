<?php
/**
 * Pessoa data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Pessoa
 * @subpackage Model
 */
class Basico_Model_PessoaMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Pessoa if no instance registered
     * 
     * @return Basico_Model_DbTable_Pessoa
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_Pessoa')
    {
        return parent::getDbTable($dbTable);
    }

    /**
     * Find a Pessoa entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Pessoa $object 
     * 
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
        	   ->setIdPerfilPadrao($row->id_perfil_padrao)
        	   ->setIdTelefoneDefault($row->id_telefone_default)
        	   ->setIdEmailDefault($row->id_email_default)
        	   ->setIdEnderecoDefault($row->id_endereco_default)
        	   ->setIdEnderecoCorrespondencia($row->id_endereco_correspondencia)
        	   ->setIdLinkDefault($row->id_link_default)
        	   ->setDatahoraCriacao($row->datahora_criacao)
        	   ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
               ->setRowinfo($row->rowinfo);
    }
    
	/**
	 * Fetch all pessoa entries
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
				->setIdPerfilPadrao($row->id_perfil_padrao)
				->setIdTelefoneDefault($row->id_telefone_default)
				->setIdEmailDefault($row->id_email_default)
				->setIdEnderecoDefault($row->id_endereco_default)
				->setIdEnderecoCorrespondencia($row->id_endereco_correspondencia)
				->setIdLinkDefault($row->id_link_default)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

	/**
	 * Fetch all pessoa entries
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
				->setIdPerfilPadrao($row->id_perfil_padrao)
				->setIdTelefoneDefault($row->id_telefone_default)
				->setIdEmailDefault($row->id_email_default)
				->setIdEnderecoDefault($row->id_endereco_default)
				->setIdEnderecoCorrespondencia($row->id_endereco_correspondencia)
				->setIdLinkDefault($row->id_link_default)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

    /**
     * Save a Pessoa entry
     *
     * @param  Basico_Model_Pessoa $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
        			  'id_perfil_padrao' 		     => $object->getIdPerfilPadrao(),
        			  'id_telefone_default' 	     => $object->getIdTelefoneDefault(),
        			  'id_email_default' 		     => $object->getIdEmailDefault(),
        			  'id_endereco_default' 	     => $object->getIdEnderecoDefault(),
        			  'id_endereco_correspondencia'  => $object->getIdEnderecoCorrespondencia(),
        			  'id_link_default' 		     => $object->getIdLinkDefault(),
        			  'datahora_criacao' 		     => $object->getDatahoraCriacao(),
        			  'datahora_ultima_atualizacao'  => $object->getDatahoraUltimaAtualizacao(),
                      'rowinfo'          		     => $object->getRowinfo(),
                     );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }

	/**
	* Delete a Pessoa entry
	* 
	* @param Basico_Model_Pessoa $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}