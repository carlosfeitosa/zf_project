<?php
/**
 * AcaoAplicacao data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_AcaoAplicacao
 * @subpackage Model
 */
class Basico_Model_AcaoAplicacaoMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
   	/**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_AcaoAplicacao if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
    */ 
    public function getDbTable($dbTable = 'Basico_Model_DbTable_AcaoAplicacao')
    {
        return parent::getDbTable($dbTable);
    }
    
	/**
     * Find a AcaoAplicacao entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_AcaoAplicacao $object 
     * @return void
     */
    public function find($id, Object $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
				->setIdModulo($row->id_modulo)
				->setController($row->controller)
				->setAction($row->action)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setAtivo($row->ativo)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all acaoaplicacao entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AcaoAplicacao();
			$entry->setId($row->id)

				->setIdModulo($row->id_modulo)
				->setController($row->controller)
				->setAction($row->action)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
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
	 * Fetch all acaoaplicacao entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AcaoAplicacao();
			$entry->setId($row->id)

				->setIdModulo($row->id_modulo)
				->setController($row->controller)
				->setAction($row->action)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
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
     * Save a AcaoAplicacao entry
     * 
     * @param  Basico_Model_AcaoAplicacao $object
     * @return void
     */
    public function save(Object $object)
    {
        $data = array(
        		'id_modulo'            		  => $object->getIdModulo(),
				'controller'           		  => $object->getController(),
				'action'               		  => $object->getAction(),
				'constante_textual'    		  => $object->getConstanteTextual(),
        		'constante_textual_descricao' => $object->getConstanteTextualDescricao(),
        		'ativo'                	 	  => $object->getAtivo(),
				'datahora_criacao' 		  	  => $object->getDatahoraCriacao(),
				'datahora_ultima_atualizacao' => $object->getDatahoraUltimaAtualizacao(),
                'rowinfo'              		  => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a AcaoAplicacao entry
	* @param Basico_Model_AcaoAplicacao $object
	* @return void
	*/
	public function delete(Object $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}
