<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Componente data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Componente
 * @subpackage Model
 */
class Basico_Model_ComponenteMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_ComponenteMapper
     */
    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception(MSG_ERRO_TABLE_DATA_GATEWAY_INVALIDO);
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Componente if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Componente');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Componente entry
     * 
     * @param  Basico_Model_Componente $object
     * @return void
     */
    public function save(Basico_Model_Componente $object)
    {
        $data = array(
				'nome'               => $object->getNome(),
				'descricao'          => $object->getDescricao(),
				'componente'         => $object->getComponente(),
				'validade_inicio'    => $object->getValidadeInicio(),
				'validade_termino'   => $object->getValidadeTermino(),
				'data_desativacao'   => $object->getDataDesativacao(),
				'data_auto_reativar' => $object->getDataAutoReativar(),
				'motivo_desativacao' => $object->getMotivoDesativacao(),
                'id_categoria'       => $object->getCategoria(),
        		'rowinfo'			 => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Componente entry
	* @param Basico_Model_Componente $object
	* @return void
	*/
	public function delete(Basico_Model_Componente $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Componente entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Componente $object 
     * @return void
     */
    public function find($id, Basico_Model_Componente $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setComponente($row->componente)
				->setValidadeInicio($row->validade_inicio)
				->setValidadeTermino($row->validade_termino)
				->setDataDesativacao($row->data_desativacao)
				->setDataAutoReativar($row->data_auto_reativar)
				->setMotivoDesativacao($row->motivo_desativacao)
                ->setCategoria($row->id_categoria)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all componente entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Componente();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setComponente($row->componente)
				->setValidadeInicio($row->validade_inicio)
				->setValidadeTermino($row->validade_termino)
				->setDataDesativacao($row->data_desativacao)
				->setDataAutoReativar($row->data_auto_reativar)
				->setMotivoDesativacao($row->motivo_desativacao)
                ->setCategoria($row->id_categoria)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all componente entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Componente();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setComponente($row->componente)
				->setValidadeInicio($row->validade_inicio)
				->setValidadeTermino($row->validade_termino)
				->setDataDesativacao($row->data_desativacao)
				->setDataAutoReativar($row->data_auto_reativar)
				->setMotivoDesativacao($row->motivo_desativacao)
                ->setCategoria($row->id_categoria)
                ->setRowinfo($row->rowinfo)
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
            ->from(array('table1' => 'componente'),
                   array('id' => 'table1.id',
                        'nome' => 'table1.nome' ,
                        'descricao' => 'table1.descricao' ,
                        'componente' => 'table1.componente' ,
                        'validadeInicio' => 'table1.validadeInicio' ,
                        'validadeTermino' => 'table1.validadeTermino' ,
                        'dataDesativacao' => 'table1.dataDesativacao' ,
                        'dataAutoReativar' => 'table1.dataAutoReativar' ,
                        'motivoDesativacao' => 'table1.motivoDesativacao' ,
                        'categoria' => 'table1.categoria)'))
            ->joinInner($join[0])
            ->where($where)
            ->order($order)
            ->limit($count, $offset);
        $stmt = $this->getDbTable()->getAdapter()->query($select);
        $resultSet = $stmt->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_Componente();
            $entry->setId($row['id'])
                ->setNome($row['nome'])
                ->setDescricao($row['descricao'])
                ->setComponente($row['componente'])
                ->setValidadeInicio($row['validadeInicio'])
                ->setValidadeTermino($row['validadeTermino'])
                ->setDataDesativacao($row['dataDesativacao'])
                ->setDataAutoReativar($row['dataAutoReativar'])
                ->setMotivoDesativacao($row['motivoDesativacao'])
                ->setCategoria($row['categoria'])
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
            $entry = new Basico_Model_Componente();
            $entry->setId($row->id)
				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setComponente($row->componente)
				->setValidadeInicio($row->validadeInicio)
				->setValidadeTermino($row->validadeTermino)
				->setDataDesativacao($row->dataDesativacao)
				->setDataAutoReativar($row->dataAutoReativar)
				->setMotivoDesativacao($row->motivoDesativacao)
                ->setCategoria($row->categoria)
                 ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
}