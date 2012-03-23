<?php
/**
 * TipoCategoria data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_TipoCategoria
 * @subpackage Model
 */
class Basico_Model_TipoCategoriaMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_TipoCategoria if no instance registered
     * 
     * @return Basico_Model_TipoCategoria
     */
    public function getDbTable($dbTable = 'Basico_Model_TipoCategoria')
    {
        return parent::getDbTable($dbTable);
    }
    
    /**
     * Find a TipoCategoria entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_TipoCategoria $object 
     * 
     * @return void
     */
    public function find($id, Object $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
        	   ->setIdTipoCategoriaPai($row->id_tipo_categoria_pai)
        	   ->setNivel($row->nivel)
        	   ->setNome($row->nome)
        	   ->setConstanteTextual($row->constante_textual)
        	   ->setConstanteTextualDescricao($row->constante_textual_descricao)
        	   ->setCodigo($row->codigo)
        	   ->setAtivo($row->ativo)
        	   ->setDatahoraCriacao($row->datahora_criacao)
        	   ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
			   ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all TipoCategoria entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_TipoCategoria();
			$entry->setId($row->id)
        	      ->setIdTipoCategoriaPai($row->id_tipo_categoria_pai)
        	      ->setNivel($row->nivel)
        	      ->setNome($row->nome)
        	      ->setConstanteTextual($row->constante_textual)
        	      ->setConstanteTextualDescricao($row->constante_textual_descricao)
        	      ->setCodigo($row->codigo)
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
	 * Fetch all TipoCategoria entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_TipoCategoria();
			$entry->setId($row->id)
        	      ->setIdTipoCategoriaPai($row->id_tipo_categoria_pai)
        	      ->setNivel($row->nivel)
        	      ->setNome($row->nome)
        	      ->setConstanteTextual($row->constante_textual)
        	      ->setConstanteTextualDescricao($row->constante_textual_descricao)
        	      ->setCodigo($row->codigo)
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
     * Save a TipoCategoria entry
     * 
     * @param  Basico_Model_TipoCategoria $object
     * 
     * @return void
     */
    public function save(Object $object)
    {
        $data = array(
        			  'id_tipo_categoria_pai'       => $object->getNome(),
        			  'nivel'                       => $object->setNivel(),
        			  'constante_textual'           => $object->setConstanteTextual(),
        			  'nome'                        => $object->setNome(),
        			  'constante_textual_descricao' =>$object->setConstanteTextualDescricao(),
        			  'codigo'                      => $object->setCodigo(),
        			  'ativo'                       => $object->getAtivo(),
        			  'datahora_criacao'            => $object->setDatahoraCriacao(),
        			  'datahora_ultima_atualizacao' => $object->setDatahoraUltimaAtualizacao(),
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
	* Delete a TipoCategoria entry
	* 
	* @param Basico_Model_TipoCategoria $object
	* 
	* @return void
	*/
	public function delete(Object $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}	
}
