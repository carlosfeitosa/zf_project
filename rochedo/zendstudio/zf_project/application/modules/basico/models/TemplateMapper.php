<?php
/**
 * Template data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses        Basico_Model_DbTable_Template
 * @subpackage Model
 */
class Basico_Model_TemplateMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_Template if no instance registered
     * 
     * @return Basico_Model_Template
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_Template');
    }
	
    /**
     * Find a Template entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Template $object 
     * @return void
     */
    public function find($id, Basico_Model_Template $object)
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
			   ->setTemplate($row->template)
			   ->setAtivo($row->ativo)
			   ->setDatahoraCriacao($row->datahora_criacao)
			   ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
			   ->setFullFileName($row->full_file_name)
			   ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all template entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Template();
			$entry->setId($row->id)
			      ->setIdCategoria($row->id_categoria)
			      ->setNome($row->nome)
			      ->setConstanteTextual($row->constante_textual)
			      ->setConstanteTextualDescricao($row->constante_textual_descricao)
			      ->setTemplate($row->template)
			      ->setAtivo($row->ativo)
			      ->setDatahoraCriacao($row->datahora_criacao)
			      ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
			      ->setFullFileName($row->full_file_name)
			      ->setRowinfo($row->rowinfo)
			      ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all template entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Template();
			$entry->setId($row->id)
			   ->setIdCategoria($row->id_categoria)
			   ->setNome($row->nome)
			   ->setConstanteTextual($row->constante_textual)
			   ->setConstanteTextualDescricao($row->constante_textual_descricao)
			   ->setTemplate($row->template)
			   ->setAtivo($row->ativo)
			   ->setDatahoraCriacao($row->datahora_criacao)
			   ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
			   ->setFullFileName($row->full_file_name)
			   ->setRowinfo($row->rowinfo)
               ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a Template entry
     * 
     * @param  Basico_Model_Template $object
     * @return void
     */
    public function save(Basico_Model_Template $object)
    {
        $data = array(
                'id_categoria'                 => $object->getCategoria(),
				'nome'                         => $object->getNome(),
				'constante_textual'            => $object->getConstanteTextual(),
				'constante_textual_descricao'  => $object->getDescricao(),
				'template'                     => $object->getTemplate(),
        		'ativo'                        => $object->getAtivo(),
        		'datahora_criacao'             => $object->getDatahoraCriacao(),
        		'datahora_ultima_atualizacao'  => $object->getDatahoraUltimaAtualizacao(),
        		'full_file_name'               => $object->getFullFileName(),
                'rowinfo'                      => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Template entry
	* @param Basico_Model_Template $object
	* @return void
	*/
	public function delete(Basico_Model_Template $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}