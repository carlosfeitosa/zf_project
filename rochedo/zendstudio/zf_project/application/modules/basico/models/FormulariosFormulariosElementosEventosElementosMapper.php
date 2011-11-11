<?php
/**
 * FormulariosFormulariosElementosEventosElementos data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormulariosFormulariosElementosEventosElementos
 * @subpackage Model
 */
class Basico_Model_FormulariosFormulariosElementosEventosElementosMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_FormulariosFormulariosElementosEventosElementosMapper
     */
    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception('Invalid table data gateway provided');
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormulariosFormulariosElementosEventosElementos if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_FormulariosFormulariosElementosEventosElementos');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a LearningBasket entry
     * 
     * @param  Basico_Model_FormulariosFormulariosElementosEventosElementos $object
     * @return void
     */
    public function save(Basico_Model_FormulariosFormulariosElementosEventosElementos $object)
    {
        $data = array(
                'formulariosformularioselementos' => $object->getFormulariosFormulariosElementos(),
                'eventoelemento' => $object->getEventoElemento(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
    /**
    * Delete a FormulariosFormulariosElementosEventosElementos entry
    * @param Basico_Model_FormulariosFormulariosElementosEventosElementos $object
    * @return void
    */
    public function delete(Basico_Model_FormulariosFormulariosElementosEventosElementos $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }

    /**
     * Find a LearningBasket entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormulariosFormulariosElementosEventosElementos $object 
     * @return void
     */
    public function find($id, Basico_Model_FormulariosFormulariosElementosEventosElementos $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setFormulariosFormulariosElementos($row->formulariosformularioselementos)
               ->setEventoElemento($row->eventoelemento);
    }
}
      

