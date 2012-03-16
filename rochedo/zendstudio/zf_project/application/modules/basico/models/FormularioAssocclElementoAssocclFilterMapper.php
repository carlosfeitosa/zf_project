<?php
/**
 * FormularioAssocclElementoAssocclFilter data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioAssocclElementoAssocclFilter
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoAssocclFilterMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioAssocclElementoAssocclFilter if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_FormularioAssocclElementoAssocclFilter');
    }
    
	/**
     * Find a LearningBasket entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioAssocclElementoAssocclFilter $object 
     * @return void
     */
    public function find($id, Basico_Model_FormularioAssocclElementoAssocclFilter $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setIdAssocclElemento($row->id_assoccl_elemento)
               ->setIdFilter($row->id_filter)
               ->setOrdem($row->ordem)
               ->setRemoveFlag($row->remove_flag)
               ->setDataHoraCriacao($row->datahora_criacao)
               ->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
               ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all FormularioAssocclElementoAssocclFilter entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioAssocclElementoAssocclFilter();
            $entry->setId($row->id)
                ->setIdAssocclElemento($row->id_assoccl_elemento)
                ->setIdFilter($row->id_filter)
                ->setOrdem($row->ordem)
                ->setRemoveFlag($row->remove_flag)
                ->setDataHoraCriacao($row->datahora_criacao)
                ->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
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
            $entry = new Basico_Model_FormularioAssocclElementoAssocclFilter();
            $entry->setId($row->id)
                   ->setIdAssocclElemento($row->id_assoccl_elemento)
	               ->setIdFilter($row->id_filter)
	               ->setOrdem($row->ordem)
	               ->setRemoveFlag($row->remove_flag)
	               ->setDataHoraCriacao($row->datahora_criacao)
	               ->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
	               ->setRowinfo($row->rowinfo)
                   ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Save a Basico_Model_FormularioAssocclElementoAssocclFilter entry
     * 
     * @param  Basico_Model_FormularioAssocclElementoAssocclFilter $object
     * @return void
     */
    public function save(Basico_Model_FormularioAssocclElementoAssocclFilter $object)
    {
        $data = array(
                'id_assoccl_elemento'         => $object->getIdAssocclElemento(),
                'id_filter'                   => $object->getIdFilter(),
        		'ordem'                       => $object->getOrdem(),
        		'remove_flag'                 => $object->getRemoveFlag(),
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
    * Delete a FormularioAssocclElementoAssocclFilter entry
    * @param Basico_Model_FormularioAssocclElementoAssocclFilter $object
    * @return void
    */
    public function delete(Basico_Model_FormularioAssocclElementoAssocclFilter $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }
}