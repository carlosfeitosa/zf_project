<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */

/**
 * CvcCvc data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_CvcCvc
 * @subpackage Model
 */
class Basico_Model_CvcCvcMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_CvcCvc if no instance registered
     * 
     * @return Basico_Model_DbTable_CvcCvc
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_CvcCvc')
    {
        return parent::getDbTable($dbTable);
    }

    /**
     * Find a CvcCvc entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_CvcCvc $object 
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
        $object ->setId($row->id)
				->setIdAssocChaveEstrangeira($row->id_assoc_chave_estrangeira)
        		->setIdGenerico($row->id_generico)
				->setVersao($row->versao)
                ->setObjeto($row->objeto)
                ->setChecksum($row->checksum)
                ->setValidadeInicio($row->validade_inicio)
                ->setValidadeTermino($row->validade_termino)
                ->setDatahoraCriacao($row->datahora_criacao)
                ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all CvcCvc entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_CvcCvc();
			$entry->setId($row->id)
				  ->setIdAssocChaveEstrangeira($row->id_assoc_chave_estrangeira)			
				  ->setIdGenerico($row->id_generico)
				  ->setVersao($row->versao)
                  ->setObjeto($row->objeto)
                  ->setChecksum($row->checksum)
                  ->setValidadeInicio($row->validade_inicio)
                  ->setValidadeTermino($row->validade_termino)
                  ->setDatahoraCriacao($row->datahora_criacao)
                  ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all CvcCvc entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_CvcCvc();
			$entry->setId($row->id)
				  ->setIdAssocChaveEstrangeira($row->id_assoc_chave_estrangeira)			
				  ->setIdGenerico($row->id_generico)
				  ->setVersao($row->versao)
                  ->setObjeto($row->objeto)
                  ->setChecksum($row->checksum)
                  ->setValidadeInicio($row->validade_inicio)
                  ->setValidadeTermino($row->validade_termino)
                  ->setDatahoraCriacao($row->datahora_criacao)
                  ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                  ->setRowinfo($row->rowinfo)
				  ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a CvcCvc entry
     * 
     * @param  Basico_Model_CvcCvc $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
			          'id_assoc_chave_estrangeira'  => $object->getIdAssocChaveEstrangeira(),
                      'id_generico'				    => $object->getIdGenerico(),
        		      'versao'					    => $object->getVersao(),
                      'objeto'						=> $object->getObjeto(),
        		      'checksum'				    => $object->getChecksum(),
        		      'validade_termino'		    => $object->getValidadeTermino(),
        		      'datahora_criacao'            => $object->getDatahoraCriacao(),
        		      'datahora_ultima_atualizacao' => $object->getDatahoraUltimaAtualizacao(),
        		      'rowinfo'					    => $object->getRowinfo(),
                     );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a CvcCvc entry
	* 
	* @param Basico_Model_CvcCvc $object
	* 
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}	
}