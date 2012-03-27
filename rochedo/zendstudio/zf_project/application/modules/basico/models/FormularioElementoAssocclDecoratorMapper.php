<?php
/**
 * FormularioElementoAssocclDecorator data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_FormularioElementoAssocclDecorator
 * @subpackage Model
 */
class Basico_Model_FormularioElementoAssocclDecoratorMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_FormularioElementoAssocclDecorator if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable = 'Basico_Model_DbTable_FormularioElementoAssocclDecorator')
    {
    	return parent::getDbTable($dbTable);
    }
    
    /**
     * Save a FormularioElementoAssocclDecorator entry
     * 
     * @param  Basico_Model_FormularioElementoAssocclDecorator $object
     * @return void
     */
    public function save(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $data = array(
                'id_elemento'      			  => $object->getIdElemento(),
        		'id_decorator'                => $object->getIdDecorator(),
        		'ordem'						  => $object->getOrdem(),
        		'datahora_criacao'            => $object->getDataHoraCriacao(),
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
    * Delete a FormularioElementoAssocclDecorator entry
    * 
    * @param Basico_Model_FormularioElementoAssocclDecorator $object
    * 
    * @return void
    */
    public function delete(Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
        $this->getDbTable()->delete(array('id = ?' => $object->id));
    }

    /**
     * Find a FormularioElementoAssocclDecorator entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_FormulariosElementosDecorators $object
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
               ->setIdElemento($row->id_elemento)
               ->setIdDecorator($row->id_decorator)
               ->setOrdem($row->ordem)
               ->setDataHoraCriacao($row->datahora_criacao)
               ->setRowinfo($row->rowinfo);
    }

    /**
     * Fetch all FormularioElementoAssocclDecorator entries
     * 
     * @return array
     */
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioElementoAssocclDecorator();
            $entry->setId($row->id)
				->setIdElemento($row->id_elemento)
				->setIdDecorator($row->id_decorator)
				->setOrdem($row->ordem)
				->setDataHoraCriacao($row->datahora_criacao)
				->setRowinfo($row->rowinfo)
                ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
    
    /**
     * Fetch all FormularioElementoAssocclDecorator entries
     * 
     * @return array
     */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        $resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new Basico_Model_FormularioElementoAssocclDecorator();
            $entry->setId($row->id)
				->setIdElemento($row->id_elemento)
				->setIdDecorator($row->id_decorator)
				->setOrdem($row->ordem)
				->setDataHoraCriacao($row->datahora_criacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }
}