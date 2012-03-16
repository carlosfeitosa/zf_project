<?php
/**
 * CategoriaAssocChaveEstrangeira data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_CategoriaAssocChaveEstrangeira
 * @subpackage Model
 */
class Basico_Model_CategoriaAssocChaveEstrangeiraMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_CategoriaAssocChaveEstrangeira if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_CategoriaAssocChaveEstrangeira');
    }
    
	/**
     * Find a CategoriaAssocChaveEstrangeira entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_CategoriaAssocChaveEstrangeira $object 
     * @return void
     */
    public function find($id, Basico_Model_CategoriaAssocChaveEstrangeira $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
                ->setIdCategoria($row->id_categoria)
                ->setIdModulo($row->id_modulo)
				->setTabelaEstrangeira($row->tabela_estrangeira)
				->setCampoEstrangeiro($row->campo_estrangeiro)
				->setDatahoraCriacao($row->datahora_criacao)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all CategoriaAssocChaveEstrangeira entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_CategoriaAssocChaveEstrangeira();
			$entry->setId($row->id)
                  	->setIdCategoria($row->id_categoria)
	                ->setIdModulo($row->id_modulo)
					->setTabelaEstrangeira($row->tabela_estrangeira)
					->setCampoEstrangeiro($row->campo_estrangeiro)
					->setDatahoraCriacao($row->datahora_criacao)
					->setRowinfo($row->rowinfo)
    			  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all CategoriaAssocChaveEstrangeira entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_CategoriaAssocChaveEstrangeira();
			$entry->setId($row->id)
                  	->setIdCategoria($row->id_categoria)
	                ->setIdModulo($row->id_modulo)
					->setTabelaEstrangeira($row->tabela_estrangeira)
					->setCampoEstrangeiro($row->campo_estrangeiro)
					->setDatahoraCriacao($row->datahora_criacao)
					->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a CategoriaAssocChaveEstrangeira entry
     * 
     * @param  Basico_Model_CategoriaAssocChaveEstrangeira $object
     * @return void
     */
    public function save(Basico_Model_CategoriaAssocChaveEstrangeira $object)
    {
        $data = array(
                'id_categoria'         => $object->getIdCategoria(),
                'id_modulo'            => $object->getIdModulo(),
 				'tabela_estrangeira'   => $object->getTabelaEstrangeira(),
				'campo_estrangeiro'    => $object->getCampoEstrangeiro(),
        		'datahora_criacao'     => $object->getDatahoraCriacao(),
                'rowinfo'              => $object->getRowinfo(),
        
        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a CategoriaAssocChaveEstrangeira entry
	* @param Basico_Model_CategoriaAssocChaveEstrangeira $object
	* @return void
	*/
	public function delete(Basico_Model_CategoriaAssocChaveEstrangeira $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}
