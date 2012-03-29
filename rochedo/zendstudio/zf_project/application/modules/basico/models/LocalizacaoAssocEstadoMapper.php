<?php
/**
 * LocalizacaoAssocEstado data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_LocalizacaoAssocEstado
 * @subpackage Model
 */
class Basico_Model_LocalizacaoAssocEstadoMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_LocalizacaoAssocEstado if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_LocalizacaoAssocEstado')
    {
    	return parent::getDbTable($dbTable);
    }
    
    /**
     * Save a Estado entry
     * 
     * @param  Basico_Model_LocalizacaoAssocEstado $object
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
				'id_categoria'  			  => $object->getIdCategoria(),
        		'id_estado_pai' 			  => $object->getIdEstadoPai(),
        		'id_pais'					  => $object->getIdPais(),
             	'nivel'						  => $object->getNivel(),
        		'nome'						  => $object->getNome(),
				'sigla'						  => $object->getSigla(),
				'codigo_ddd'				  => $object->getCodigoDddi(),
        		'ativo'						  => $object->getAtvo(),
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
	* Delete a Estado entry
	* @param Basico_Model_LocalizacaoAssocEstado $object
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Estado entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_LocalizacaoAssocEstado $object 
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
				->setIdEstadoPai($row->id_estado_pai)
				->setIdPais($row->id_pais)
				->setNivel($row->nivel)
        		->setNome($row->nome)
				->setSigla($row->sigla)
				->setCodigoDdd($row->codigo_ddd)
				->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all LocalizacaoAssocEstado entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_LocalizacaoAssocEstado();
			$entry->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setIdEstadoPai($row->id_estado_pai)
				->setIdPais($row->id_pais)
				->setNivel($row->nivel)
        		->setNome($row->nome)
				->setSigla($row->sigla)
				->setCodigoDdd($row->codigo_ddd)
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
	 * Fetch all LocalizacaoAssocEstado entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_LocalizacaoAssocEstado();
			$entry->setId($row->id)
				->setIdCategoria($row->id_categoria)
				->setIdEstadoPai($row->id_estado_pai)
				->setIdPais($row->id_pais)
				->setNivel($row->nivel)
        		->setNome($row->nome)
				->setSigla($row->sigla)
				->setCodigoDdd($row->codigo_ddd)
				->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}