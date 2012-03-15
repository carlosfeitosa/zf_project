<?php
/**
 * Modulo data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Modulo
 * @subpackage Model
 */
class Basico_Model_ModuloMapper extends Abstract_RochedoMapper implements Interface_RochedoMapperPersistencia, Interface_RochedoMapperPesquisa
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Modulo if no instance registered
     * 
     * @return Basico_Model_DbTable_Modulo
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_Modulo');
    }
    
    /**
     * Save a Modulo entry
     * 
     * @param  Basico_Model_Modulo $object
     * @return void
     */
    public function save(Basico_Model_Modulo $object)
    {
        $data = array(
        		'id_modulo_pai' => $object->getIdModuloPai(),
        		'id_categoria' => $object->getIdCategoria(),
				'nome' => $object->getNome(),
				'constante_textual' => $object->getConstanteTextual(),
				'constante_textual_descricao' => $object->getConstanteTextualDescricao(),
				'versao' => $object->getVersao(),
				'path' => $object->getPath(),
				'instalado' => $object->getInstalado(),
				'ativo' => $object->getAtivo(),
				'data_depreciacao' => $object->getDataDepreciacao(),
				'xml_autoria' => $object->getXmlAutoria(),
        		'datahora_criacao' => $object->getDatahoraCriacao(),
        		'datahora_ultima_atualizacao' => $object->getDatahoraUltimaAtualizacao(),        		
                'rowinfo' => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Modulo entry
	* @param Basico_Model_Modulo $object
	* @return void
	*/
	public function delete(Basico_Model_Modulo $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Modulo entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Modulo $object 
     * @return void
     */
    public function find($id, Basico_Model_Modulo $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
				->setIdModuloPai($row->id_modulo_pai)
				->setIdCategoria($row->id_categoria)
				->setNome($row->nome)
				->setConstanteTextual($row->constate_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setVersao($row->versao)
				->setPath($row->path)
				->setInstalado($row->instalado)
				->setAtivo($row->ativo)
				->setDataDepreciacao($row->data_depreciacao)
				->setXmlAutoria($row->xml_autoria)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all modulo entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Modulo();
			$entry->setId($row->id)
					->setIdModuloPai($row->id_modulo_pai)
					->setIdModuloPai($row->id_modulo_pai)
					->setIdCategoria($row->id_categoria)
					->setNome($row->nome)
					->setConstanteTextual($row->constate_textual)
					->setConstanteTextualDescricao($row->constante_textual_descricao)
					->setVersao($row->versao)
					->setPath($row->path)
					->setInstalado($row->instalado)
					->setAtivo($row->ativo)
					->setDataDepreciacao($row->data_depreciacao)
					->setXmlAutoria($row->xml_autoria)
					->setDatahoraCriacao($row->datahora_criacao)
					->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                	->setRowinfo($row->rowinfo)
                	->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all modulo entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Modulo();
			$entry->setId($row->id)
					->setIdModuloPai($row->id_modulo_pai)
					->setIdCategoria($row->id_categoria)
					->setNome($row->nome)
					->setConstanteTextual($row->constate_textual)
					->setConstanteTextualDescricao($row->constante_textual_descricao)
					->setVersao($row->versao)
					->setPath($row->path)
					->setInstalado($row->instalado)
					->setAtivo($row->ativo)
					->setDataDepreciacao($row->data_depreciacao)
					->setXmlAutoria($row->xml_autoria)
					->setDatahoraCriacao($row->datahora_criacao)
					->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                	->setRowinfo($row->rowinfo)
					->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}