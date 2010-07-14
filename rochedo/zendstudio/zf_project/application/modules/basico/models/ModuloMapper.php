<?php
/**
 * Modulo data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Modulo
 * @subpackage Model
 */
class Basico_Model_ModuloMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_ModuloMapper
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
     * Lazy loads Basico_Model_DbTable_Modulo if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Modulo');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Modulo entry
     * 
     * @param  Basico_Model_Modulo $object
     * @return void
     */
    public function save(Basico_Model_Modulo $object)
    {
        $data = array(
				'nome'   => $object->getNome(),
				'descricao'   => $object->getDescricao(),
				'versao'   => $object->getVersao(),
				'path'   => $object->getPath(),
				'instalado'   => $object->getInstalado(),
				'ativo'   => $object->getAtivo(),
				'data_depreciacao'   => $object->getDataDepreciacao(),
				'xml_autoria'   => $object->getXmlAutoria(),
                'id_modulo_pai'   => $object->getModuloPai(),
                'rowinfo'     => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Modulo entry
	* @param Basico_Model_Modulo $object
	* @return void
	*/
	public function delete(Basico_Model_Modulo $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Modulo entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Modulo $object 
     * @return void
     */
    public function find($id, Basico_Model_Modulo $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setVersao($row->versao)
				->setPath($row->path)
				->setInstalado($row->instalado)
				->setAtivo($row->ativo)
				->setDataDepreciacao($row->data_depreciacao)
				->setXmlAutoria($row->xml_autoria)
                ->setModuloPai($row->id_modulo_pai)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all modulo entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Modulo();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setVersao($row->versao)
				->setPath($row->path)
				->setInstalado($row->instalado)
				->setAtivo($row->ativo)
				->setDataDepreciacao($row->data_depreciacao)
				->setXmlAutoria($row->xml_autoria)
                ->setModuloPai($row->id_modulo_pai)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all modulo entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Modulo();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setVersao($row->versao)
				->setPath($row->path)
				->setInstalado($row->instalado)
				->setAtivo($row->ativo)
				->setDataDepreciacao($row->data_depreciacao)
				->setXmlAutoria($row->xml_autoria)
                ->setModuloPai($row->id_modulo_pai)
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
            ->from(array('table1' => 'modulo'),
                   array('id' => 'table1.id',
                        'nome' => 'table1.nome' ,
                        'descricao' => 'table1.descricao' ,
                        'versao' => 'table1.versao' ,
                        'path' => 'table1.path' ,
                        'instalado' => 'table1.instalado' ,
                        'ativo' => 'table1.ativo' ,
                        'data_depreciacao' => 'table1.data_depreciacao' ,
                        'xml_autoria' => 'table1.xml_autoria' ,
                        'id_modulo_pai' => 'table1.id_modulo_pai', 
                        'rowinfo'   => 'table1.rowinfo' ))
            ->joinInner($join[0])
            ->where($where)
            ->order($order)
            ->limit($count, $offset);
        $stmt = $this->getDbTable()->getAdapter()->query($select);
        $resultSet = $stmt->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_Modulo();
            $entry->setId($row['id'])
                ->setNome($row['nome'])
                ->setDescricao($row['descricao'])
                ->setVersao($row['versao'])
                ->setPath($row['path'])
                ->setInstalado($row['instalado'])
                ->setAtivo($row['ativo'])
                ->setDataDepreciacao($row['data_depreciacao'])
                ->setXmlAutoria($row['xml_autoria'])
                ->setModuloPai($row['modulo_pai'])
                ->setRowinfo($row['rowinfo'])
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
            $entry = new Basico_Model_Modulo();
            $entry->setId($row->id)
				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setVersao($row->versao)
				->setPath($row->path)
				->setInstalado($row->instalado)
				->setAtivo($row->ativo)
				->setDataDepreciacao($row->data_depreciacao)
				->setXmlAutoria($row->xml_autoria)
                ->setModuloPai($row->id_modulo_pai)
                ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }    
}
