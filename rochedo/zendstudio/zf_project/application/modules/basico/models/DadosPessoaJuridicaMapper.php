<?php
/**
 * DadosPessoaJuridica data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_DadosPessoaJuridica
 * @subpackage Model
 */
class Basico_Model_DadosPessoaJuridicaMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return Basico_Model_DadosPessoaJuridicaMapper
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
     * Lazy loads Basico_Model_DbTable_DadosPessoaJuridica if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Basico_Model_DbTable_DadosPessoaJuridica');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a DadosPessoaJuridica entry
     * 
     * @param  Basico_Model_DadosPessoaJuridica $object
     * @return void
     */
    public function save(Basico_Model_DadosPessoaJuridica $object)
    {
        $data = array(
				'razao_social'	      => $object->getRazaoSocial(),
				'nome_fantasia'       => $object->getNomeFantasia(),
				'sigla'   	      => $object->getSigla(),
				'codigo_acesso'       => $object->getCodigoAcesso(),
				'data_constituicao'   => $object->getDataConstituicao(),
				'historico'   	      => $object->getHistorico(),
				'infra_estrutura'     => $object->getInfraestrutura(),
				'equipe_pd'   	      => $object->getEquipePD(),
				'mercado'   	      => $object->getMercado(),
				'capital_social'      => $object->getCapitalSocial(),
				'data_criacao'        => $object->getDataCriacao(),
				'data_ultima_modificacao'   => $object->getDataUltimaModificacao(),
				'rowinfo'   	      => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a DadosPessoaJuridica entry
	* @param Basico_Model_DadosPessoaJuridica $object
	* @return void
	*/
	public function delete(Basico_Model_DadosPessoaJuridica $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a DadosPessoaJuridica entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_DadosPessoaJuridica $object 
     * @return void
     */
    public function find($id, Basico_Model_DadosPessoaJuridica $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)
			->setRazaoSocial($row->razao_social)
			->setNomeFantasia($row->nome_fantasia)
			->setSigla($row->sigla)
			->setCodigoAcesso($row->codigo_acesso)
			->setDataConstituicao($row->data_constituicao)
			->setHistorico($row->historico)
			->setInfraestrutura($row->infra_estrutura)
			->setEquipePD($row->equipe_pd)
			->setMercado($row->mercado)
			->setCapitalSocial($row->capital_social)
			->setDataCriacao($row->data_criacao)
			->setDataUltimaModificacao($row->data_ultima_modificacao)
			->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all dadospessoajuridica entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_DadosPessoaJuridica();
			$entry->setId($row->id)
			->setRazaoSocial($row->razao_social)
			->setNomeFantasia($row->nome_fantasia)
			->setSigla($row->sigla)
			->setCodigoAcesso($row->codigo_acesso)
			->setDataConstituicao($row->data_constituicao)
			->setHistorico($row->historico)
			->setInfraestrutura($row->infra_estrutura)
			->setEquipePD($row->equipe_pd)
			->setMercado($row->mercado)
			->setCapitalSocial($row->capital_social)
			->setDataCriacao($row->data_criacao)
			->setDataUltimaModificacao($row->data_ultima_modificacao)
			->setRowinfo($row->rowinfo)
			->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all dadospessoajuridica entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_DadosPessoaJuridica();
			$entry->setId($row->id)
			->setRazaoSocial($row->razao_social)
			->setNomeFantasia($row->nome_fantasia)
			->setSigla($row->sigla)
			->setCodigoAcesso($row->codigo_acesso)
			->setDataConstituicao($row->data_constituicao)
			->setHistorico($row->historico)
			->setInfraestrutura($row->infra_estrutura)
			->setEquipePD($row->equipe_pd)
			->setMercado($row->mercado)
			->setCapitalSocial($row->capital_social)
			->setDataCriacao($row->data_criacao)
			->setDataUltimaModificacao($row->data_ultima_modificacao)
			->setRowinfo($row->rowinfo)
			->setMapper($this);

			$entries[] = $entry;
		}
		return $entries;
	}

}
