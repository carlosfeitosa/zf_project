<?php
/**
 * Formulario data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Formulario
 * @subpackage Model
 */
class Basico_Model_FormularioMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Formulario if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_Formulario')
    {
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a Formulario entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Formulario $object 
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
				->setIdFormularioPai($row->id_formulario_pai)
				->setNivel($row->nivel)
        		->setIdCategoria($row->id_categoria)
        		->setIdAjuda($row->id_ajuda)
				->setNome($row->nome)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setAtivo($row->ativo)
				->setFormName($row->form_name)
				->setFormMethod($row->form_method)
				->setFormAction($row->form_action)
				->setFormEnctype($row->form_enctype)
				->setFormAttribs($row->form_attribs)
				->setOrdem($row->ordem)
				->setPermiteRascunho($row->permite_rascunho)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all formulario entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Formulario();
			$entry->setId($row->id)
				->setIdFormularioPai($row->id_formulario_pai)
				->setNivel($row->nivel)
        		->setIdCategoria($row->id_categoria)
        		->setIdAjuda($row->id_ajuda)
				->setNome($row->nome)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setAtivo($row->ativo)
				->setFormName($row->form_name)
				->setFormMethod($row->form_method)
				->setFormAction($row->form_action)
				->setFormEnctype($row->form_enctype)
				->setFormAttribs($row->form_attribs)
				->setOrdem($row->ordem)
				->setPermiteRascunho($row->permite_rascunho)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all formulario entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Formulario();
			$entry->setId($row->id)
				->setIdFormularioPai($row->id_formulario_pai)
				->setNivel($row->nivel)
        		->setIdCategoria($row->id_categoria)
        		->setIdAjuda($row->id_ajuda)
				->setNome($row->nome)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setAtivo($row->ativo)
				->setFormName($row->form_name)
				->setFormMethod($row->form_method)
				->setFormAction($row->form_action)
				->setFormEnctype($row->form_enctype)
				->setFormAttribs($row->form_attribs)
				->setOrdem($row->ordem)
				->setPermiteRascunho($row->permite_rascunho)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo)				
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a Formulario entry
     * 
     * @param  Basico_Model_Formulario $object
     * 
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
        		'id_formulario_pai'             => $object->getIdFormularioPai(),
        		'nivel'                         => $object->getNivel(),
        		'id_categoria'					=> $object->getIdCategoria(),
        		'id_ajuda'						=> $object->getIdAjuda(),
				'nome'                          => $object->getNome(),
				'constante_textual'      		=> $object->getConstanteTextual(),
				'constante_textual_descricao'   => $object->getConstanteTextualDescricao(),
        		'ativo'       					=> $object->getAtivo(),
				'form_name'                     => $object->getFormName(),
				'form_method'                   => $object->getFormMethod(),
				'form_action'                   => $object->getFormAction(),
				'form_enctype'                  => $object->getFormEnctype(),
                'form_attribs'                  => $object->getFormAttribs(),
        		'ordem'							=> $object->getOrdem(),
        		'permite_rascunho'				=> $object->getPermiteRascunho(),
        		'datahora_criacao'              => $object->getDatahoraCriacao(),
        		'datahora_ultima_atualizacao'   => $object->getDatahoraUltimaAtualizacao(),
                'rowinfo'                       => $object->getRowinfo(),         

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Formulario entry
	* @param Basico_Model_Formulario $object
	* @return void
	*/
	public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}
