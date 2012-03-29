<?php
/**
 * LocalizacaoAssocMunicipio data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Municipio
 * @subpackage Model
 */
class Basico_Model_LocalizacaoAssocMunicipioMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_LocalizacaoAssocMunicipio if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_LocalizacaoAssocMunicipio')
    {
        return parent::getDbTable($dbTable);
    }
    
    /**
     * Save a LocalizacaoAssocMunicipio entry
     * 
     * @param  Basico_Model_LocalizacaoAssocMunicipio $object
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
			'nome'   	   => $object->getNome(),
            'id_estado'    => $object->getEstado(),
            'id_categoria' => $object->getCategoria(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a LocalizacaoAssocMunicipio entry
	* @param Basico_Model_LocalizacaoAssocMunicipio $object
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a LocalizacaoAssocMunicipio entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_LocalizacaoAssocMunicipio $object 
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
                ->setEstado($row->id_estado)
                ->setCategoria($row->id_categoria);
    }

	/**
	 * Fetch all LocalizacaoAssocMunicipio entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_LocalizacaoAssocMunicipio();
			$entry->setId($row->id)

				->setNome($row->nome)
                ->setEstado($row->id_estado)
                ->setCategoria($row->id_categoria)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all LocalizacaoAssocMunicipio entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_LocalizacaoAssocMunicipio();
			$entry->setId($row->id)

				->setNome($row->nome)
                ->setEstado($row->id_estado)
                ->setCategoria($row->id_categoria)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}