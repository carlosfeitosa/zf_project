<?php
/**
 * Artigo data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 * 
 * @uses       GC_Model_DbTable_Artigo
 * @subpackage Model
 */
class GC_Model_ArtigoMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable 
     * @return GC_Model_ArtigoMapper
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
     * Lazy loads GC_Model_DbTable_Artigo if no instance registered
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('GC_Model_DbTable_Artigo');
        }
        return $this->_dbTable;
    }
    
    /**
     * Save a Artigo entry
     * 
     * @param  GC_Model_Artigo $object
     * @return void
     */
    public function save(GC_Model_Artigo $object)
    {
        $data = array(
				'nome'   => $object->getNome(),
				'descricao'   => $object->getDescricao(),
				'titulo'   => $object->getTitulo(),
				'subtitulo'   => $object->getSubtitulo(),
				'resumo'   => $object->getResumo(),
				'texto_html'   => $object->getTextoHtml(),
				'texto_plaintext'   => $object->getTextoPlaintext(),
				'data_publicacao'   => $object->getDataPublicacao(),
				'publicado_na_frontpage'   => $object->getPublicadoNaFrontpage(),
				'ordenacao_frontpage'   => $object->getOrdenacaoFrontpage(),
				'validade_inicio'   => $object->getValidadeInicio(),
				'validade_termino'   => $object->getValidadeTermino(),
				'data_desativacao'   => $object->getDataDesativacao(),
				'data_auto_reativar'   => $object->getDataAutoReativar(),
				'motivo_desativacao'   => $object->getMotivoDesativacao(),
                'rowinfo'             => $object->getRowinfo(),

        );

        if (null === ($id = $object->getId())) {
            unset($data['id']);
            $object->setId($this->getDbTable()->insert($data));
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }
    
	/**
	* Delete a Artigo entry
	* @param GC_Model_Artigo $object
	* @return void
	*/
	public function delete(GC_Model_Artigo $object)
	{
    	$this->getDbTable()->delete(array('id = ?' => $object->id));
	}

    /**
     * Find a Artigo entry by id
     * 
     * @param  int $id 
     * @param  GC_Model_Artigo $object 
     * @return void
     */
    public function find($id, GC_Model_Artigo $object)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $object->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setTitulo($row->titulo)
				->setSubtitulo($row->subtitulo)
				->setResumo($row->resumo)
				->setTextoHtml($row->texto_html)
				->setTextoPlaintext($row->texto_plaintext)
				->setDataPublicacao($row->data_publicacao)
				->setPublicadoNaFrontpage($row->publicado_na_frontpage)
				->setOrdenacaoFrontpage($row->ordenacao_frontpage)
				->setValidadeInicio($row->validade_inicio)
				->setValidadeTermino($row->validade_termino)
				->setDataDesativacao($row->data_desativacao)
				->setDataAutoReativar($row->data_auto_reativar)
				->setMotivoDesativacao($row->motivo_desativacao)
				->setRowinfo($row->rowinfo);
    }

	/**
	 * Fetch all artigo entries
	 * 
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new GC_Model_Artigo();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setTitulo($row->titulo)
				->setSubtitulo($row->subtitulo)
				->setResumo($row->resumo)
				->setTextoHtml($row->texto_html)
				->setTextoPlaintext($row->texto_plaintext)
				->setDataPublicacao($row->data_publicacao)
				->setPublicadoNaFrontpage($row->publicado_na_frontpage)
				->setOrdenacaoFrontpage($row->ordenacao_frontpage)
				->setValidadeInicio($row->validade_inicio)
				->setValidadeTermino($row->validade_termino)
				->setDataDesativacao($row->data_desativacao)
				->setDataAutoReativar($row->data_auto_reativar)
				->setMotivoDesativacao($row->motivo_desativacao)
				->setRowinfo($row->rowinfo)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
	
	/**
	 * Fetch all artigo entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row) 
		{
			$entry = new GC_Model_Artigo();
			$entry->setId($row->id)

				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setTitulo($row->titulo)
				->setSubtitulo($row->subtitulo)
				->setResumo($row->resumo)
				->setTextoHtml($row->texto_html)
				->setTextoPlaintext($row->texto_plaintext)
				->setDataPublicacao($row->data_publicacao)
				->setPublicadoNaFrontpage($row->publicado_na_frontpage)
				->setOrdenacaoFrontpage($row->ordenacao_frontpage)
				->setValidadeInicio($row->validade_inicio)
				->setValidadeTermino($row->validade_termino)
				->setDataDesativacao($row->data_desativacao)
				->setDataAutoReativar($row->data_auto_reativar)
				->setMotivoDesativacao($row->motivo_desativacao)
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
            ->from(array('table1' => 'artigo'),
                   array('id' => 'table1.id',
                        'nome' => 'table1.nome' ,
                        'descricao' => 'table1.descricao' ,
                        'titulo' => 'table1.titulo' ,
                        'subtitulo' => 'table1.subtitulo' ,
                        'resumo' => 'table1.resumo' ,
                        'textoHtml' => 'table1.texto_html' ,
                        'textoPlaintext' => 'table1.texto_plaintext' ,
                        'dataPublicacao' => 'table1.data_publicacao' ,
                        'publicadoNaFrontpage' => 'table1.publicado_na_frontpage' ,
                        'ordenacaoFrontpage' => 'table1.ordenacao_frontpage' ,
                        'validadeInicio' => 'table1.validade_inicio' ,
                        'validadeTermino' => 'table1.validade_termino' ,
                        'dataDesativacao' => 'table1.data_desativacao' ,
                        'dataAutoReativar' => 'table1.data_auto_reativar' ,
                        'motivoDesativacao' => 'table1.motivo_desativacao' ,
                        'rowinfo'           => 'table1.rowinfo' ))
            ->joinInner($join[0])
            ->where($where)
            ->order($order)
            ->limit($count, $offset);
        $stmt = $this->getDbTable()->getAdapter()->query($select);
        $resultSet = $stmt->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) 
        {
            $entry = new GC_Model_Artigo();
            $entry->setId($row['id'])
                ->setNome($row['nome'])
                ->setDescricao($row['descricao'])
                ->setTitulo($row['titulo'])
                ->setSubtitulo($row['subtitulo'])
                ->setResumo($row['resumo'])
                ->setTextoHtml($row['texto_html'])
                ->setTextoPlaintext($row['texto_plaintext'])
                ->setDataPublicacao($row['data_publicacao'])
                ->setPublicadoNaFrontpage($row['publicado_na_frontpage'])
                ->setOrdenacaoFrontpage($row['ordenacao_frontpage'])
                ->setValidadeInicio($row['validade_inicio'])
                ->setValidadeTermino($row['validade_termino'])
                ->setDataDesativacao($row['data_desativacao'])
                ->setDataAutoReativar($row['data_auto_reativar'])
                ->setMotivoDesativacao($row['motivo_desativacao'])
                ->setRowinfo($row['rowinfo'])
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
            $entry = new GC_Model_Artigo();
            $entry->setId($row->id)
				->setNome($row->nome)
				->setDescricao($row->descricao)
				->setTitulo($row->titulo)
				->setSubtitulo($row->subtitulo)
				->setResumo($row->resumo)
				->setTextoHtml($row->texto_html)
				->setTextoPlaintext($row->texto_plaintext)
				->setDataPublicacao($row->data_publicacao)
				->setPublicadoNaFrontpage($row->publicado_na_frontpage)
				->setOrdenacaoFrontpage($row->ordenacao_frontpage)
				->setValidadeInicio($row->validade_inicio)
				->setValidadeTermino($row->validade_termino)
				->setDataDesativacao($row->data_desativacao)
				->setDataAutoReativar($row->data_auto_reativar)
				->setMotivoDesativacao($row->motivo_desativacao)
				->setRowinfo($row->rowinfo)
                  ->setMapper($this);
            $entries[] = $entry;
        }
        return $entries;
    }    

}
