<?php
/**
 * Ajuda data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Ajuda
 * @subpackage Model
 */
class Basico_Model_AjudaMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Ajuda if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_Ajuda');
    }
    
    /**
     * Find a Ajuda entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Ajuda $object 
     * @return void
     */
    public function find($id, Basico_Model_Ajuda $object)
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
                ->setConstanteTextualAjuda($row->constante_textual_ajuda)
				->setConstanteTextualHint($row->constante_textual_hint)
				->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all ajuda entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Ajuda();
			$entry->setId($row->id)
                ->setIdCategoria($row->id_categoria)
                ->setNome($row->nome)
                ->setConstanteTextual($row->constante_textual)
                ->setConstanteTextualDescricao($row->constante_textual_descricao)
                ->setConstanteTextualAjuda($row->constante_textual_ajuda)
				->setConstanteTextualHint($row->constante_textual_hint)
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
	 * Fetch all ajuda entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Ajuda();
			$entry->setId($row->id)
                ->setIdCategoria($row->id_categoria)
                ->setNome($row->nome)
                ->setConstanteTextual($row->constante_textual)
                ->setConstanteTextualDescricao($row->constante_textual_descricao)
                ->setConstanteTextualAjuda($row->constante_textual_ajuda)
				->setConstanteTextualHint($row->constante_textual_hint)
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
     * Save a Ajuda entry
     * 
     * @param  Basico_Model_Ajuda $object
     * @return void
     */
    public function save(Basico_Model_Ajuda $object)
    {
        $data = array(
        		'id_categoria'                => $object->getIdCategoria(),
                'nome'                        => $object->getNome(),
        		'constante_textual'           => $object->getConstanteTextual(),
                'constante_textual_descricao' => $object->getConstanteTextualDescricao(),
                'constante_textual_ajuda'     => $object->getConstanteTextualAjuda(),
				'constante_textual_hint'      => $object->getConstanteTextualHint(),
				'ativo'                       => $object->getAtivo(),
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
	* Delete a Ajuda entry
	* @param Basico_Model_Ajuda $object
	* @return void
	*/
	public function delete(Basico_Model_Ajuda $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}
