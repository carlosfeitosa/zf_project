<?php
/**
 * EventoElemento data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_EventoElemento
 * @subpackage Model
 */
class Basico_Model_EventoElementoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_EventoElementoMapper
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
     * Lazy loads Basico_Model_DbTable_EventoElemento if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_EventoElemento');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a EventoElemento entry
     * 
     * @param  Basico_Model_EventoElemento $object
     * @return void
     */
    public function save(Basico_Model_EventoElemento $object)
    {
        $data = array(
				'nome'   => $object->getNome(),
				'descricao'   => $object->getDescricao(),
				'evevnto'   => $object->getEvevnto(),
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
	* Delete a EventoElemento entry
	* @param Basico_Model_EventoElemento $object
	* @return void
	*/
	public function delete(Basico_Model_EventoElemento $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a EventoElemento entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_EventoElemento $object 
     * @return void
     */
    public function find($id, Basico_Model_EventoElemento $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setEvevnto($row->evevnto)
				->setDataHoraCriacao($row->dataHoraCriacao)
				->setDataHoraUltimaAtualizacao($row->dataHoraUltimaAtualizacao);
    }

}
