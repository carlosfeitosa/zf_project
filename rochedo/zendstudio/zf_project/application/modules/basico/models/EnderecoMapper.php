<?php
/**
 * Endereco data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Endereco
 * @subpackage Model
 */
class Basico_Model_EnderecoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_EnderecoMapper
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
     * Lazy loads Basico_Model_DbTable_Endereco if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Endereco');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Endereco entry
     * 
     * @param  Basico_Model_Endereco $object
     * @return void
     */
    public function save(Basico_Model_Endereco $object)
    {
        $data = array(
				'idGenericoProprietario'   => $object->getIdGenericoProprietario(),
				'descricao'   => $object->getDescricao(),
				'cep'   => $object->getCep(),
				'logradouro'   => $object->getLogradouro(),
				'numero'   => $object->getNumero(),
				'complemento'   => $object->getComplemento(),
				'caixaPostal'   => $object->getCaixaPostal(),
				'dataValidacao'   => $object->getDataValidacao(),
              'categoria'   => $object->getCategoria(),
              'pais'   => $object->getPais(),
              'estado'   => $object->getEstado(),
              'municipio'   => $object->getMunicipio(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Endereco entry
	* @param Basico_Model_Endereco $object
	* @return void
	*/
	public function delete(Basico_Model_Endereco $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Endereco entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Endereco $object 
     * @return void
     */
    public function find($id, Basico_Model_Endereco $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setIdGenericoProprietario($row->idGenericoProprietario)
				->setDescricao($row->descricao)
				->setCep($row->cep)
				->setLogradouro($row->logradouro)
				->setNumero($row->numero)
				->setComplemento($row->complemento)
				->setCaixaPostal($row->caixaPostal)
				->setDataValidacao($row->dataValidacao)
                ->setCategoria($row->categoria)
                ->setPais($row->pais)
                ->setEstado($row->estado)
                ->setMunicipio($row->municipio);
    }

	/**
	 * Fetch all endereco entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Endereco();
			$entry->setId($row->id)

				->setIdGenericoProprietario($row->idGenericoProprietario)
				->setDescricao($row->descricao)
				->setCep($row->cep)
				->setLogradouro($row->logradouro)
				->setNumero($row->numero)
				->setComplemento($row->complemento)
				->setCaixaPostal($row->caixaPostal)
				->setDataValidacao($row->dataValidacao)
                ->setCategoria($row->categoria)
                ->setPais($row->pais)
                ->setEstado($row->estado)
                ->setMunicipio($row->municipio)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all endereco entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Endereco();
			$entry->setId($row->id)

				->setIdGenericoProprietario($row->idGenericoProprietario)
				->setDescricao($row->descricao)
				->setCep($row->cep)
				->setLogradouro($row->logradouro)
				->setNumero($row->numero)
				->setComplemento($row->complemento)
				->setCaixaPostal($row->caixaPostal)
				->setDataValidacao($row->dataValidacao)
                ->setCategoria($row->categoria)
                ->setPais($row->pais)
                ->setEstado($row->estado)
                ->setMunicipio($row->municipio)
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
            ->from(array('table1' => 'endereco'),
                   array('id' => 'table1.id',
                        'idGenericoProprietario' => 'table1.idGenericoProprietario' ,
                        'descricao' => 'table1.descricao' ,
                        'cep' => 'table1.cep' ,
                        'logradouro' => 'table1.logradouro' ,
                        'numero' => 'table1.numero' ,
                        'complemento' => 'table1.complemento' ,
                        'caixaPostal' => 'table1.caixaPostal' ,
                        'dataValidacao' => 'table1.dataValidacao' ,
                        'categoria' => 'table1.categoria)',
                        'pais' => 'table1.pais)',
                        'estado' => 'table1.estado)',
                        'municipio' => 'table1.municipio)'))
            ->joinInner($join[0])
            ->where($where)
            ->order($order)
            ->limit($count, $offset);
        $stmt = $this->getDbTable()->getAdapter()->query($select);
        $resultSet = $stmt->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_Endereco();
            $entry->setId($row['id'])
                ->setIdGenericoProprietario($row['idGenericoProprietario'])
                ->setDescricao($row['descricao'])
                ->setCep($row['cep'])
                ->setLogradouro($row['logradouro'])
                ->setNumero($row['numero'])
                ->setComplemento($row['complemento'])
                ->setCaixaPostal($row['caixaPostal'])
                ->setDataValidacao($row['dataValidacao'])
                ->setCategoria($row['categoria'])
                ->setPais($row['pais'])
                ->setEstado($row['estado'])
                ->setMunicipio($row['municipio'])
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
            $entry = new Basico_Model_Endereco();
            $entry->setId($row->id)
				->setIdGenericoProprietario($row->idGenericoProprietario)
				->setDescricao($row->descricao)
				->setCep($row->cep)
				->setLogradouro($row->logradouro)
				->setNumero($row->numero)
				->setComplemento($row->complemento)
				->setCaixaPostal($row->caixaPostal)
				->setDataValidacao($row->dataValidacao)
                ->setCategoria($row->categoria)
                ->setPais($row->pais)
                ->setEstado($row->estado)
                ->setMunicipio($row->municipio)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }    

}
