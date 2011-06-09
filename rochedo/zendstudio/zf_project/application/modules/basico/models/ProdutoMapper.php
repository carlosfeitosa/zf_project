<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Produto data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Produto
 * @subpackage Model
 */
class Basico_Model_ProdutoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_ProdutoMapper
     */
    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception(MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA);
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Produto if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Produto');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Produto entry
     * 
     * @param  Basico_Model_Produto $object
     * @return void
     */
    public function save(Basico_Model_Produto $object)
    {
        $data = array(
				'id_generico_proprietario' => $object->getIdGenericoProprietario(),
				'nome'                     => $object->getNome(),
				'descricao'   			   => $object->getDescricao(),
				'custo_producao'   		   => $object->getCustoProducao(),
				'valor_comercial'   	   => $object->getValorComercial(),
				'base_imposto'   		   => $object->getBaseImposto(),
                'id_categoria'   		   => $object->getCategoria(),
        		'rowinfo'          		   => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Produto entry
	* @param Basico_Model_Produto $object
	* @return void
	*/
	public function delete(Basico_Model_Produto $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Produto entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Produto $object 
     * @return void
     */
    public function find($id, Basico_Model_Produto $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
			   ->setIdGenericoProprietario($row->id_generico_proprietario)
			   ->setNome($row->nome)
			   ->setDescricao($row->descricao)
			   ->setCustoProducao($row->custo_producao)
			   ->setValorComercial($row->valor_comercial)
			   ->setBaseImposto($row->base_imposto)
               ->setCategoria($row->id_categoria)
               ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all produto entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Produto();
			$entry->setId($row->id)
				  ->setIdGenericoProprietario($row->id_generico_proprietario)
				  ->setNome($row->nome)
				  ->setDescricao($row->descricao)
				  ->setCustoProducao($row->custo_producao)
				  ->setValorComercial($row->valor_comercial)
				  ->setBaseImposto($row->base_imposto)
                  ->setCategoria($row->id_categoria)
                  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all produto entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Produto();
			$entry->setId($row->id)
				  ->setIdGenericoProprietario($row->id_generico_proprietario)
				  ->setNome($row->nome)
				  ->setDescricao($row->descricao)
				  ->setCustoProducao($row->custo_producao)
				  ->setValorComercial($row->valor_comercial)
				  ->setBaseImposto($row->base_imposto)
                  ->setCategoria($row->id_categoria)
                  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
