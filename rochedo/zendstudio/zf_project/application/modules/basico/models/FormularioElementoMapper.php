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
class Basico_Model_FormularioElementoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_FormularioElementoMapper
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
     * Lazy loads Basico_Model_DbTable_FormularioElemento if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_FormularioElemento');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a FormularioElemento entry
     * 
     * @param  Basico_Model_FormularioElemento $object
     * @return void
     */
    public function save(Basico_Model_FormularioElemento $object)
    {
        $data = array(
                'nome'   => $object->getNome(),
                'descricao'   => $object->getDescricao(),
                'constante_textual_label'   => $object->getConstanteTextualLabel(),
                'element_name'   => $object->getElementName(),
                'element_attribs' => $object->getElementAttribs(),
                'element'   => $object->getElement(),
                'element_reloadable' => $object->getElementReloadable(),
                'id_categoria' => $object->getCategoria(),
                'id_ajuda'     => $object->getAjuda(),
                'id_formulario_elemento_filter' => $object->getFormularioElementoFilter(),
                'id_decorator'                  => $object->getDecorator(),       
                'rowinfo'   => $object->getRowinfo(),

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
     * @param Basico_Model_FormularioElemento $object
     * @return void
     */
    public function delete(Basico_Model_FormularioElemento $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }

    /**
     * Find a FormularioElemento entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormularioElemento $object 
     * @return void
     */
    public function find($id, Basico_Model_FormularioElemento $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setConstanteTextualLabel($row->constante_textual_label)
				->setElementName($row->element_name)
				->setElementAttribs($row->element_attribs)
				->setElement($row->element)
				->setElementReloadable($row->element_reloadable)
				->setCategoria($row->id_categoria)
				->setAjuda($row->id_ajuda)
				->setFormularioElementoFilter($row->id_formulario_elemento_filter)
				->setDecorator($row->id_decorator)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all formularioelemento entries
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

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setConstanteTextualLabel($row->constante_textual_label)
				->setElementName($row->element_name)
				->setElementAttribs($row->element_attribs)
				->setElement($row->element)
				->setElementReloadable($row->element_reloadable)
				->setCategoria($row->id_categoria)
				->setAjuda($row->id_ajuda)
				->setFormularioElementoFilter($row->id_formulario_elemento_filter)
				->setDecorator($row->id_decorator)
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

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setConstanteTextualLabel($row->constante_textual_label)
				->setElementName($row->element_name)
				->setElementAttribs($row->element_attribs)
				->setElement($row->element)
				->setElementReloadable($row->element_reloadable)
				->setCategoria($row->id_categoria)
				->setAjuda($row->id_ajuda)
				->setFormularioElementoFilter($row->id_formulario_elemento_filter)
				->setDecorator($row->id_decorator)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
    * Fetch all entries but allowing a join
    * @return array
    */
    public function fetchJoinList($join=null, $where=null, $order=null, $count=null, $offset=null)
    {
        $select = $this->getDbTable()->getAdapter()->select()
            ->from(array('table1'               => 'formulario_elemento'),
                   array('id'                   => 'table1.id',
                        'nome'                  => 'table1.nome' ,
                        'descricao'             => 'table1.descricao' ,
                        'constanteTextualLabel' => 'table1.constante_textual_label' ,
                        'elementName'           => 'table1.element_name' ,
                        'elementAttribs'        => 'table1.element_attribs' ,
                        'element'               => 'table1.element' ,
                        'ajuda'                 => 'table1.id_ajuda' ,
                        'categoria'             => 'table1.id_categoria' ,
                        'decorator'             => 'table1.id_decorator' ,
                        'rowinfo'               => 'table1.rowinfo' ))
            ->joinInner($join[0])
            ->where($where)
            ->order($order)
            ->limit($count, $offset);
        $stmt = $this->getDbTable()->getAdapter()->query($select);
        $resultSet = $stmt->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioElemento();
            $entry->setId($row['id'])
                ->setNome($row['nome'])
                ->setDescricao($row['descricao'])
                ->setConstanteTextualLabel($row['constante_textual_label'])
                ->setElementName($row['element_name'])
                ->setElementAttribs($row['element_attribs'])
                ->setElement($row['element'])
                ->setAjuda($row['id_ajuda'])
                ->setCategoria($row['id_categoria'])
                ->setDecorator($row['id_decorator'])
                ->setMapper($this);
            $entries[] = $entry;
            
        }
        return $entries;
    }
    
    
    /**
    * Fetch all entries but allowing a join. This is an alternative method similar to fetchJoinList
    * @return array
    */
    public function fetchJoin($jointable=null, $joinby, $where=null, $order=null)
    {
        $select = $this->getDbTable()->select();
        $select->join($jointable, $joinby, array());
        $select->where($where, array());
        $resultSet = $this->getDbTable()->fetchAll($select);
        $entries   = array();
        foreach ($resultSet as $row)
        {
            $entry = new Basico_Model_FormularioElemento();
            $entry->setId($row->id)
				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setConstanteTextualLabel($row->constanteTextualLabel)
				->setElementName($row->elementName)
				->setElementAttribs($row->elementAttribs)
				->setElement($row->element)
				->setAjuda($row->id_ajuda)
				->setCategoria($row->id_categoria)
				->setDecorator($row->id_decorator)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    } 

}
