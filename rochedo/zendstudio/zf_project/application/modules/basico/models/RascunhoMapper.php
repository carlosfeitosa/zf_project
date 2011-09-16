<?php
/**
 * Rascunho data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_Rascunho
 * @subpackage Model
 */
class Basico_Model_RascunhoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_RascunhoMapper
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
     * Lazy loads Basico_Model_DbTable_Rascunho if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_Rascunho');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Rascunho entry
     * 
     * @param  Basico_Model_Rascunho $object
     * @return void
     */
    public function save(Basico_Model_Rascunho $object)
    {
        $data = array(
				'request'                     => $object->getRequest(),
				'post'                        => $object->getPost(),
				'form_action'                 => $object->getFormAction(),
				'form_name'                   => $object->getFormName(),
				'datahora_expiracao'          => $object->getDataHoraExpiracao(),
				'datahora_criacao'            => $object->getDataHoraCriacao(),
				'datahora_ultima_atualizacao' => $object->getDataHoraUltimaAtualizacao(),
              	'id_rascunho_pai'             => $object->getRascunhoPai(),
              	'id_categoria'                => $object->getCategoria(),
              	'id_pessoa'                   => $object->getPessoa(),
              	'id_perfil'                   => $object->getPerfil(),
        		'rowinfo'					  => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Rascunho entry
	* @param Basico_Model_Rascunho $object
	* @return void
	*/
	public function delete(Basico_Model_Rascunho $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Rascunho entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_Rascunho $object 
     * @return void
     */
    public function find($id, Basico_Model_Rascunho $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setRequest($row->request)
				->setPost($row->post)
				->setFormAction($row->form_action)
				->setFormName($row->form_name)
				->setDataHoraExpiracao($row->datahora_expiracao)
				->setDataHoraCriacao($row->datahora_criacao)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRascunhoPai($row->id_rascunho_pai)
                ->setCategoria($row->id_categoria)
                ->setPessoa($row->id_pessoa)
                ->setPerfil($row->id_perfil)
                ->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all rascunho entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Rascunho();
			$entry->setId($row->id)

				->setRequest($row->request)
				->setPost($row->post)
				->setFormAction($row->form_action)
				->setFormName($row->form_name)
				->setDataHoraExpiracao($row->datahora_expiracao)
				->setDataHoraCriacao($row->datahora_criacao)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRascunhoPai($row->id_rascunho_pai)
                ->setCategoria($row->id_categoria)
                ->setPessoa($row->id_pessoa)
                ->setPerfil($row->id_perfil)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all rascunho entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_Rascunho();
			$entry->setId($row->id)

				->setRequest($row->request)
				->setPost($row->post)
				->setFormAction($row->form_action)
				->setFormName($row->form_name)
				->setDataHoraExpiracao($row->datahora_expiracao)
				->setDataHoraCriacao($row->datahora_criacao)
				->setDataHoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
                ->setRascunhoPai($row->id_rascunho_pai)
                ->setCategoria($row->id_categoria)
                ->setPessoa($row->id_pessoa)
                ->setPerfil($row->id_perfil)
                ->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
