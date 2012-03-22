<?php
/**
 * MetodoValidacaoAssocclInclude data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_MetodoValidacaoAssocclInclude
 * @subpackage Model
 */
class Basico_Model_MetodoValidacaoAssocclIncludeMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_MetodoValidacaoAssocclInclude if no instance registered
     * 
     * @return Basico_Model_DbTable_MetodoValidacaoAssocclInclude
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_MetodoValidacaoAssocclInclude');
    }

    /**
     * Find a MetodoValidacaoAssocclInclude entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_MetodoValidacaoAssocclInclude $object 
     * 
     * @return void
     */
    public function find($id, Basico_Model_MetodoValidacaoAssocclInclude $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object ->setId($row->id)
				->setIdMetodoValidacao($row->id_metodo_validacao)
        		->setIdInclude($row->id_include)
				->setOrdem($row->ordem)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all MetodoValidacaoAssocclInclude entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_MetodoValidacaoAssocclInclude();
			$entry->setId($row->id)
  				  ->setIdMetodoValidacao($row->id_metodo_validacao)
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
	 * Fetch all MetodoValidacaoAssocclInclude entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_MetodoValidacaoAssocclInclude();
			$entry->setId($row->id)
  				  ->setIdMetodoValidacao($row->id_metodo_validacao)
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
     * Save a MetodoValidacaoAssocclInclude entry
     * 
     * @param  Basico_Model_MetodoValidacaoAssocclInclude $object
     * 
     * @return void
     */
    public function save(Basico_Model_MetodoValidacaoAssocclInclude $object)
    {
        $data = array(
			          'id_metodo_validacao'         => $object->getIdMetodoValidacao(),
                      'id_include'				    => $object->getIdInclude(),
        		      'ordem'					    => $object->getOrdem(),
        		      'datahora_criacao'            => $object->getDatahoraCriacao(),
        		      'rowinfo'					    => $object->getRowinfo(),
                     );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a MetodoValidacaoAssocclInclude entry
	* 
	* @param Basico_Model_MetodoValidacaoAssocclInclude $object
	* 
	* @return void
	*/
	public function delete(Basico_Model_MetodoValidacaoAssocclInclude $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}	
}