<?php 
/**
 * AcaoAplicacaoAssocclPerfil data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_AcaoAplicacaoAssocclPerfil
 * @subpackage Model
 */
class Basico_Model_AcaoAplicacaoAssocclPerfilMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_TipoCategoria if no instance registered
     * 
     * @return Basico_Model_TipoCategoria
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_AcaoAplicacaoAssocclPerfil');
    }
	
    /**
     * Find a AcaoAplicacaoAssocclPerfil entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_AcaoAplicacaoAssocclPerfil $object 
     * @return void
     */
    public function find($id, Basico_Model_AcaoAplicacaoAssocclPerfil $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setIdAcaoAplicacao($row->id_acao_aplicacao)
               ->setIdPerfil($row->id_perfil)
               ->setDatahoraCriacao($row->datahora_criacao)
               ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all AcaoAplicacaoAssocclPerfil entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_AcaoAplicacaoAssocclPerfil();
            $entry->setId($row->id)
                  ->setIdAcaoAplicacao($row->id_acao_aplicacao)
                  ->setIdPerfil($row->id_perfil)
                  ->setDatahoraCriacao($row->datahora_criacao)
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all AcaoAplicacaoAssocclPerfil entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_AcaoAplicacaoAssocclPerfil();
            $entry->setId($row->id)
                  ->setIdAcaoAplicacao($row->id_acao_aplicacao)
                  ->setIdPerfil($row->id_perfil)
                  ->setDatahoraCriacao($row->datahora_criacao)
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Save a AcaoAplicacaoAssocclPerfil entry
     * 
     * @param  Basico_Model_AcaoAplicacaoAssocclPerfil $object
     * 
     * @return void
     */
    public function save(Basico_Model_AcaoAplicacaoAssocclPerfil $object)
    {
        $data = array(
                'id_acao_aplicacao' => $object->getAcaoIdAplicacao(),
                'id_perfil'         => $object->getIdPerfil(),        
        		'datahora_criacao'  => $object->getDatahoraCriacao(),
        		'rowinfo'           => $object->getRowinfo(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
    /**
    * Delete a AcaoAplicacaoAssocclPerfil entry
    * 
    * @param Basico_Model_AcaoAplicacaoAssocclPerfil $object
    * 
    * @return void
    */
    public function delete(Basico_Model_AcaoAplicacaoAssocclPerfil $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }
    
}