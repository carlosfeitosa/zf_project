<?php
/**
 * LocalizacaoAssocEstado data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_LocalizacaoAssocEstado
 * @subpackage Model
 */
class Basico_Model_LocalizacaoAssocEstadoMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Estado if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_LocalizacaoAssocEstado')
    {
        if (null === $this->_dbTable) {
            $this->setDbTable($dbTable);
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Estado entry
     * 
     * @param  Basico_Model_LocalizacaoAssocEstado $object
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
				'nome'   	   => $object->getNome(),
				'sigla'		   => $object->getSigla(),
				'codigo_ddd'   => $object->getCodigoDddi(),
              	'id_pais'	   => $object->getIdPais(),
             	'id_categoria' => $object->getIdCategoria(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Estado entry
	* @param Basico_Model_LocalizacaoAssocEstado $object
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Estado entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_LocalizacaoAssocEstado $object 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
				->setNome($row->nome)
				->setSigla($row->sigla)
				->setCodigoDdd($row->codigo_ddd)
                ->setIdPais($row->id_pais)
                ->setIdCategoria($row->id_categoria);
    }

	/**
	 * Fetch all LocalizacaoAssocEstado entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_LocalizacaoAssocEstado();
			$entry->setId($row->id)
				->setNome($row->nome)
				->setSigla($row->sigla)
				->setCodigoDdd($row->codigo_ddd)
                ->setIdPais($row->id_pais)
                ->setIdCategoria($row->id_categoria)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all LocalizacaoAssocEstado entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_LocalizacaoAssocEstado();
			$entry->setId($row->id)
				->setNome($row->nome)
				->setSigla($row->sigla)
				->setCodigoDdd($row->codigo_ddd)
                ->setIdPais($row->id_pais)
                ->setIdCategoria($row->id_categoria)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}