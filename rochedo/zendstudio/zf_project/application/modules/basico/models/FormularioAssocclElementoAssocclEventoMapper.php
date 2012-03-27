<?php
/**
 * FormularioAssocclElementoAssocclEvento data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioAssocclElementoAssocclEvento
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoAssocclEventoMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioAssocclElementoAssocclEvento if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_FormularioAssocclElementoAssocclEvento')
    {
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a FormularioAssocclElementoAssocclEvento entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioAssocclElementoAssocclEvento $object 
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
        		->setIdAssocclElemento($row->id_assoccl_elemento)
               	->setIdEvento($row->id_evento)
               	->setIdAcaoEvento($row->id_acao_evento)
               	->setOrdem($row->ordem)
               	->setDataHoraCriacao($row->datahora_criacao)
               	->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
               	->setRowinfo($row->rowinfo);
    }
    
    /**
     * Fetch all FormulariosFormulariosElementosFormulariosElementosValidators entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioAssocclElementoAssocclEvento();
            $entry->setId($row->id)
               	->setIdAssocclElemento($row->id_assoccl_elemento)
               	->setIdEvento($row->id_evento)
               	->setIdAcaoEvento($row->id_acao_evento)
               	->setOrdem($row->ordem)
               	->setDataHoraCriacao($row->datahora_criacao)
               	->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
               	->setRowinfo($row->rowinfo)
               	->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all FormularioAssocclElementoAssocclEvento entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioAssocclElementoAssocclEvento();
            $entry->setId($row->id)
	               	->setIdAssocclElemento($row->id_assoccl_elemento)
	               	->setIdEvento($row->id_evento)
	               	->setIdAcaoEvento($row->id_acao_evento)
	               	->setOrdem($row->ordem)
	               	->setDataHoraCriacao($row->datahora_criacao)
	               	->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
	               	->setRowinfo($row->rowinfo)
	               	->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Save a FormularioAssocclElementoAssocclEvento entry
     * 
     * @param  Basico_Model_FormularioAssocclElementoAssocclEvento $object
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
                'id_assoccl_elemento'         => $object->getIdAssocclElemento(),
                'id_evento' 				  => $object->getIdEvento(),
                'id_acao_evento' 		      => $object->getIdAcaoEvento(),
        		'ordem'                       => $object->getOrdem(),
           		'datahora_criacao'            => $object->getDataHoraCriacao(),
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
    * Delete a FormularioAssocclElementoAssocclEvento entry
    * @param Basico_Model_FormularioAssocclElementoAssocclEvento $object
    * @return void
    */
    public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }
}