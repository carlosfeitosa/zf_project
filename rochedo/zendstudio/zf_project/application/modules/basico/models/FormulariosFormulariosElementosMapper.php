<?php
/**
 * FormulariosFormulariosElementos data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormulariosFormulariosElementos
 * @subpackage Model
 */
class Basico_Model_FormulariosFormulariosElementosMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_FormulariosFormulariosElementosMapper
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
     * Lazy loads Basico_Model_DbTable_FormulariosFormulariosElementos if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_FormulariosFormulariosElementos');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a LearningBasket entry
     * 
     * @param  Basico_Model_FormulariosFormulariosElementos $object
     * @return void
     */
    public function save(Basico_Model_FormulariosFormulariosElementos $object)
    {
        $data = array(
                'element_name'   			   => $object->getElementName(),
        		'element_reloadable'           => $object->getElementReloadable(),
        		'element_attribs'              => $object->getElementAttribs(),
        		'constante_textual_label'      => $object->getConstanteTextualLabel(),
                'id_formulario'          	   => $object->getFormulario(),
                'id_formulario_elemento'       => $object->getFormularioElemento(),
        		'id_grupo_formulario_elemento' => $object->getGrupoFormularioElemento(),
                'element_required'             => $object->getElementRequired(),
                'ordem'                        => $object->getOrdem(),
        		'datahora_criacao'             => $object->getDataHoraCriacao(),
        		'datahora_ultima_atualizacao'  => $object->getDataHoraUltimaAtualizacao(),
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
    * Delete a FormulariosFormulariosElementos entry
    * @param Basico_Model_FormulariosFormulariosElementos $object
    * @return void
    */
    public function delete(Basico_Model_FormulariosFormulariosElementos $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }

    /**
     * Find a LearningBasket entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormulariosFormulariosElementos $object 
     * @return void
     */
    public function find($id, Basico_Model_FormulariosFormulariosElementos $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
        	    ->setConstanteTextualLabel($row->constante_textual_label)
			  	->setElementName($row->element_name)
				->setElementAttribs($row->element_attribs)
				->setElementReloadable($row->element_reloadable)
                ->setFormulario($row->id_formulario)
                ->setFormularioElemento($row->id_formulario_elemento)
                ->setGrupoFormularioElemento($row->id_grupo_formulario_elemento)
                ->setElementRequired($row->element_required)
           		->setOrdem($row->ordem)
           		->setDataHoraCriacao($row->datahora_criacao)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all FormulariosFormulariosElementos entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormulariosFormulariosElementos();
            $entry->setId($row->id)
        	    ->setConstanteTextualLabel($row->constante_textual_label)
			  	->setElementName($row->element_name)
				->setElementAttribs($row->element_attribs)
				->setElementReloadable($row->element_reloadable)            
                ->setFormulario($row->id_formulario)
                ->setFormularioElemento($row->id_formulario_elemento)
                ->setGrupoFormularioElemento($row->id_grupo_formulario_elemento)
                ->setElementRequired($row->element_required)
                ->setOrdem($row->ordem)
                ->setDataHoraCriacao($row->datahora_criacao)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRowinfo($row->rowinfo)
                ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all learningbasket entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormulariosFormulariosElementos();
            $entry->setId($row->id)
        	   	  ->setConstanteTextualLabel($row->constante_textual_label)
			  	  ->setElementName($row->element_name)
				  ->setElementAttribs($row->element_attribs)
				  ->setElementReloadable($row->element_reloadable)            
                  ->setFormulario($row->id_formulario)
                  ->setFormularioElemento($row->id_formulario_elemento)
                  ->setGrupoFormularioElemento($row->id_grupo_formulario_elemento)
                  ->setElementRequired($row->element_required)
                  ->setOrdem($row->ordem)
                  ->setDataHoraCriacao($row->datahora_criacao)
				  ->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                  ->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
}