<?php
/**
 * FormularioAssocclInclude data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioAssocclInclude
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclIncludeMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioAssocclInclude if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_FormularioAssocclInclude');
    }
    
	/**
     * Find a Basico_Model_FormularioAssocclInclude entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioAssocclInclude $object 
     * @return void
     */
    public function find($id, Basico_Model_FormularioAssocclInclude $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setIdFormulario($row->id_formulario)
               ->setIdInclude($row->id_include)
               ->setOrdem($row->ordem)
               ->setDatahoraCriacao($row->datahora_criacao)
               ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all Basico_Model_FormularioAssocclInclude entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioAssocclInclude();
            $entry->setId($row->id)
                ->setIdFormulario($row->id_formulario)
               	->setIdInclude($row->id_include)
               	->setOrdem($row->ordem)
               	->setDatahoraCriacao($row->datahora_criacao)
               	->setRowinfo($row->rowinfo)
                ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all Basico_Model_FormularioAssocclInclude entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioAssocclInclude();
            $entry->setId($row->id)
                   ->setIdFormulario($row->id_formulario)
	               ->setIdInclude($row->id_include)
	               ->setOrdem($row->ordem)
	               ->setDatahoraCriacao($row->datahora_criacao)
	               ->setRowinfo($row->rowinfo)
                   ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Save a Basico_Model_FormularioAssocclInclude entry
     * 
     * @param  Basico_Model_FormularioAssocclInclude $object
     * @return void
     */
    public function save(Basico_Model_FormularioAssocclInclude $object)
    {
        $data = array(
                'id_formulario'    => $object->getIdFormulario(),
                'id_include'       => $object->getIdInclude(),
        		'ordem'            => $object->getOrdem(),
        		'datahora_criacao' => $object->getDatahoraCriacao(),
                'rowinfo'          => $object->getRowinfo(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
    /**
    * Delete a Basico_Model_FormularioAssocclInclude entry
    * @param Basico_Model_FormularioAssocclInclude $object
    * @return void
    */
    public function delete(Basico_Model_FormularioAssocclInclude $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }
}