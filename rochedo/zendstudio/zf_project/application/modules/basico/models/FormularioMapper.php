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
        		'id_categoria'					=> $object->getCategoria(),
                'id_decorator'                  => $object->getDecorator(),
        		'id_ajuda'						=> $object->getAjuda(),
				'id_formulario_pai'             => $object->getFormularioPai(),
				'nome'                          => $object->getNome(),
				'descricao'                     => $object->getDescricao(),
				'constante_textual_titulo'      => $object->getConstanteTextualTitulo(),
				'constante_textual_subtitulo'   => $object->getConstanteTextualSubTitulo(),
				'form_name'                     => $object->getFormName(),
				'form_method'                   => $object->getFormMethod(),
				'form_action'                   => $object->getFormAction(),
				'form_target'                   => $object->getFormTarget(),
				'form_enctype'                  => $object->getFormEncType(),
                'form_attribs'                  => $object->getFormAttribs(),
				'validade_inicio'               => $object->getValidadeInicio(),
				'validade_termino'              => $object->getValidadeTermino(),
				'data_desativacao'              => $object->getDataDesativacao(),
				'data_auto_reativar'            => $object->getDataAutoReativar(),
				'motivo_desativacao'            => $object->getMotivoDesativacao(),
        		'ordem'							=> $object->getOrdem(),
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

        		->setCategoria($row->id_categoria)
				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setFormName($row->form_name)
				->setConstanteTextualTitulo($row->constante_textual_titulo)
				->setConstanteTextualSubTitulo($row->constante_textual_subtitulo)
				->setFormMethod($row->form_method)
				->setFormAction($row->form_action)
				->setFormTarget($row->form_target)
				->setFormEncType($row->form_enctype)
				->setFormularioPai($row->id_formulario_pai)
				->setFormAttribs($row->form_attribs)
				->setDecorator($row->id_decorator)
				->setValidadeInicio($row->validade_inicio)
				->setValidadeTermino($row->validade_termino)
				->setDataDesativacao($row->data_desativacao)
				->setDataAutoReativar($row->data_auto_reativar)
				->setMotivoDesativacao($row->motivo_desativacao)
				->setOrdem($row->ordem)
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

        		->setCategoria($row->id_categoria)
				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setFormName($row->form_name)
				->setConstanteTextualTitulo($row->constante_textual_titulo)
				->setConstanteTextualSubTitulo($row->constante_textual_subtitulo)
				->setFormMethod($row->form_method)
				->setFormAction($row->form_action)
				->setFormTarget($row->form_target)
				->setFormEncType($row->form_enctype)
				->setFormularioPai($row->id_formulario_pai)
				->setFormAttribs($row->form_attribs)
                ->setDecorator($row->id_decorator)				
				->setValidadeInicio($row->validade_inicio)
				->setValidadeTermino($row->validade_termino)
				->setDataDesativacao($row->data_desativacao)
				->setDataAutoReativar($row->data_auto_reativar)
				->setMotivoDesativacao($row->motivo_desativacao)
				->setOrdem($row->ordem)
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
			
        		->setCategoria($row->id_categoria)
				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setFormName($row->form_name)
				->setConstanteTextualTitulo($row->constante_textual_titulo)
				->setConstanteTextualSubTitulo($row->constante_textual_subtitulo)
				->setFormMethod($row->form_method)
				->setFormAction($row->form_action)
				->setFormTarget($row->form_target)
				->setFormEncType($row->form_enctype)
				->setFormularioPai($row->id_formulario_pai)
				->setFormAttribs($row->form_attribs)
                ->setDecorator($row->id_decorator)				
				->setValidadeInicio($row->validade_inicio)
				->setValidadeTermino($row->validade_termino)
				->setDataDesativacao($row->data_desativacao)
				->setDataAutoReativar($row->data_auto_reativar)
				->setMotivoDesativacao($row->motivo_desativacao)
				->setOrdem($row->ordem)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

}
