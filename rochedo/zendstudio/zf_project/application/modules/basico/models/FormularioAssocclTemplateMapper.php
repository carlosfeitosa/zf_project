<?php
/**
 * FormularioAssocclTemplate data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioAssocclTemplate
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclTemplateMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioAssocclTemplate if no instance registered
     * 
     * @return Basico_Model_DbTable_FormularioAssocclTemplate
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_FormularioAssocclTemplate')
    {
        return parent::getDbTable($dbTable);
    }
    
    /**
     * Save a LearningBasket entry
     * 
     * @param  Basico_Model_FormularioAssocclTemplate $object
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
                'id_template' => $object->getIdTemplate(),
                'id_formulario' => $object->getIdFormulario(),
        		'datahora_criacao' => $object->getDataHoraCriacao(),
                'rowinfo'    => $object->getRowinfo(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
    /**
    * Delete a TemplateFormulario entry
    * @param Basico_Model_TemplateFormulario $object
    * @return void
    */
    public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }

    /**
     * Find a LearningBasket entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioAssocclTemplate $object 
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
               ->setIdTemplate($row->id_template)
               ->setIdFormulario($row->id_formulario)
               ->setDatahoraCriacao($row->datahora_criacao)
               ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all FormularioAssocclTemplate entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioAssocclTemplate();
            $entry->setId($row->id)
                ->setIdTemplate($row->id_template)
                ->setIdFormulario($row->id_formulario)
                ->setDatahoraCriacao($row->datahora_criacao)
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
            $entry = new Basico_Model_FormularioAssocclTemplate();
            $entry->setId($row->id)
                  ->setIdTemplate($row->id_template)
                  ->setIdFormulario($row->id_formulario)
                  ->setDatahoraCriacao($row->datahora_criacao)
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
}