<?php
/**
 * DadosBiometricosAssocPessoa data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_DadosBiometricosAssocPessoa
 * @subpackage Model
 */
class Basico_Model_DadosBiometricosAssocPessoaMapper extends Abstract_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Interface_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_DadosBiometricosAssocPessoa if no instance registered
     * 
     * @return Basico_Model_DbTable_DadosBiometricosAssocPessoa
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_DadosBiometricosAssocPessoa');
    }

    /**
     * Find a DadosBiometricosAssocPessoa entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_DadosBiometricosAssocPessoa $object 
     * 
     * @return void
     */
    public function find($id, Basico_Model_DadosBiometricosAssocPessoa $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
               ->setIdDadosBiometricos($row->id_dados_biometricos)
               ->setIdCategoriaSexo($row->id_categoria_sexo)
               ->setIdCategoriaRaca($row->id_categoria_raca)
               ->setIdCategoriaTipoSanguineo($row->id_categoria_tipo_sanguineo)
			   ->setAltura($row->altura)
			   ->setPeso($row->peso)
			   ->setHistoricoMedico($row->historico_medico)
			   ->setDatahoraCriacao($row->datahora_criacao)
			   ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
               ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all DadosBiometricosAssocPessoa entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_DadosBiometricosAssocPessoa();
			$entry->setId($row->id)
                  ->setIdDadosBiometricos($row->id_dados_biometricos)
                  ->setIdCategoriaSexo($row->id_categoria_sexo)
                  ->setIdCategoriaRaca($row->id_categoria_raca)
                  ->setIdCategoriaTipoSanguineo($row->id_categoria_tipo_sanguineo)
			      ->setAltura($row->altura)
			      ->setPeso($row->peso)
			      ->setHistoricoMedico($row->historico_medico)
			      ->setDatahoraCriacao($row->datahora_criacao)
			      ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                  ->setRowinfo($row->rowinfo)
			      ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all DadosBiometricosAssocPessoa entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_DadosBiometricosAssocPessoa();
			$entry->setId($row->id)
                  ->setIdDadosBiometricos($row->id_dados_biometricos)
                  ->setIdCategoriaSexo($row->id_categoria_sexo)
                  ->setIdCategoriaRaca($row->id_categoria_raca)
                  ->setIdCategoriaTipoSanguineo($row->id_categoria_tipo_sanguineo)
			      ->setAltura($row->altura)
			      ->setPeso($row->peso)
			      ->setHistoricoMedico($row->historico_medico)
			      ->setDatahoraCriacao($row->datahora_criacao)
			      ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                  ->setRowinfo($row->rowinfo)
			      ->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

    /**
     * Save a DadosBiometricosAssocPessoa entry
     * 
     * @param  Basico_Model_DadosBiometricosAssocPessoa $object
     * @return void
     */
    public function save(Basico_Model_DadosBiometricosAssocPessoa $object)
    {
        $data = array(
                      'id_dados_biometricos'         => $object->getIdTipoCategoria(),
                      'id_categoria_sexo'            => $object->getIdCategoriaSexo(),
					  'id_categoria_raca'            => $object->getIdCategoriaRaca(),
        			  'id_categoria_tipo_sanguineo'  => $object->getIdCategoriaTipoSanguineo(),        				
					  'altura'  			         => $object->getAltura(),
					  'peso'                         => $object->getPeso(),
        			  'historico_medico'             => $object->getHistoricoMedico(),
        			  'datahora_criacao'             => $object->getDatahoraCriacao(),
        			  'datahora_ultima_atualizacao'  => $object->getDatahoraUltimaAtualizacao(),
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
	* Delete a DadosBiometricosAssocPessoa entry
	* @param Basico_Model_DadosBiometricosAssocPessoa $object
	* @return void
	*/
	public function delete(Basico_Model_DadosBiometricosAssocPessoa $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}
