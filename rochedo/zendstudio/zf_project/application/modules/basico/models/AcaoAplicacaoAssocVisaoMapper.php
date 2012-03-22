<?php
/**
 * AcaoAplicacaoAssocVisao data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       Basico_Model_DbTable_AcaoAplicacaoAssocVisao
 * @subpackage Model
 */
class Basico_Model_AcaoAplicacaoAssocVisaoMapper extends Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperPesquisa, Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable_AcaoAplicacaoAssocVisao if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        return parent::getDbTable('Basico_Model_DbTable_AcaoAplicacaoAssocVisao');
    }
    
	/**
     * Find a AcaoAplicacaoAssocVisao entry by id
     * 
     * @param  int $id 
     * @param  Basico_Model_AcaoAplicacaoAssocVisao $object 
     * @return void
     */
    public function find($id, Basico_Model_AcaoAplicacaoAssocVisao $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setIdCategoria($row->id_categoria)
				->setIdAcaoAplicacao($row->id_acao_aplicacao)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setConstanteTextualTitulo($row->constante_textual_titulo)
				->setConstanteTextualSubTitulo($row->constante_textual_subtitulo)
				->setConstanteTextualMensagem($row->constante_textual_mensagem)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all AcaoAplicacaoAssocVisao entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AcaoAplicacaoAssocVisao();
			$entry->setId($row->id)

				->setIdCategoria($row->id_categoria)
				->setIdAcaoAplicacao($row->id_acao_aplicacao)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setConstanteTextualTitulo($row->constante_textual_titulo)
				->setConstanteTextualSubTitulo($row->constante_textual_subtitulo)
				->setConstanteTextualMensagem($row->constante_textual_mensagem)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all AcaoAplicacaoAssocVisao entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new Basico_Model_AcaoAplicacaoAssocVisao();
			$entry->setId($row->id)

				->setIdCategoria($row->id_categoria)
				->setIdAcaoAplicacao($row->id_acao_aplicacao)
				->setConstanteTextual($row->constante_textual)
				->setConstanteTextualDescricao($row->constante_textual_descricao)
				->setConstanteTextualTitulo($row->constante_textual_titulo)
				->setConstanteTextualSubTitulo($row->constante_textual_subtitulo)
				->setConstanteTextualMensagem($row->constante_textual_mensagem)
				->setDatahoraCriacao($row->datahora_criacao)
				->setDatahoraUltimaAtualizacao($row->datahora_ultima_atualizacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
    
    /**
     * Save a AcaoAplicacaoAssocVisao entry
     * 
     * @param  Basico_Model_AcaoAplicacaoAssocVisao $object
     * @return void
     */
    public function save(Basico_Model_AcaoAplicacaoAssocVisao $object)
    {
        $data = array(
        		'id_categoria'                => $object->getIdCategoria(),
				'id_acao_aplicacao'           => $object->getIdAcaoAplicacao(),
				'constante_textual'           => $object->getConstanteTextual(),
        		'constante_textual_descricao' => $object->getConstanteTextualDescricao(),
        		'constante_textual_titulo'    => $object->getConstanteTextualTitulo(),
        		'constante_textual_subtitulo' => $object->getConstanteTextualSubTitulo(),
        		'constante_textual_mensagem'  => $object->getConstanteTextualMensagem(),
				'datahora_criacao'            => $object->getDatahoraCriacao(),
				'datahora_ultima_atualizacao' => $object->getDatahoraUltimaAtualizacao(),
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
	* Delete a AcaoAplicacaoAssocVisao entry
	* @param Basico_Model_AcaoAplicacaoAssocVisao $object
	* @return void
	*/
	public function delete(Basico_Model_AcaoAplicacaoAssocVisao $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}
}
