<?php
/**
 * Telefone data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Telefone
 * @subpackage Model
 */
class Basico_Model_TelefoneMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_TelefoneMapper
     */
    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception('Invalid table data gateway provided');
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Telefone if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Telefone');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Telefone entry
     * 
     * @param  Basico_Model_Telefone $object
     * @return void
     */
    public function save(Basico_Model_Telefone $object)
    {
        $data = array(
				'id_generico_proprietario'   => $object->getIdGenericoProprietario(),
				'descricao'   => $object->getDescricao(),
				'codigo_pais'   => $object->getCodigoPais(),
				'codigo_area'   => $object->getCodigoArea(),
				'telefone'   => $object->getTelefone(),
				'ramal'   => $object->getRamal(),
                'id_categoria'   => $object->getCategoria(),
                'id_mascara'   => $object->getMascara(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Telefone entry
	* @param Basico_Model_Telefone $object
	* @return void
	*/
	public function delete(Basico_Model_Telefone $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Telefone entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Telefone $object 
     * @return void
     */
    public function find($id, Basico_Model_Telefone $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setIdGenericoProprietario($row->id_generico_proprietario)
				->setDescricao($row->descricao)
				->setCodigoPais($row->codigo_pais)
				->setCodigoArea($row->codigo_area)
				->setTelefone($row->telefone)
				->setRamal($row->ramal)
                ->setCategoria($row->id_categoria)
                ->setMascara($row->id_mascara);
            }

	/**
	 * Fetch all telefone entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Telefone();
			$entry->setId($row->id)

				->setIdGenericoProprietario($row->id_generico_proprietario)
				->setDescricao($row->descricao)
				->setCodigoPais($row->codigo_pais)
				->setCodigoArea($row->codigo_area)
				->setTelefone($row->telefone)
				->setRamal($row->ramal)
                ->setCategoria($row->id_categoria)
                ->setMascara($row->id_mascara)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all telefone entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Telefone();
			$entry->setId($row->id)

				->setIdGenericoProprietario($row->id_generico_proprietario)
				->setDescricao($row->descricao)
				->setCodigoPais($row->codigo_pais)
				->setCodigoArea($row->codigo_area)
				->setTelefone($row->telefone)
				->setRamal($row->ramal)
                ->setCategoria($row->id_categoria)
                ->setMascara($row->id_mascara)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

	/**
    * Fetch all entries but allowing a join
    * @return array
    */
    public function fetchJoinList($join=null, $where=null, $order=null, $count=null, $offset=null)
    {
        $select = $this->getDbTable()->getAdapter()->select()
            ->from(array('table1' => 'telefone'),
                   array('id' => 'table1.id',
                        'id_generico_proprietario' => 'table1.id_generico_proprietario' ,
                        'descricao' => 'table1.descricao' ,
                        'codigo_pais' => 'table1.codigo_pais' ,
                        'codigo_area' => 'table1.codigo_area' ,
                        'telefone' => 'table1.telefone' ,
                        'ramal' => 'table1.ramal' ,
                        'id_categoria' => 'table1.id_categoria)',
                        'id_mascara' => 'table1.id_mascara)'))
            ->joinInner($join[0])
            ->where($where)
            ->order($order)
            ->limit($count, $offset);
        $stmt = $this->getDbTable()->getAdapter()->query($select);
        $resultSet = $stmt->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_Telefone();
            $entry->setId($row['id'])
                ->setIdGenericoProprietario($row['id_generico_proprietario'])
                ->setDescricao($row['descricao'])
                ->setCodigoPais($row['codigo_pais'])
                ->setCodigoArea($row['codigo_area'])
                ->setTelefone($row['telefone'])
                ->setRamal($row['ramal'])
                ->setCategoria($row['id_categoria'])
                ->setMascara($row['id_mascara'])
                ->setMapper($this);
            $entries[] = $entry;
            
        }
        return $entries;
    }
    
    
    /**
    * Fetch all entries but allowing a join. This is an alternative method similar to fetchJoinList
    * @return array
    */
    public function fetchJoin($jointable=null, $joinby, $where=null, $order=null)
    {
        $select = $this->getDbTable()->select();
        $select->join($jointable, $joinby, array());
        $select->where($where, array());
        $resultSet = $this->getDbTable()->fetchAll($select);
        $entries   = array();
        foreach ($resultSet as $row)
        {
            $entry = new Basico_Model_Telefone();
            $entry->setId($row->id)
				->setIdGenericoProprietario($row->id_generico_proprietario)
				->setDescricao($row->descricao)
				->setCodigoPais($row->codigo_pais)
				->setCodigoArea($row->codigo_area)
				->setTelefone($row->telefone)
				->setRamal($row->ramal)
                ->setCategoria($row->id_categoria)
                ->setMascara($row->id_mascara)
                ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }    

}