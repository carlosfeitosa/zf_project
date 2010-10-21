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
				'id_departamento'  			 => $object->getDepartamento(),
				'cargo'  					 => $object->getCargo(),
				'funcao'  					 => $object->getFuncao(),
				'atividades_desenvolvidas'   => $object->getAtividadesDesenvolvidas(),
				'data_admissao'   			 => $object->getDataAdmissao(),
				'data_demissao' 			 => $object->getDataDemissao(),
				'carga_horaria_semanal'  	 => $object->getCargaHorariaSemanal(),
				'dedicacao_exclusiva'  		 => $object->getDedicacaoExclusiva(),
				'salario_bruto'  			 => $object->getSalarioBruto(),
				'descricao'  				 => $object->getDescricao(),
                'id_pessoa'  				 => $object->getPessoa(),
                'pessoa_juridica_vinculo'    => $object->getPessoaJuridicaVinculo(),
                'vinculo_empregaticio'       => $object->getVinculoEmpregaticio(),
                'regime_trabalho'            => $object->getRegimeTrabalho(),

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
				->setDepartamento($row->id_departamento)
				->setCargo($row->cargo)
				->setFuncao($row->funcao)
				->setAtividadesDesenvolvidas($row->atividades_desenvolvidas)
				->setDataAdmissao($row->data_admissao)
				->setDataDemissao($row->data_demissao)
				->setCargaHorariaSemanal($row->carga_horaria_semanal)
				->setDedicacaoExclusiva($row->dedicacao_exclusiva)
				->setSalarioBruto($row->salario_bruto)
				->setDescricao($row->descricao)
                ->setPessoa($row->id_pessoa)
                ->setPessoaJuridicaVinculo($row->pessoa_juridica_vinculo)
                ->setVinculoEmpregaticio($row->vinculo_empregaticio)
                ->setRegimeTrabalho($row->regime_trabalho);
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
				->setDepartamento($row->id_departamento)
				->setCargo($row->cargo)
				->setFuncao($row->funcao)
				->setAtividadesDesenvolvidas($row->atividades_desenvolvidas)
				->setDataAdmissao($row->data_admissao)
				->setDataDemissao($row->data_demissao)
				->setCargaHorariaSemanal($row->carga_horaria_semanal)
				->setDedicacaoExclusiva($row->dedicacao_exclusiva)
				->setSalarioBruto($row->salario_bruto)
				->setDescricao($row->descricao)
                ->setPessoa($row->id_pessoa)
                ->setPessoaJuridicaVinculo($row->pessoa_juridica_vinculo)
                ->setVinculoEmpregaticio($row->vinculo_empregaticio)
                ->setRegimeTrabalho($row->regime_trabalho)
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
				->setDepartamento($row->id_departamento)
				->setCargo($row->cargo)
				->setFuncao($row->funcao)
				->setAtividadesDesenvolvidas($row->atividades_desenvolvidas)
				->setDataAdmissao($row->data_admissao)
				->setDataDemissao($row->data_demissao)
				->setCargaHorariaSemanal($row->carga_horaria_semanal)
				->setDedicacaoExclusiva($row->dedicacao_exclusiva)
				->setSalarioBruto($row->salario_bruto)
				->setDescricao($row->descricao)
                ->setPessoa($row->id_pessoa)
                ->setPessoaJuridicaVinculo($row->pessoa_juridica_vinculo)
                ->setVinculoEmpregaticio($row->vinculo_empregaticio)
                ->setRegimeTrabalho($row->regime_trabalho)
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
                        'id_departamento' => 'table1.id_departamento' ,
                        'cargo' => 'table1.cargo' ,
                        'funcao' => 'table1.funcao' ,
                        'atividades_desenvolvidas' => 'table1.atividades_desenvolvidas' ,
                        'data_admissao' => 'table1.data_admissao' ,
                        'data_demissao' => 'table1.data_demissao' ,
                        'carga_horaria_semanal' => 'table1.carga_horaria_semanal' ,
                        'dedicacao_exclusiva' => 'table1.dedicacao_exclusiva' ,
                        'salario_bruto' => 'table1.salario_bruto' ,
                        'descricao' => 'table1.descricao' ,
                        'id_pessoa' => 'table1.id_pessoa)',
                        'pessoa_juridica_vinculo' => 'table1.pessoa_juridica_vinculo)',
                        'vinculo_empregaticio' => 'table1.vinculo_empregaticio)',
                        'regime_trabalho' => 'table1.regime_trabalho)'))
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
                ->setDepartamento($row['id_departamento'])
                ->setCargo($row['cargo'])
                ->setFuncao($row['funcao'])
                ->setAtividadesDesenvolvidas($row['atividades_desenvolvidas'])
                ->setDataAdmissao($row['data_admissao'])
                ->setDataDemissao($row['data_demissao'])
                ->setCargaHorariaSemanal($row['carga_horaria_semanal'])
                ->setDedicacaoExclusiva($row['dedicacao_exclusiva'])
                ->setSalarioBruto($row['salario_bruto'])
                ->setDescricao($row['descricao'])
                ->setPessoa($row['id_pessoa'])
                ->setPessoaJuridicaVinculo($row['pessoa_juridica_vinculo'])
                ->setVinculoEmpregaticio($row['vinculo_empregaticio'])
                ->setRegimeTrabalho($row['regime_trabalho'])
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
				->setDepartamento($row->id_departamento)
				->setCargo($row->cargo)
				->setFuncao($row->funcao)
				->setAtividadesDesenvolvidas($row->atividades_desenvolvidas)
				->setDataAdmissao($row->data_admissao)
				->setDataDemissao($row->data_demissao)
				->setCargaHorariaSemanal($row->carga_horaria_semanal)
				->setDedicacaoExclusiva($row->dedicacao_exclusiva)
				->setSalarioBruto($row->salario_bruto)
				->setDescricao($row->descricao)
                ->setPessoa($row->id_pessoa)
                ->setPessoaJuridicaVinculo($row->pessoa_juridica_vinculo)
                ->setVinculoEmpregaticio($row->vinculo_empregaticio)
                ->setRegimeTrabalho($row->regime_trabalho)
                ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }    

}
