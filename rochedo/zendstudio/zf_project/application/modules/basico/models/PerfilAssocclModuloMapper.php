<?php
/**
 * PerfilAssocclModulo data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_PerfilAssocclModulo
 * @subpackage Model
 */
class Basico_Model_PerfilAssocclModuloMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_PerfilAssocclModulo if no instance registered
     * 
     * @return Basico_Model_DbTable_PerfilAssocclModulo
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_PerfilAssocclModulo');
    }

    /**
     * Find a PerfilAssocclModulo entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_PerfilAssocclModulo $object 
     * @return void
     */
    public function find($id, Basico_Model_PerfilAssocclModulo $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setModulo($row->id_modulo)
               ->setPerfil($row->id_perfil)
               ->setDatahoraCriacao($row->datahora_criacao)               
               ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all PerfilAssocclModulo entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_PerfilAssocclModulo();
            $entry->setId($row->id)
                  ->setModulo($row->id_modulo)
                  ->setPerfil($row->id_perfil)
				  ->setDatahoraCriacao($row->datahora_criacao)                
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all PerfilAssocclModulo entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_PerfilAssocclModulo();
            $entry->setId($row->id)
                  ->setModulo($row->id_modulo)
                  ->setPerfil($row->id_perfil)
				  ->setDatahoraCriacao($row->datahora_criacao)                   
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Save a PerfilAssocclModulo entry
     * 
     * @param  Basico_Model_PerfilAssocclModulo $object
     * @return void
     */
    public function save(Basico_Model_PerfilAssocclModulo $object)
    {
        $data = array(
                      'id_modulo' => $object->getModulo(),
                      'id_perfil' => $object->getPerfil(),
        		      'datahora_criacao' => $object->getDatahoraCriacao(),
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
    * Delete a PerfilAssocclModulo entry
    * 
    * @param Basico_Model_PerfilAssocclModulo $object
    * @return void
    */
    public function delete(Basico_Model_PerfilAssocclModulo $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }
}