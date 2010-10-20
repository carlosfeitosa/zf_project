<?php
/**
 * DadosProfissionais data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_DadosProfissionais
 * @subpackage Model
 */
class Basico_Model_DadosProfissionaisMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_DadosProfissionaisMapper
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
     * Lazy loads Basico_Model_DbTable_DadosProfissionais if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_DadosProfissionais');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a DadosProfissionais entry
     * 
     * @param  Basico_Model_DadosProfissionais $object
     * @return void
     */
    public function save(Basico_Model_DadosProfissionais $object)
    {
        $data = array(
				'departamento'   => $object->getDepartamento(),
				'cargo'   => $object->getCargo(),
				'funcao'   => $object->getFuncao(),
				'atividadesDesenvolvidas'   => $object->getAtividadesDesenvolvidas(),
				'dataAdmissao'   => $object->getDataAdmissao(),
				'dataDemissao'   => $object->getDataDemissao(),
				'cargaHorariaSemanal'   => $object->getCargaHorariaSemanal(),
				'dedicacaoExclusiva'   => $object->getDedicacaoExclusiva(),
				'salarioBruto'   => $object->getSalarioBruto(),
				'descricao'   => $object->getDescricao(),
              'pessoa'   => $object->getPessoa(),
              'pessoaJuridicaVinculo'   => $object->getPessoaJuridicaVinculo(),
              'vinculoEmpregaticio'   => $object->getVinculoEmpregaticio(),
              'regimeTrabalho'   => $object->getRegimeTrabalho(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a DadosProfissionais entry
	* @param Basico_Model_DadosProfissionais $object
	* @return void
	*/
	public function delete(Basico_Model_DadosProfissionais $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a DadosProfissionais entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_DadosProfissionais $object 
     * @return void
     */
    public function find($id, Basico_Model_DadosProfissionais $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setDepartamento($row->departamento)
				->setCargo($row->cargo)
				->setFuncao($row->funcao)
				->setAtividadesDesenvolvidas($row->atividadesDesenvolvidas)
				->setDataAdmissao($row->dataAdmissao)
				->setDataDemissao($row->dataDemissao)
				->setCargaHorariaSemanal($row->cargaHorariaSemanal)
				->setDedicacaoExclusiva($row->dedicacaoExclusiva)
				->setSalarioBruto($row->salarioBruto)
				->setDescricao($row->descricao)
                ->setPessoa($row->pessoa)
                ->setPessoaJuridicaVinculo($row->pessoaJuridicaVinculo)
                ->setVinculoEmpregaticio($row->vinculoEmpregaticio)
                ->setRegimeTrabalho($row->regimeTrabalho);
    }

	/**
	 * Fetch all dadosprofissionais entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_DadosProfissionais();
			$entry->setId($row->id)

				->setDepartamento($row->departamento)
				->setCargo($row->cargo)
				->setFuncao($row->funcao)
				->setAtividadesDesenvolvidas($row->atividadesDesenvolvidas)
				->setDataAdmissao($row->dataAdmissao)
				->setDataDemissao($row->dataDemissao)
				->setCargaHorariaSemanal($row->cargaHorariaSemanal)
				->setDedicacaoExclusiva($row->dedicacaoExclusiva)
				->setSalarioBruto($row->salarioBruto)
				->setDescricao($row->descricao)
                ->setPessoa($row->pessoa)
                ->setPessoaJuridicaVinculo($row->pessoaJuridicaVinculo)
                ->setVinculoEmpregaticio($row->vinculoEmpregaticio)
                ->setRegimeTrabalho($row->regimeTrabalho)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all dadosprofissionais entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_DadosProfissionais();
			$entry->setId($row->id)

				->setDepartamento($row->departamento)
				->setCargo($row->cargo)
				->setFuncao($row->funcao)
				->setAtividadesDesenvolvidas($row->atividadesDesenvolvidas)
				->setDataAdmissao($row->dataAdmissao)
				->setDataDemissao($row->dataDemissao)
				->setCargaHorariaSemanal($row->cargaHorariaSemanal)
				->setDedicacaoExclusiva($row->dedicacaoExclusiva)
				->setSalarioBruto($row->salarioBruto)
				->setDescricao($row->descricao)
                ->setPessoa($row->pessoa)
                ->setPessoaJuridicaVinculo($row->pessoaJuridicaVinculo)
                ->setVinculoEmpregaticio($row->vinculoEmpregaticio)
                ->setRegimeTrabalho($row->regimeTrabalho)
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
            ->from(array('table1' => 'dadosprofissionais'),
                   array('id' => 'table1.id',
                        'departamento' => 'table1.departamento' ,
                        'cargo' => 'table1.cargo' ,
                        'funcao' => 'table1.funcao' ,
                        'atividadesDesenvolvidas' => 'table1.atividadesDesenvolvidas' ,
                        'dataAdmissao' => 'table1.dataAdmissao' ,
                        'dataDemissao' => 'table1.dataDemissao' ,
                        'cargaHorariaSemanal' => 'table1.cargaHorariaSemanal' ,
                        'dedicacaoExclusiva' => 'table1.dedicacaoExclusiva' ,
                        'salarioBruto' => 'table1.salarioBruto' ,
                        'descricao' => 'table1.descricao' ,
                        'pessoa' => 'table1.pessoa)',
                        'pessoaJuridicaVinculo' => 'table1.pessoaJuridicaVinculo)',
                        'vinculoEmpregaticio' => 'table1.vinculoEmpregaticio)',
                        'regimeTrabalho' => 'table1.regimeTrabalho)'))
            ->joinInner($join[0])
            ->where($where)
            ->order($order)
            ->limit($count, $offset);
        $stmt = $this->getDbTable()->getAdapter()->query($select);
        $resultSet = $stmt->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_DadosProfissionais();
            $entry->setId($row['id'])
                ->setDepartamento($row['departamento'])
                ->setCargo($row['cargo'])
                ->setFuncao($row['funcao'])
                ->setAtividadesDesenvolvidas($row['atividadesDesenvolvidas'])
                ->setDataAdmissao($row['dataAdmissao'])
                ->setDataDemissao($row['dataDemissao'])
                ->setCargaHorariaSemanal($row['cargaHorariaSemanal'])
                ->setDedicacaoExclusiva($row['dedicacaoExclusiva'])
                ->setSalarioBruto($row['salarioBruto'])
                ->setDescricao($row['descricao'])
                ->setPessoa($row['pessoa'])
                ->setPessoaJuridicaVinculo($row['pessoaJuridicaVinculo'])
                ->setVinculoEmpregaticio($row['vinculoEmpregaticio'])
                ->setRegimeTrabalho($row['regimeTrabalho'])
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
            $entry = new Basico_Model_DadosProfissionais();
            $entry->setId($row->id)
				->setDepartamento($row->departamento)
				->setCargo($row->cargo)
				->setFuncao($row->funcao)
				->setAtividadesDesenvolvidas($row->atividadesDesenvolvidas)
				->setDataAdmissao($row->dataAdmissao)
				->setDataDemissao($row->dataDemissao)
				->setCargaHorariaSemanal($row->cargaHorariaSemanal)
				->setDedicacaoExclusiva($row->dedicacaoExclusiva)
				->setSalarioBruto($row->salarioBruto)
				->setDescricao($row->descricao)
                ->setPessoa($row->pessoa)
                ->setPessoaJuridicaVinculo($row->pessoaJuridicaVinculo)
                ->setVinculoEmpregaticio($row->vinculoEmpregaticio)
                ->setRegimeTrabalho($row->regimeTrabalho)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }    

}
