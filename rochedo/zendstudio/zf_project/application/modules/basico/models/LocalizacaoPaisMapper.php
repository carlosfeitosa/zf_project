<?php
/**
 * LocalizacaoPais data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_LocalizacaoPais
 * @subpackage Model
 */
class Basico_Model_LocalizacaoPaisMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_LocalizacaoPais if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_LocalizacaoPais')
    {
        return parent::getDbTable($dbTable);
    }
    
    /**
     * Save a Pais entry
     * 
     * @param  Basico_Model_LocalizacaoPais $object
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
				'constante_textual' => $object->getConstanteTextual(),
				'sigla'   			=> $object->getSigla(),
				'codigo_ddi'		=> $object->getCodigoDDI(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Pais entry
	* @param Basico_Model_LocalizacaoPais $object
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Pais entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_LocalzacaoPais $object 
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
				->setConstanteTextual($row->constante_textual)
				->setSigla($row->sigla)
				->setCodigoDDI($row->codigo_ddi);
    }

	/**
	 * Fetch all LocalizacaoPais entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_LocalizacaoPais();
			$entry->setId($row->id)
				->setConstanteTextual($row->constante_textual)
				->setSigla($row->sigla)
				->setCodigoDDI($row->codigo_ddi)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all LocalizacaoPais entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_LocalizacaoPais();
			$entry->setId($row->id)
				->setConstanteTextual($row->constante_textual)
				->setSigla($row->sigla)
				->setCodigoDDI($row->codigo_ddi)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}