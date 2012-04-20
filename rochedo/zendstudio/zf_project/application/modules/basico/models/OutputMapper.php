<?php
/**
 * Output data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Output
 * @subpackage Model
 */
class Basico_Model_OutputMapper extends  Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
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
		$this->_arrayMapper['id']						 = 'id';
		$this->_arrayMapper['idCategoria']				 = 'id_categoria';
		$this->_arrayMapper['nome']						 = 'nome';
		$this->_arrayMapper['constanteTextual']			 = 'constante_textual';
		$this->_arrayMapper['constanteTextualDescricao'] = 'constante_textual_descricao';
		$this->_arrayMapper['contexto']					 = 'contexto';
		$this->_arrayMapper['ativo']					 = 'ativo';
		$this->_arrayMapper['datahoraCriacao']			 = 'datahora_criacao';
		$this->_arrayMapper['datahoraUltimaAtualizacao'] = 'datahora_ultima_atualizacao';
		$this->_arrayMapper['rowinfo']					 = 'rowinfo'; 
	}

   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Output if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_Output')
    {
    	// chamando método do pai
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a Output entry by id
     * 
     * @param  int $id
     * @param  Basico_Model_Output $object 
     * 
     * @return void
     */
    public function find($id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método do pai
    	return $this->findAbstrato($this->_arrayMapper, $id, $object);
    }

	/**
	 * Fetch all Output entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_Output');
	}
	
	/**
	 * Fetch all Output entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		// chamando método pai
		return $this->fetchListAbstrato($this->_arrayMapper, 'Basico_Model_Output', $where, $order, $count, $offset);
	}
    
    /**
     * Save a Output entry
     * 
     * @param  Basico_Model_Output $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// chamando método pai
    	return $this->saveAbstrato($this->_arrayMapper, $object);
    }
    
	/**
	* Delete a Output entry
	* 
	* @param Basico_Model_Output $object
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
     * Lazy loads Basico_Model_DbTable_Output if no instance registered
     * 
     * @return Basico_Model_DbTable_Output
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_Output')
    {
    	return parent::getDbTable($dbTable);
    }

    /**
     * Find a Output entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Output $object 
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
				->setIdCategoria($row->id_categoria)
				->setNome($row->nome)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setContexto($row->contexto)
				->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo);
    }
    
	/**
	 * Fetch all output entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Output();
			$entry->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setNome($row->nome)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setContexto($row->contexto)
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
	 * Fetch all output entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Output();
			$entry->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setNome($row->nome)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setContexto($row->contexto)
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
     * Save a Output entry
     * 
     * @param  Basico_Model_Output $object
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
				'id_categoria'					=> $object->getIdCategoria(),
        		'nome'        					=> $object->getNome(),
        		'constante_textual'   			=> $object->getConstanteTextual(),
				'constante_textual_descricao'	=> $object->getConstanteTextualDescricao(),
        		'contexto'     					=> $object->getContexto(),
        		'Ativo'        					=> $object->getAtivo(),
        		'datahora_criacao'				=> $object->getDatahoraCriacao(),
        		'datahora_ultima_atualizacao'	=> $object->getDatahoraUltimaAtualizacao(),
                'rowinfo'    					=> $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Output entry
	* @param Basico_Model_Output $object
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}