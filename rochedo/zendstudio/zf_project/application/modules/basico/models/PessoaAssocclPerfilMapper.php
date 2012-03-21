<?php
/**
 * PessoaAssocclPerfil data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_PessoaAssocclPerfil
 * @subpackage Model
 */
class Basico_Model_DbTable_PessoaAssocclPerfilMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPersistencia, Interface_RochedoMapperPesquisa
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_PessoaAssocclPerfil if no instance registered
     * 
     * @return Basico_Model_DbTable_PessoaAssocclPerfil
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_PessoaAssocclPerfil');
    }	
    
    /**
     * Find a PessoaAssocclPerfil entry by id
     * 
     * @param  int $id 
     * 
     * @param  Basico_Model_PessoaAssocclPerfil $object 
     * 
     * @return void
     */
    public function find($id, Basico_Model_PessoaAssocclPerfil $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setIdPessoa($row->id_pessoa)
               ->setIdPerfil($row->id_perfil)
               ->setAtivo($row->ativo)
               ->setDatahoraCriacao($row->datahora_criacao)
               ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
               ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all PessoaAssocclPerfil entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_PessoaAssocclPerfil();
            $entry->setId($row->id)
                ->setPessoa($row->id_pessoa)
                ->setPerfil($row->id_perfil)
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
     * Fetch all PessoaAssocclPerfil entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_PessoaAssocclPerfil();
            $entry->setId($row->id)
                  ->setPessoa($row->id_pessoa)
                  ->setPerfil($row->id_perfil)
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
     * Save a PessoaAssocclPerfil entry
     * 
     * @param  Basico_Model_PessoaAssocclPerfil $object
     * 
     * @return void
     */
    public function save(Basico_Model_PessoaAssocclPerfil $object)
    {
        $data = array(
                'id_pessoa'                   => $object->getPessoa(),
                'id_perfil'                   => $object->getPerfil(),
        		'ativo'						  => $object->getAtivo(),
        		'datahora_criacao'            => $object->getDatahoraCriacao(),
        		'datahora_ultima_atualizacao' => $object->getDataHoraUltimaAtualizacao(),
        		'rowinfo'                     => $object->getRowinfo(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
   /**
    * Delete a PessoaPerfil entry
    * 
    * @param Basico_Model_PessoaAssocclPerfil $object
    * 
    * @return void
    */
    public function delete(Basico_Model_PessoaAssocclPerfil $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    } 
}