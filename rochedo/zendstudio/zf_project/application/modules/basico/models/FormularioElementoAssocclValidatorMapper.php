<?php
/**
 * FormularioElementoAssocclValidator data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioElementoAssocclValidator
 * @subpackage Model
 */
class Basico_Model_FormularioElementoAssocclValidatorMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioElementoAssocclValidator if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
    	return parent::getDbTable('Basico_Model_DbTable_FormularioElementoAssocclValidator');
    }
    
	/**
     * Find a FormularioElementoAssocclValidator entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_DbTable_FormularioElementoAssocclValidator $object 
     * @return void
     */
    public function find($id, Basico_Model_DbTable_FormularioElementoAssocclValidator $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setIdElemento($row->id_elemento)
				->setIdValidator($row->id_validator)
				->setDatahoraCriacao($row->datahora_criacao)
				->setRowinfo($row->rowinfo);
    }
    
    /**
     * Fetch all Basico_Model_DbTable_FormularioElementoAssocclValidator entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_DbTable_FormularioElementoAssocclValidator();
            $entry->setId($row->id)
            	->setIdElemento($row->id_elemento)
				->setIdValidator($row->id_validator)
				->setDatahoraCriacao($row->datahora_criacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all FormularioElementoAssocclValidator entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_DbTable_FormularioElementoAssocclValidator();
            $entry->setId($row->id)
            	->setIdElemento($row->id_elemento)
				->setIdValidator($row->id_validator)
				->setDatahoraCriacao($row->datahora_criacao)
				->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Save a FormularioElementoAssocclValidator entry
     * 
     * @param  Basico_Model_DbTable_FormularioElementoAssocclValidator $object
     * @return void
     */
    public function save(Basico_Model_FormularioElementoAssocclValidator $object)
    {
        $data = array(
                'id_elemento' => $object->getIdElemento(),
                'id_validator'        => $object->getIdValidator(),
        		'datahora_criacao' => $object->getDatahoraCriacao(),
        		'rowinfo'		   => $object->getRowinfo(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
    /**
    * Delete a Basico_Model_DbTable_FormularioElementoAssocclValidator entry
    * @param Basico_Model_DbTable_FormularioElementoAssocclValidator $object
    * @return void
    */
    public function delete(Basico_Model_DbTable_FormularioElementoAssocclValidator $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }
}