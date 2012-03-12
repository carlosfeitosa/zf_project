<?php
/**
 * FormularioAssocclElemento data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioAssocclElemento
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_FormularioAssocclElementoMapper
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
     * Lazy loads Basico_Model_DbTable_FormularioAssocclElemento if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_FormularioAssocclElemento');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Basico_Model_FormularioAssocclElemento entry
     * 
     * @param  Basico_Model_FormularioAssocclElemento $object
     * @return void
     */
    public function save(Basico_Model_FormularioAssocclElemento $object)
    {
        $data = array(
        		'id_formulario'          	   => $object->getIdFormulario(),
                'id_elemento'       		   => $object->getIdElemento(),
        		'id_ajuda'					   => $object->getIdAjuda(),
        		'id_grupo' 					   => $object->getIdGrupo(),
        		'constante_textual_label'      => $object->getConstanteTextualLabel(),
                'element_name'   			   => $object->getElementName(),
        		'element_attribs'              => $object->getElementAttribs(),
        		'element_value_default'		   => $object->getElementValueDefault(),
        		'element_reloadable'           => $object->getElementReloadable(),
                'element_required'             => $object->getElementRequired(),
                'ordem'                        => $object->getOrdem(),
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
    * Delete a FormularioAssocclElemento entry
    * @param Basico_Model_FormularioAssocclElemento $object
    * @return void
    */
    public function delete(Basico_Model_FormularioAssocclElemento $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }

    /**
     * Find a Basico_Model_FormularioAssocclElemento entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioAssocclElemento $object 
     * @return void
     */
    public function find($id, Basico_Model_FormularioAssocclElemento $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
        		->setIdFormulario($row->id_formulario)
                ->setIdElemento($row->id_elemento)
                ->setIdAjuda($row->id_ajuda)
                ->setIdGrupo($row->id_grupo)
        	    ->setConstanteTextualLabel($row->constante_textual_label)
			  	->setElementName($row->element_name)
				->setElementAttribs($row->element_attribs)
				->setElementValueDefault($row->element_value_default)
				->setElementReloadable($row->element_reloadable)
				->setElementRequired($row->element_required)
           		->setOrdem($row->ordem)
           		->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all Basico_Model_FormularioAssocclElemento entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioAssocclElemento();
            $entry->setId($row->id)
        	    ->setIdFormulario($row->id_formulario)
                ->setIdElemento($row->id_elemento)
                ->setIdAjuda($row->id_ajuda)
                ->setIdGrupo($row->id_grupo)
        	    ->setConstanteTextualLabel($row->constante_textual_label)
			  	->setElementName($row->element_name)
				->setElementAttribs($row->element_attribs)
				->setElementValueDefault($row->element_value_default)
				->setElementReloadable($row->element_reloadable)
				->setElementRequired($row->element_required)
           		->setOrdem($row->ordem)
           		->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo)
                ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all Basico_Model_FormularioAssocclElemento entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioAssocclElemento();
            $entry->setId($row->id)
        	   	  	->setIdFormulario($row->id_formulario)
	                ->setIdElemento($row->id_elemento)
	                ->setIdAjuda($row->id_ajuda)
	                ->setIdGrupo($row->id_grupo)
	        	    ->setConstanteTextualLabel($row->constante_textual_label)
				  	->setElementName($row->element_name)
					->setElementAttribs($row->element_attribs)
					->setElementValueDefault($row->element_value_default)
					->setElementReloadable($row->element_reloadable)
					->setElementRequired($row->element_required)
	           		->setOrdem($row->ordem)
	           		->setDatahoraCriacao($row->datahora_criacao)
					->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
	                ->setRowinfo($row->rowinfo)
                  	->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
}