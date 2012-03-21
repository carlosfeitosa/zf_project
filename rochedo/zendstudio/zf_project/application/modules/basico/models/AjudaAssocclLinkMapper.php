<?php
/**
 * AjudaAssocclLink data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_AjudaAssocclLink
 * @subpackage Model
 */
class Basico_Model_AjudaAssocclLinkMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_AjudaAssocclLink if no instance registered
     * 
     * @return Basico_Model_DbTable_AjudaAssocclLink
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_AjudaAssocclLink');
    }

    /**
     * Find a AjudaAssocclLink entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_AjudaAssocclLink $object 
     * 
     * @return void
     */
    public function find($id, Basico_Model_AjudaAssocclLink $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object ->setId($row->id)
				->setIdAjuda($row->id_ajuda)
        		->setIdLink($row->id_link)
				->setOrdem($row->ordem)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all AjudaAssocclLink entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AjudaAssocclLink();
			$entry->setId($row->id)
  				  ->setIdAjuda($row->id_ajuda)
        		  ->setIdLink($row->id_link)
				  ->setOrdem($row->ordem)
                  ->setDatahoraCriacao($row->datahora_criacao)
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all AjudaAssocclLink entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AjudaAssocclLink();
			$entry->setId($row->id)
  				  ->setIdAjuda($row->id_ajuda)
        		  ->setIdLink($row->id_link)
				  ->setOrdem($row->ordem)
                  ->setDatahoraCriacao($row->datahora_criacao)
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a AjudaAssocclLink entry
     * 
     * @param  Basico_Model_AjudaAssocclLink $object
     * 
     * @return void
     */
    public function save(Basico_Model_AjudaAssocclLink $object)
    {
        $data = array(
			          'id_ajuda'         => $object->getIdMetodoValidacao(),
                      'id_link'	         => $object->getIdInclude(),
        		      'ordem'			 => $object->getOrdem(),
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
	* Delete a AjudaAssocclLink entry
	* 
	* @param Basico_Model_AjudaAssocclLink $object
	* 
	* @return void
	*/
	public function delete(Basico_Model_AjudaAssocclLink $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}	
}