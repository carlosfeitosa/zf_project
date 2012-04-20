<?php
/**
 * DicionarioDadosAssocclFk model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DicionarioDadosAssocclFkMapper
 * @subpackage Model
 */
class Basico_Model_DicionarioDadosAssocclFk extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{	
	/**
	 * Referencia a classe Basico_Model_DicionarioDadosAssocTable
     * @var int
     */
    protected $_idAssocTable;
    /**
	 * Referencia a classe Basico_Model_DicionarioDadosAssocField
     * @var int
     */
    protected $_idAssocField;
    /**
	 * Referencia a classe Basico_Model_DicionarioDadosAssocField
     * @var int
     */
    protected $_idAssocFieldFk;
	/**
	 * @var String
	 */
	protected $_metodoRecuperacao;
	/**
	 * @var String
	 */
	protected $_constanteTextual;
	/**
	 * @var String
	 */
	protected $_constanteTextualDescricao;
	/**
	 * @var String
	 */
	protected $_constanteTextualAlias;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	
	/**
	* Set idAssocTable
	* 
	* @param int $idAssocTable 
	* @return Basico_Model_DicionarioDadosAssocclFk
	*/
	public function setIdAssocTable($idAssocTable)
	{
		$this->_idAssocTable = Basico_OPController_UtilOPController::retornaValorTipado($idAssocTable, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idAssocTable
	* 
	* @return null|int
	*/
	public function getIdAssocTable()
	{
		return $this->_idAssocTable;
	}
 
    /**
     * Get AssocTable object
     * @return null|AssocTable
     */
    public function getAssocTableObject()
    {
        $model = new Basico_Model_DicionarioDadosAssocTable();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idAssocTable);
        return $object;
    }
    
	/**
	* Set idAssocField
	* 
	* @param int $idAssocField 
	* @return Basico_Model_DicionarioDadosAssocclFk
	*/
	public function setIdAssocField($idAssocField)
	{
		$this->_idAssocField = Basico_OPController_UtilOPController::retornaValorTipado($idAssocField, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idAssocField
	* 
	* @return null|int
	*/
	public function getIdAssocField()
	{
		return $this->_idAssocField;
	}
 
    /**
     * Get AssocField object
     * @return null|AssocField
     */
    public function getAssocFieldObject()
    {
        $model = new Basico_Model_DicionarioDadosAssocField();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idAssocField);
        return $object;
    }
    
	/**
	* Set idAssocFieldFk
	* 
	* @param int $idAssocFieldFk 
	* @return Basico_Model_DicionarioDadosAssocclFk
	*/
	public function setIdAssocFieldFk($idAssocFieldFk)
	{
		$this->_idAssocFieldFk = Basico_OPController_UtilOPController::retornaValorTipado($idAssocFieldFk, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idAssocFieldFk
	* 
	* @return null|int
	*/
	public function getIdAssocFieldFk()
	{
		return $this->_idAssocFieldFk;
	}
 
    /**
     * Get AssocFieldFk object
     * @return null|AssocFieldFk
     */
    public function getAssocFieldFkObject()
    {
        $model = new Basico_Model_DicionarioDadosAssocField();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idAssocFieldFk);
        return $object;
    }
    
	/**
	* Set metodoRecuperacao
	* 
	* @param String $metodoRecuperacao 
	* @return Basico_Model_DicionarioDadosAssocclFk
	*/
	public function setMetodoRecuperacao($metodoRecuperacao)
	{
		$this->_metodoRecuperacao = Basico_OPController_UtilOPController::retornaValorTipado($metodoRecuperacao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get metodoRecuperacao
	* 
	* @return null|String
	*/
	public function getMetodoRecuperacao()
	{
		return $this->_metodoRecuperacao;
	}
     
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_DicionarioDadosAssocclFk
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constanteTextual;
	}
	
	/**
	* Set constanteTextualDescricao
	* 
	* @param String $constanteTextualDescricao 
	* @return Basico_Model_DicionarioDadosAssocclFk
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualDescricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}
	
	/**
	* Set constanteTextualAlias
	* 
	* @param String $constanteTextualAlias 
	* @return Basico_Model_DicionarioDadosAssocclFk
	*/
	public function setConstanteTextualAlias($constanteTextualAlias)
	{
		$this->_constanteTextualAlias = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualAlias, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualAlias
	* 
	* @return null|String
	*/
	public function getConstanteTextualAlias()
	{
		return $this->_constanteTextualAlias;
	}
	
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_DicionarioDadosAssocclFk
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|Boolean
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}
    
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_DicionarioDadosAssocclFkMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DicionarioDadosAssocclFkMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_DicionarioDadosAssocclFkMapper');
	}
}
