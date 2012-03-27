<?php
/**
 * FormularioElemento data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioElemento
 * @subpackage Model
 */
class Basico_Model_FormularioElementoMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioElemento if no instance registered
     * 
     * @return Basico_Model_DbTable_FormularioElemento
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_FormularioElemento')
    {
        return parent::getDbTable($dbTable);
    }	
    
    /**
     * Find a FormularioElemento entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioElemento $object 
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
        $object->setId($row->id)
			   ->setIdCategoria($row->id_categoria)
			   ->setIdComponente($row->id_componente)
			   ->setIdAjuda($row->id_ajuda)
			   ->setNome($row->nome)
			   ->setConstanteTextual($row->constante_textual)
			   ->setConstanteTextualDescricao($row->constante_textual_descricao)
			   ->setConstanteTextualLabel($row->constante_textual_label)
			   ->setElement($row->element)
			   ->setElementName($row->element_name)
			   ->setElementAttribs($row->element_attribs)
			   ->setElementValueDefault($row->element_value_default)
			   ->setElementReloadable($row->element_reloadable)
			   ->setAtivo($row->ativo)
			   ->setDatahoraCriacao($row->datahora_criacao)
			   ->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
			   ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all FormularioElemento entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioElemento();
			$entry->setId($row->id)
			      ->setIdCategoria($row->id_categoria)
			      ->setIdComponente($row->id_componente)
			      ->setIdAjuda($row->id_ajuda)
			      ->setNome($row->nome)
			      ->setConstanteTextual($row->constante_textual)
			      ->setConstanteTextualDescricao($row->constante_textual_descricao)
			      ->setConstanteTextualLabel($row->constante_textual_label)
			      ->setElement($row->element)
			      ->setElementName($row->element_name)
			      ->setElementAttribs($row->element_attribs)
			      ->setElementValueDefault($row->element_value_default)
			      ->setElementReloadable($row->element_reloadable)
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
	 * Fetch all formularioelemento entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_FormularioElemento();
			$entry->setId($row->id)
			      ->setIdCategoria($row->id_categoria)
			      ->setIdComponente($row->id_componente)
			      ->setIdAjuda($row->id_ajuda)
			      ->setNome($row->nome)
			      ->setConstanteTextual($row->constante_textual)
			      ->setConstanteTextualDescricao($row->constante_textual_descricao)
			      ->setConstanteTextualLabel($row->constante_textual_label)
			      ->setElement($row->element)
			      ->setElementName($row->element_name)
			      ->setElementAttribs($row->element_attribs)
			      ->setElementValueDefault($row->element_value_default)
			      ->setElementReloadable($row->element_reloadable)
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
     * Save a FormularioElemento entry
     * 
     * @param  Basico_Model_FormularioElemento $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
                'id_categoria'                => $object->getIdCategoria(),
                'id_componente'               => $object->getIdComponente(),
                'id_ajuda'                    => $object->getIdAjuda(),
                'nome'                        => $object->getNome(),
                'constante_textual'           => $object->getConstanteTextual(),
                'constante_textual_descricao' => $object->getConstanteTextualDescricao(),
                'constante_textual_label'     => $object->getConstanteTextualLabel(),
                'element'                     => $object->getElement(),
                'element_name'                => $object->getElementName(),
                'element_attribs'             => $object->getElementAttribs(),
        		'element_value_default'	      => $object->getElementValueDefault(),
        		'element_reloadable'          => $object->getElementReloadable(),
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
     * Delete a FormularioElemento entry
     * 
     * @param Basico_Model_FormularioElemento $object
     * 
     * @return void
     */
    public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }	
}