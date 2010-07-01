<?php
/**
 * ArtigoPerfil data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       GC_Model_DbTable_ArtigoPerfil
 * @subpackage Model
 */
class GC_Model_ArtigoPerfilMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return GC_Model_ArtigoPerfilMapper
     */
    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception(MSG_ERRO_TABLE_DATA_GATEWAY_INVALIDO);
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads GC_Model_DbTable_ArtigoPerfil if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('GC_Model_DbTable_ArtigoPerfil');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a LearningBasket entry
     * 
     * @param  GC_Model_ArtigoPerfil $object
     * @return void
     */
    public function save(GC_Model_ArtigoPerfil $object)
    {
        $data = array(
                'artigo' => $object->getArtigo(),
                'perfil' => $object->getPerfil(),
                'rowinfo'=> $object->getRowinfo(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
    /**
    * Delete a ArtigoPerfil entry
    * @param GC_Model_ArtigoPerfil $object
    * @return void
    */
    public function delete(GC_Model_ArtigoPerfil $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }

    /**
     * Find a LearningBasket entry by id
     * 
     * @param  int $id 
     * @param  GC_Model_ArtigoPerfil $object 
     * @return void
     */
    public function find($id, GC_Model_ArtigoPerfil $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setArtigo($row->artigo)
               ->setPerfil($row->perfil)
               ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all ArtigoPerfil entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new GC_Model_ArtigoPerfil();
            $entry->setId($row->id)
                ->setArtigo($row->artigo)
                ->setPerfil($row->perfil)
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
            $entry = new GC_Model_ArtigoPerfil();
            $entry->setId($row->id)
                  ->setArtigo($row->artigo)
                  ->setPerfil($row->perfil)
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
}