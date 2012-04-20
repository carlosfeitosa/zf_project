<?php
/**
 * FormularioModulo data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioModulo
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclModuloMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
	/**
	 * Mapeamento da classe
	 * 
	 * @var Array'
	 */
	public $_arrayMapper = array();

	/**
	 * Constructor
	 * 
	 * @param  array|null $options 
	 * 
	 * @return void
	 */
	public function __construct()
	{
		// montando array de mapeamento
		$this->_arrayMapper['id'] = 'id';
		$this->_arrayMapper['idModulo'] = 'id_modulo';
		$this->_arrayMapper['id_formulario'] = 'id_formulario';
		$this->_arrayMapper['datahoraCriacao'] = 'datahora_criacao';
		$this->_arrayMapper['rowinfo'] = 'rowinfo'; 
	}

   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioAssocclModulo if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_FormularioAssocclModulo')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a FormularioAssocclModulo entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_FormularioAssocclModulo $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all FormularioAssocclModulo entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_FormularioAssocclModulo');
	}
	
	/**
	 * Fetch all FormularioAssocclModulo entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_FormularioAssocclModulo', $where, $order, $count, $offset);
	}
    
    /**
     * Save a FormularioAssocclModulo entry
     * 
     * @param  Basico_Model_FormularioAssocclModulo $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a FormularioAssocclModulo entry
	* 
	* @param Basico_Model_FormularioAssocclModulo $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// chamando método pai
    	$this->deleteAbstrato($this->_arrayMapper, $object);
	}
	
	
	
	
	
	
	
	
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioModulo if no instance registered
     * 
     * @return Basico_Model_DbTable_FormularioModulo
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_FormularioModulo')
    {
        return parent::getDbTable($dbTable);
    }	
    
    /**
     * Find a FormularioModulo entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioModulo $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
        	   ->setIdModulo($row->id_modulo)
        	   ->setIdFormulario($row->id_formulario)
			   ->setDatahoraCriacao($row->datahora_criacao)
			   ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all FormularioModulo entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioAssocclModulo();
			$entry->setId($row->id)
        	      ->setIdModulo($row->id_modulo)
        	      ->setIdFormulario($row->id_formulario)
			      ->setDatahoraCriacao($row->datahora_criacao)
			      ->setRowinfo($row->rowinfo)
 	              ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all FormularioModulo entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioAssocclModulo();
			$entry->setId($row->id)
        	      ->setIdModulo($row->id_modulo)
        	      ->setIdFormulario($row->id_formulario)
			      ->setDatahoraCriacao($row->datahora_criacao)
			      ->setRowinfo($row->rowinfo)
 	              ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

    /**
     * Save a FormularioModulo entry
     * 
     * @param  Basico_Model_FormularioModulo $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
        		      'id_modulo'                 => $object->getIdModulo(),
        		      'id_formulario'             => $object->getIdFormulario(),
        		      'datahora_criacao'          => $object->getDatahoraCriacao(),
                      'rowinfo'                   => $object->getRowinfo(),
                     );
                     
        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
    /**
     * Delete a FormularioModulo entry
     * 
     * @param Basico_Model_FormularioModulo $object
     * 
     * @return void
     */
    public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }	
}