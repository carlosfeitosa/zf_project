<?php
/**
 * MetodoValidacao data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_MetodoValidacao
 * @subpackage Model
 */
class Basico_Model_MetodoValidacaoMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_MetodoValidacao if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_MetodoValidacao');
    }
    
	/**
     * Find a MetodoValidacao entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_MetodoValidacao $object 
     * @return void
     */
    public function find($id, Basico_Model_MetodoValidacao $object)
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
				->setMetodo($row->metodo)
				->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all metodovalidacao entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_MetodoValidacao();
			$entry->setId($row->id)

				->setIdCategoria($row->id_categoria)
				->setNome($row->nome)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setMetodo($row->metodo)
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
	 * Fetch all metodovalidacao entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_MetodoValidacao();
			$entry->setId($row->id)

				->setIdCategoria($row->id_categoria)
				->setNome($row->nome)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setMetodo($row->metodo)
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
     * Save a MetodoValidacao entry
     * 
     * @param  Basico_Model_MetodoValidacao $object
     * @return void
     */
    public function save(Basico_Model_MetodoValidacao $object)
    {
        $data = array(
        		'id_categoria'                => $object->getIdCategoria(),
				'nome'   			          => $object->getNome(),
				'constante_textual'   		  => $object->getConstanteTextual(),
        		'constante_textual_descricao' => $object->getConstanteTextualDescricao(),
				'metodo'   			          => $object->getMetodo(),
				'ativo'   			          => $object->getAtivo(),
				'datahora_criacao'		      => $object->getDatahoraCriacao(),
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
	* Delete a MetodoValidacao entry
	* @param Basico_Model_MetodoValidacao $object
	* @return void
	*/
	public function delete(Basico_Model_MetodoValidacao $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}