<?php
/**
 * AssocChaveEstrangeiraRelacao data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_AssocChaveEstrangeiraRelacao
 * @subpackage Model
 */
class Basico_Model_AssocChaveEstrangeiraRelacaoMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{   
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_AssocChaveEstrangeiraRelacao if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_AssocChaveEstrangeiraRelacao');
    }
    
	/**
     * Find a AssocChaveEstrangeiraRelacao entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_AssocChaveEstrangeiraRelacao $object 
     * @return void
     */
    public function find($id, Basico_Model_AssocChaveEstrangeiraRelacao $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setTabelaOrigem($row->tabela_origem)
				->setCampoOrigem($row->campo_origem)
				->setDatahoraCriacao($row->datahora_criacao)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all AssocChaveEstrangeiraRelacao entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AssocChaveEstrangeiraRelacao();
			$entry->setId($row->id)

				->setTabelaOrigem($row->tabela_origem)
				->setCampoOrigem($row->campo_origem)
				->setDatahoraCriacao($row->datahora_criacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all AssocChaveEstrangeiraRelacao entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AssocChaveEstrangeiraRelacao();
			$entry->setId($row->id)

				->setTabelaOrigem($row->tabela_origem)
				->setCampoOrigem($row->campo_origem)
				->setDatahoraCriacao($row->datahora_criacao)
				->setRowinfo($row->rowinfo) 
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a AssocChaveEstrangeiraRelacao entry
     * 
     * @param  Basico_Model_AssocChaveEstrangeiraRelacao $object
     * @return void
     */
    public function save(Basico_Model_AssocChaveEstrangeiraRelacao $object)
    {
        $data = array(
				'tabela_origem'    => $object->getTabelaOrigem(),
				'campo_origem'     => $object->getCampoOrigem(),
        		'datahora_criacao' => $object->getDatahoraCriacao(),
        		'rowinfo'          => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a AssocChaveEstrangeiraRelacao entry
	* @param Basico_Model_AssocChaveEstrangeiraRelacao $object
	* @return void
	*/
	public function delete(Basico_Model_AssocChaveEstrangeiraRelacao $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}
