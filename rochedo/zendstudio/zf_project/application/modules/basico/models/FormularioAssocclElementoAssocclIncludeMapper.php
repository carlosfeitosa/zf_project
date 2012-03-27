<?php
/**
 * FormularioAssocclElementoAssocclInclude data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioAssocclElementoAssocclInclude
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoAssocclIncludeMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPesquisa
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioAssocclElementoAssocclInclude if no instance registered
     * 
     * @return Basico_Model_DbTable_FormularioAssocclElementoAssocclInclude
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_FormularioAssocclElementoAssocclInclude')
    {
        return parent::getDbTable($dbTable);
    }

    /**
     * Find a FormularioAssocclElementoAssocclInclude entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioAssocclElementoAssocclInclude $object 
     * 
     * @return void
     */
    public function find($id, Basico_Model_FormularioAssocclElementoAssocclInclude $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
        	   ->setIdAssocclElemento($row->id_assoccl_elemento)
        	   ->setIdInclude($row->id_include)
        	   ->setOrdem($row->ordem)
        	   ->setDatahoraCriacao($row->datahora_criacao)
               ->setRowinfo($row->rowinfo);
    }
    
	/**
	 * Fetch all FormularioAssocclElementoAssocclInclude entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new FormularioAssocclElementoAssocclInclude();
			$entry->setId($row->id)
				->setIdAssocclElemento($row->id_assoccl_elemento)
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
	 * Fetch all FormularioAssocclElementoAssocclInclude entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioAssocclElementoAssocclInclude();
			$entry->setId($row->id)
				->setIdAssocclElemento($row->id_assoccl_elemento)
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
     * Save a Pessoa entry
     *
     * @param  Basico_Model_FormularioAssocclElementoAssocclInclude $object
     * 
     * @return void
     */
    public function save(Basico_Model_FormularioAssocclElementoAssocclInclude $object)
    {
        $data = array(
        			  'id_assoccl_elemento' => $object->getIdAssocclElemento(),
        			  'id_include' => $object->getIdInclude(),
        			  'ordem' => $object->getOrdem(),
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
	* Delete a FormularioAssocclElementoAssocclInclude entry
	* 
	* @param Basico_Model_FormularioAssocclElementoAssocclInclude $object
	* 
	* @return void
	*/
	public function delete(Basico_Model_FormularioAssocclElementoAssocclInclude $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}