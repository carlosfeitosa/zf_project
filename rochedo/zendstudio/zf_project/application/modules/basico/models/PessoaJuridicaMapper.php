<?php
/**
 * PessoaJuridica data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_PessoaJuridica
 * @subpackage Model
 */
class Basico_Model_PessoaJuridicaMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_PessoaJuridicaMapper
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
     * Lazy loads Basico_Model_DbTable_PessoaJuridica if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_PessoaJuridica');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a PessoaJuridica entry
     * 
     * @param  Basico_Model_PessoaJuridica $object
     * @return void
     */
    public function save(Basico_Model_PessoaJuridica $object)
    {
        $data = array(
				'nivelHierarquia'   => $object->getNivelHierarquia(),
				'nome'   => $object->getNome(),
				'sigla'   => $object->getSigla(),
              'categoria'   => $object->getCategoria(),
              'pessoa'   => $object->getPessoa(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a PessoaJuridica entry
	* @param Basico_Model_PessoaJuridica $object
	* @return void
	*/
	public function delete(Basico_Model_PessoaJuridica $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a PessoaJuridica entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_PessoaJuridica $object 
     * @return void
     */
    public function find($id, Basico_Model_PessoaJuridica $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNivelHierarquia($row->nivelHierarquia)
				->setNome($row->nome)
				->setSigla($row->sigla)
                ->setCategoria($row->categoria)
                ->setPessoa($row->pessoa);
    }

	/**
	 * Fetch all pessoajuridica entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_PessoaJuridica();
			$entry->setId($row->id)

				->setNivelHierarquia($row->nivelHierarquia)
				->setNome($row->nome)
				->setSigla($row->sigla)
                ->setCategoria($row->categoria)
                ->setPessoa($row->pessoa)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all pessoajuridica entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_PessoaJuridica();
			$entry->setId($row->id)

				->setNivelHierarquia($row->nivelHierarquia)
				->setNome($row->nome)
				->setSigla($row->sigla)
                ->setCategoria($row->categoria)
                ->setPessoa($row->pessoa)
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
            ->from(array('table1' => 'pessoajuridica'),
                   array('id' => 'table1.id',
                        'nivelHierarquia' => 'table1.nivelHierarquia' ,
                        'nome' => 'table1.nome' ,
                        'sigla' => 'table1.sigla' ,
                        'categoria' => 'table1.categoria)',
                        'pessoa' => 'table1.pessoa)'))
            ->joinInner($join[0])
            ->where($where)
            ->order($order)
            ->limit($count, $offset);
        $stmt = $this->getDbTable()->getAdapter()->query($select);
        $resultSet = $stmt->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_PessoaJuridica();
            $entry->setId($row['id'])
                ->setNivelHierarquia($row['nivelHierarquia'])
                ->setNome($row['nome'])
                ->setSigla($row['sigla'])
                ->setCategoria($row['categoria'])
                ->setPessoa($row['pessoa'])
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
            $entry = new Basico_Model_PessoaJuridica();
            $entry->setId($row->id)
				->setNivelHierarquia($row->nivelHierarquia)
				->setNome($row->nome)
				->setSigla($row->sigla)
                ->setCategoria($row->categoria)
                ->setPessoa($row->pessoa)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }    

}
