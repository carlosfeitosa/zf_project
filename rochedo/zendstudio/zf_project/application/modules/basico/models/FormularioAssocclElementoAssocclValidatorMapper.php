<?php
/**
 * FormularioAssocclElementoAssocclValidator data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioAssocclElementoAssocclValidator
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoAssocclValidatorMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioAssocclElementoAssocclValidator if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_FormularioAssocclElementoAssocclValidator');
    }
    
	/**
     * Find a FormularioAssocclElementoAssocclValidator entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioAssocclElementoAssocclValidator $object 
     * @return void
     */
    public function find($id, Basico_Model_FormularioAssocclElementoAssocclValidator $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
        		->setIdAssocclElemento($row->id_assoccl_elemento)
               	->setIdValidator($row->id_validator)
               	->setRemoveFlag($row->remove_flag)
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
            $entry = new Basico_Model_FormularioAssocclElementoAssocclValidator();
            $entry->setId($row->id)
        		->setIdAssocclElemento($row->id_assoccl_elemento)
               	->setIdValidator($row->id_validator)
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
     * Fetch all FormularioAssocclElementoAssocclValidator entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioAssocclElementoAssocclValidator();
            $entry->setId($row->id)
        		->setIdAssocclElemento($row->id_assoccl_elemento)
               	->setIdValidator($row->id_validator)
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
     * Save a FormularioAssocclElementoAssocclValidator entry
     * 
     * @param  Basico_Model_FormularioAssocclElementoAssocclValidator $object
     * @return void
     */
    public function save(Basico_Model_FormularioAssocclElementoAssocclValidator $object)
    {
        $data = array(
                'id_assoccl_elemento'         => $object->getIdAssocclElemento(),
                'id_validator' 				  => $object->getIdValidator(),
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
    * Delete a FormularioAssocclElementoAssocclValidator entry
    * @param Basico_Model_FormularioAssocclElementoAssocclValidator $object
    * @return void
    */
    public function delete(Basico_Model_FormularioAssocclElementoAssocclValidator $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }
}