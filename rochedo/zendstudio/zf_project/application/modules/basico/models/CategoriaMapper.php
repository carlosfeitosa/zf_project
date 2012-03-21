<?php
/**
 * Categoria data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Categoria
 * @subpackage Model
 */
class Basico_Model_CategoriaMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Find a Categoria entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Categoria $object 
     * @return void
     */
    public function find($id, Basico_Model_Categoria $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setIdTipoCategoria($row->id_tipo_categoria)
               ->setIdCategoriaPai($row->id_categoria_pai)
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
	 * Fetch all categoria entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Categoria();
			$entry->setId($row->id)
                  ->setIdTipoCategoria($row->id_tipo_categoria)
                  ->setIdCategoriaPai($row->id_categoria_pai)
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
	 * Fetch all categoria entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Categoria();
			$entry->setId($row->id)
                  ->setIdTipoCategoria($row->id_tipo_categoria)
                  ->setIdCategoriaPai($row->id_categoria_pai)
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
     * Save a Categoria entry
     * 
     * @param  Basico_Model_Categoria $object
     * @return void
     */
    public function save(Basico_Model_Categoria $object)
    {
        $data = array(
                      'id_tipo_categoria'           => $object->getIdTipoCategoria(),
                      'id_categoria_pai'            => $object->getIdCategoria(),
					  'nivel'  			            => $object->getNivel(),
					  'nome'                        => $object->getNome(),
        			  'constante_textual'           => $object->getConstanteTextual(),
                      'constante_textual_descricao' => $object->getConstanteTextualDescricao(),
        			  'codigo'                      => $object->getCodigo(),
					  'ativo'                       => $object->getAtivo(),
        			  'datahora_criacao'            => $object->getDatahoraCriacao(),
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
	* Delete a Categoria entry
	* @param Basico_Model_Categoria $object
	* @return void
	*/
	public function delete(Basico_Model_Categoria $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}
