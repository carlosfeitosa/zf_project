<?php
/**
 * ComponenteAssocclInclude data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_ComponenteAssocclInclude
 * @subpackage Model
 */
class Basico_Model_ComponenteAssocclIncludeMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_ComponenteAssocclInclude if no instance registered
     * 
     * @return Basico_Model_DbTable_ComponenteAssocclInclude
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_ComponenteAssocclInclude');
    }

    /**
     * Find a ComponenteAssocclInclude entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_ComponenteAssocclInclude $object 
     * @return void
     */
    public function find($id, Basico_Model_ComponenteAssocclInclude $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setIdComponente($row->id_componente)
        	   ->setIdInclude($row->id_include)
               ->setOrdem($row->ordem)
               ->setDatahoraCriacao($row->datahora_criacao)
               ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all ComponenteAssocclInclude entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_ComponenteAssocclInclude();
			$entry->setIdComponente($row->id_componente)
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
	 * Fetch all ComponenteAssocclInclude entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_ComponenteAssocclInclude();
			$entry->setIdComponente($row->id_componente)
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
     * Save a ComponenteAssocclInclude entry
     *
     * @param  Basico_Model_ComponenteAssocclInclude $object
     * @return void
     */
    public function save(Basico_Model_ComponenteAssocclInclude $object)
    {
        $data = array(
        			  'id_componente'    => $object->getIdComponente(),
        			  'id_include'       => $object->getIdInclude(),
                      'ordem'            => $object->getOrdem(),
        			  'datahora_criacao' => $object->getDatahoraCriacao(),
        			  'rowinfo'		     => $object->getRowinfo(),
                     );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }

	/**
	* Delete a ComponenteAssocclInclude entry
	* @param Basico_Model_ComponenteAssocclInclude $object
	* @return void
	*/
	public function delete(Basico_Model_ComponenteAssocclInclude $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}	
}