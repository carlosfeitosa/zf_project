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
class Basico_Model_FormularioMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_FormularioMapper
     */
    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception(MSG_ERRO_TABLE_DATA_GATEWAY_INVALIDO);
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_Formulario if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Formulario');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Formulario entry
     * 
     * @param  Basico_Model_Formulario $object
     * 
     * @return void
     */
    public function save(Basico_Model_Formulario $object)
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
	public function delete(Basico_Model_Formulario $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Formulario entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Formulario $object 
     * @return void
     */
    public function find($id, Basico_Model_Formulario $object)
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
				//->setDatahoraCriacao($row->datahora_criacao)
				//->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
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
				//->setDatahoraCriacao($row->datahora_criacao)
				//->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
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
				//->setDatahoraCriacao($row->datahora_criacao)
				//->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo)				
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

}
