<?php
/**
 * Include data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Include
 * @subpackage Model
 */
class Basico_Model_IncludeMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Include if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_Include')
    {
        return parent::getDbTable($dbTable);        
    }
    
	/**
     * Find a Include entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Include $object 
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
                ->setUri($row->uri)
                ->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all Include entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Include();
			$entry->setId($row->id)
                ->setIdCategoria($row->id_categoria)
                ->setNome($row->nome)
                ->setConstanteTextual($row->constante_textual)
                ->setConstanteTextualDescricao($row->constante_textual_descricao)
                ->setUri($row->uri)
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
	 * Fetch all Include entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Include();
			$entry->setId($row->id)
                ->setIdCategoria($row->id_categoria)
                ->setNome($row->nome)
                ->setConstanteTextual($row->constante_textual)
                ->setConstanteTextualDescricao($row->constante_textual_descricao)
                ->setUri($row->uri)
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
     * Save a Include entry
     * 
     * @param  Basico_Model_Include $object
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
                'id_categoria'                => $object->getIdCategoria(),
        		'nome'                        => $object->getNome(),
        		'constante_textual'           => $object->getConstanteTextual(),
				'constante_textual_descricao' => $object->getConstanteTextualDescricao(),
				'uri'                         => $object->getUri(),
        		'ativo'						  => $object->getAtivo(),
        		'datahora_criacao'			  => $object->getDatahoraCriacao(),
        		'datahora_ultima_atualizacao' => $object->getDatahoraUltimaAtualizacao(),
                'rowinfo'                     => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Include entry
	* @param Basico_Model_Include $object
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}
