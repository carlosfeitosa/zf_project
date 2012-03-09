<?php
/**
 * DicionarioExpressao data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_DicionarioExpressao
 * @subpackage Model
 */
class Basico_Model_DicionarioExpressaoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_DicionarioExpressaoMapper
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
     * Lazy loads Basico_Model_DbTable_DicionarioExpressao if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_DicionarioExpressao');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a DicionarioExpressao entry
     * 
     * @param  Basico_Model_DicionarioExpressao $object
     * @return void
     */
    public function save(Basico_Model_DicionarioExpressao $object)
    {
        $data = array(
        		'id_categoria'      		  => $object->getIdCategoria(),
				'constante_textual' 		  => $object->getConstanteTextual(),
				'traducao'         			  => $object->getTraducao(),
                'revisao'          			  => $object->getRevisao(),
        		'ativo'              		  => $object->getAtivo(),
        		'datahora_criacao'  		  => $object->getDatahoraCriacao(),
        		'datahora_ultima_atualizacao' => $object->getDatahoraUltimaAtualizacao(),
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a DicionarioExpressao entry
	* @param Basico_Model_DicionarioExpressao $object
	* @return void
	*/
	public function delete(Basico_Model_DicionarioExpressao $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a DicionarioExpressao entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_DicionarioExpressao $object 
     * @return void
     */
    public function find($id, Basico_Model_DicionarioExpressao $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
			    ->setIdCategoria($row->id_categoria)
        		->setConstanteTextual($row->constante_textual)
			   	->setTraducao($row->traducao)
			   	->setRevisao($row->revisao)
			   	->setAtivo($row->ativo)
			   	->setDatahoraCriacao($row->datahora_criacao)
			   	->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
			   	->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all DicionarioExpressao entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_DicionarioExpressao();
			$entry->setId($row->id)
				  	->setIdCategoria($row->id_categoria)
        			->setConstanteTextual($row->constante_textual)
		   			->setTraducao($row->traducao)
			   		->setRevisao($row->revisao)
			   		->setAtivo($row->ativo)
			   		->setDatahoraCriacao($row->datahora_criacao)
			   		->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
			   		->setRowinfo($row->rowinfo)
				  	->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all DicionarioExpressao entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_DicionarioExpressao();
			$entry->setId($row->id)
				  	->setIdCategoria($row->id_categoria)
        			->setConstanteTextual($row->constante_textual)
			   		->setTraducao($row->traducao)
			   		->setRevisao($row->revisao)
			   		->setAtivo($row->ativo)
			   		->setDatahoraCriacao($row->datahora_criacao)
			   		->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
			   		->setRowinfo($row->rowinfo)
				  	->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
