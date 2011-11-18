<?php
/**
 * conteudo data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_conteudo
 * @subpackage Model
 */
class Basico_Model_ConteudoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_ConteudoMapper
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
     * Lazy loads Basico_Model_DbTable_conteudo if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_conteudo');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a conteudo entry
     * 
     * @param  Basico_Model_conteudo $object
     * @return void
     */
    public function save(Basico_Model_conteudo $object)
    {
        $data = array(
				'actionName'   => $object->getActionName(),
				'constanteTextualTitulo'   => $object->getConstanteTextualTitulo(),
				'constanteTextualSubTitulo'   => $object->getConstanteTextualSubTitulo(),
				'constanteTextualMensagem'   => $object->getConstanteTextualMensagem(),
				'metodoInicializacao'   => $object->getMetodoInicializacao(),
				'dataHoraCriacao'   => $object->getDataHoraCriacao(),
				'dataHoraUltimaAtualizacao'   => $object->getDataHoraUltimaAtualizacao(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a conteudo entry
	* @param Basico_Model_conteudo $object
	* @return void
	*/
	public function delete(Basico_Model_conteudo $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a conteudo entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_conteudo $object 
     * @return void
     */
    public function find($id, Basico_Model_conteudo $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setActionName($row->actionName)
				->setConstanteTextualTitulo($row->constanteTextualTitulo)
				->setConstanteTextualSubTitulo($row->constanteTextualSubTitulo)
				->setConstanteTextualMensagem($row->constanteTextualMensagem)
				->setMetodoInicializacao($row->metodoInicializacao)
				->setDataHoraCriacao($row->dataHoraCriacao)
				->setDataHoraUltimaAtualizacao($row->dataHoraUltimaAtualizacao);
    }
    
    
    /**
     * Fetch all Conteudo entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormulariosElementosDecorators();
	        $entry->setId($row->id)
				  ->setActionName($row->actionName)
				  ->setConstanteTextualTitulo($row->constanteTextualTitulo)
				  ->setConstanteTextualSubTitulo($row->constanteTextualSubTitulo)
				  ->setConstanteTextualMensagem($row->constanteTextualMensagem)
				  ->setMetodoInicializacao($row->metodoInicializacao)
				  ->setDataHoraCriacao($row->dataHoraCriacao)
				  ->setDataHoraUltimaAtualizacao($row->dataHoraUltimaAtualizacao);
           $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all Conteudo entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_Conteudo();
	        $entry->setId($row->id)
				  ->setActionName($row->actionName)
				  ->setConstanteTextualTitulo($row->constanteTextualTitulo)
				  ->setConstanteTextualSubTitulo($row->constanteTextualSubTitulo)
				  ->setConstanteTextualMensagem($row->constanteTextualMensagem)
				  ->setMetodoInicializacao($row->metodoInicializacao)
				  ->setDataHoraCriacao($row->dataHoraCriacao)
				  ->setDataHoraUltimaAtualizacao($row->dataHoraUltimaAtualizacao);
            $entries[] = $entry;
        }
        return $entries;
    }
}
