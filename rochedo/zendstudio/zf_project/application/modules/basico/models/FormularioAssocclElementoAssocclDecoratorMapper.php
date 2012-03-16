<?php
/**
 * FormularioAssocclElementoAssocclDecorator data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioAssocclElementoAssocclDecorator
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoAssocclDecoratorMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioAssocclElementoAssocclDecorator if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_FormularioAssocclElementoAssocclDecorator');
    }
    
	/**
     * Find a FormularioAssocclElementoAssocclDecorator entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioAssocclElementoAssocclDecorator $object 
     * @return void
     */
    public function find($id, Basico_Model_FormularioAssocclElementoAssocclDecorator $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setIdAssocclElemento($row->id_assoccl_elemento)
               ->setIdDecorator($row->id_decorator)
               ->setRemoveFlag($row->remove_flag)
               ->setOrdem($row->ordem)
               ->setDatahoraCriacao($row->datahora_criacao)
               ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all FormularioAssocclElementoAssocclDecorator entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioAssocclElementoAssocclDecorator();
            $entry->setId($row->id)
                ->setIdAssocclElemento($row->id_assoccl_elemento)
                ->setIdDecorator($row->id_decorator)
                ->setRemoveFlag($row->remove_flag)
                ->setOrdem($row->ordem)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setRowinfo($row->rowinfo)
                ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all FormularioAssocclElementoAssocclDecorator entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioAssocclElementoAssocclDecorator();
            $entry->setId($row->id)
                  ->setIdAssocclElemento($row->id_assoccl_elemento)
               	  ->setIdDecorator($row->id_decorator)
                  ->setRemoveFlag($row->remove_flag)
                  ->setOrdem($row->ordem)
                  ->setDatahoraCriacao($row->datahora_criacao)
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Save a FormularioAssocclElementoAssocclDecorator entry
     * 
     * @param  Basico_Model_FormularioAssocclElementoAssocclDecorator $object
     * @return void
     */
    public function save(Basico_Model_FormularioAssocclElementoAssocclDecorator $object)
    {
        $data = array(
                'id_assoccl_elemento' => $object->getIdAssocclElemento(),
                'id_decorator'        => $object->getIdDecorator(),
        		'remove_flag'		  => $object->getRemoveFlag(),
        		'ordem'				  => $object->getOrdem(),
        		'datahora_criacao'    => $object->getDatahoraCriacao(),
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
    * Delete a FormularioAssocclElementoAssocclDecorator entry
    * @param Basico_Model_FormularioAssocclElementoAssocclDecorator $object
    * @return void
    */
    public function delete(Basico_Model_FormularioAssocclElementoAssocclDecorator $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }
}