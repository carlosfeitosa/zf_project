<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * AcaoAplicacaoAssocclMetodoValidacao data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_AcaoAplicacaoAssocclMetodoValidacao
 * @subpackage Model
 */
class Basico_Model_AcaoAplicacaoAssocclMetodoValidacaoMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_AcaoAplicacaoAssocclMetodoValidacao if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_AcaoAplicacaoAssocclMetodoValidacao')
    {
       return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a LearningBasket entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_AcaoAplicacaoAssocclMetodoValidacao $object 
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
               ->setAcaoAplicacao($row->id_acao_aplicacao)
               ->setMetodoValidacao($row->id_metodo_validacao)
               ->setPerfil($row->id_perfil)
               ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all Basico_Model_AcaoAplicacaoAssocclMetodoValidacao entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_AcaoAplicacaoAssocclMetodoValidacao();
            $entry->setId($row->id)
                  ->setAcaoAplicacao($row->id_acao_aplicacao)
                  ->setMetodoValidacao($row->id_metodo_validacao)
                  ->setPerfil($row->id_perfil)
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all learningbasket entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_AcaoAplicacaoAssocclMetodoValidacao();
            $entry->setId($row->id)
                  ->setAcaoAplicacao($row->id_acao_aplicacao)
                  ->setMetodoValidacao($row->id_metodo_validacao)
                  ->setPerfil($row->id_perfil)
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Save a LearningBasket entry
     * 
     * @param  Basico_Model_AcaoAplicacaoAssocclMetodoValidacao $object
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
                'id_acao_aplicacao'   => $object->getAcaoAplicacao(),
                'id_metodo_validacao' => $object->getMetodoValidacao(),
        		'id_perfil'           => $object->getPerfil(),
        		'rowinfo'             => $object->getRowinfo(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
    /**
    * Delete a AcaoAplicacaoAssocclMetodoValidacao entry
    * @param Basico_Model_AcaoAplicacaoAssocclMetodoValidacao $object
    * @return void
    */
    public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }
}