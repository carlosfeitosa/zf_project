<?php
/**
 * TemplateAssocclOutput data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_TemplateAssocclOutput
 * @subpackage Model
 */
class Basico_Model_TemplateAssocclOutputMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_TemplateAssocclOutput if no instance registered
     * 
     * @return Basico_Model_DbTable_TemplateAssocclOutput
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_TemplateAssocclOutput');
    }	
    
    /**
     * Find a TemplateAssocclOutput entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_TemplateAssocclOutput $object 
     * 
     * @return void
     */
    public function find($id, Basico_Model_TemplateAssocclOutput $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
        	   ->setIdTemplate($row->id_template)
        	   ->setIdOutput($row->id_output)
			   ->setDatahoraCriacao($row->datahora_criacao)
			   ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all TemplateAssocclOutput entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_TemplateAssocclOutput();
			$entry->setId($row->id)
        	      ->setIdTemplate($row->id_template)
        	      ->setIdOutput($row->id_output)
			      ->setDatahoraCriacao($row->datahora_criacao)
			      ->setRowinfo($row->rowinfo)
		          ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all TemplateAssocclOutput entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_TemplateAssocclOutput();
			$entry->setId($row->id)
        	      ->setIdTemplate($row->id_template)
        	      ->setIdOutput($row->id_output)
			      ->setDatahoraCriacao($row->datahora_criacao)
			      ->setRowinfo($row->rowinfo)
		          ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

    /**
     * Save a TemplateAssocclOutput entry
     * 
     * @param  Basico_Model_TemplateAssocclOutput $object
     * 
     * @return void
     */
    public function save(Basico_Model_TemplateAssocclOutput $object)
    {
        $data = array(
        		      'id_template'                 => $object->getIdTemplate(),
        		      'id_output'                   => $object->getIdOutput(),
        		      'datahora_criacao'            => $object->getDatahoraCriacao(),
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
     * Delete a TemplateAssocclOutput entry
     * 
     * @param Basico_Model_TemplateAssocclOutput $object
     * 
     * @return void
     */
    public function delete(Basico_Model_TemplateAssocclOutput $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }	
}