<?php
/**
 * DicionarioDadosAssocField model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DicionarioDadosAssocFieldMapper
 * @subpackage Model
 */
class Basico_Model_DicionarioDadosAssocField extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{	
	/**
	 * Referencia a classe Basico_Model_DicionarioDadosAssocTable
     * @var int
     */
    protected $_idAssocTable;
	/**
	 * @var String
	 */
	protected $_fieldname;
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
	 * @var String
	 */
	protected $_tipo;
	/**
	 * @var Int
	 */
	protected $_tamanho;
	/**
	 * @var String
	 */
	protected $_precisao;
	/**
	 * @var String
	 */
	protected $_fkTabela;
	/**
	 * @var String
	 */
	protected $_fkCampo;
	/**
	 * @var Boolean
	 */
	protected $_indice;
	/**
	 * @var String
	 */
	protected $_checkConstraint;
	/**
	 * @var Boolean
	 */
	protected $_unique;
	/**
	 * @var Boolean
	 */
	protected $_nullable;
	/**
	 * @var String
	 */
	protected $_valorDefault;
	/**
	 * @var Boolean
	 */
	protected $_readonly;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	
	/**
	* Set idAssocTable
	* 
	* @param int $idAssocTable 
	* @return Basico_Model_DicionarioDadosAssocField
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
	* Set fieldName
	* 
	* @param String $fieldName 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setFieldName($fieldName)
	{
		$this->_fieldname = Basico_OPController_UtilOPController::retornaValorTipado($fieldName, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get fieldName
	* 
	* @return null|String
	*/
	public function getFieldName()
	{
		return $this->_fieldname;
	}
     
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_DicionarioDadosAssocField
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
	* @return Basico_Model_DicionarioDadosAssocField
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
	* @return Basico_Model_DicionarioDadosAssocField
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
	* Set tipo
	* 
	* @param String $tipo 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setTipo($tipo)
	{
		$this->_tipo = Basico_OPController_UtilOPController::retornaValorTipado($tipo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get tipo
	* 
	* @return null|String
	*/
	public function getTipo()
	{
		return $this->_tipo;
	}
	
	/**
	* Set tamanho
	* 
	* @param int $tamanho 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setTamanho($tamanho)
	{
		$this->_tamanho = Basico_OPController_UtilOPController::retornaValorTipado($tamanho, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get tamanho
	* 
	* @return null|int
	*/
	public function getTamanho()
	{
		return $this->_tamanho;
	}
	
	/**
	* Set precisao
	* 
	* @param String $precisao 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setPrecisao($precisao)
	{
		$this->_precisao = Basico_OPController_UtilOPController::retornaValorTipado($precisao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get precisao
	* 
	* @return null|String
	*/
	public function getPrecisao()
	{
		return $this->_precisao;
	}
	
	/**
	* Set fkTabela
	* 
	* @param String $fkTabela 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setFkTabela($fkTabela)
	{
		$this->_fkTabela = Basico_OPController_UtilOPController::retornaValorTipado($fkTabela, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get fkTabela
	* 
	* @return null|String
	*/
	public function getFkTabela()
	{
		return $this->_fkTabela;
	}
	
	/**
	* Set fkCampo
	* 
	* @param String $fkCampo 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setFkCampo($fkCampo)
	{
		$this->_fkCampo = Basico_OPController_UtilOPController::retornaValorTipado($fkCampo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get fkCampo
	* 
	* @return null|String
	*/
	public function getFkCampo()
	{
		return $this->_fkCampo;
	}
	
	/**
	* Set indice
	* 
	* @param Boolean $indice 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setIndice($indice)
	{
		$this->_indice = Basico_OPController_UtilOPController::retornaValorTipado($indice, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get indice
	* 
	* @return null|Boolean
	*/
	public function getIndice()
	{
		return $this->_indice;
	}
	
	/**
	* Set checkConstraint
	* 
	* @param String $checkConstraint 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setCheckConstraint($checkConstraint)
	{
		$this->_checkConstraint = Basico_OPController_UtilOPController::retornaValorTipado($checkConstraint, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get checkConstraint
	* 
	* @return null|String
	*/
	public function getCheckConstraint()
	{
		return $this->_checkConstraint;
	}
	
	/**
	* Set unique
	* 
	* @param Boolean $unique 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setUnique($unique)
	{
		$this->_unique = Basico_OPController_UtilOPController::retornaValorTipado($unique, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get unique
	* 
	* @return null|Boolean
	*/
	public function getUnique()
	{
		return $this->_unique;
	}
	
	/**
	* Set nullable
	* 
	* @param Boolean $nullable 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setNullable($nullable)
	{
		$this->_nullable = Basico_OPController_UtilOPController::retornaValorTipado($nullable, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get nullable
	* 
	* @return null|Boolean
	*/
	public function getNullable()
	{
		return $this->_nullable;
	}
	
	/**
	* Set valorDefault
	* 
	* @param String $valorDefault 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setValorDefault($valorDefault)
	{
		$this->_valorDefault = Basico_OPController_UtilOPController::retornaValorTipado($valorDefault, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get valorDefault
	* 
	* @return null|String
	*/
	public function getValorDefault()
	{
		return $this->_valorDefault;
	}
	
	/**
	* Set readonly
	* 
	* @param Boolean $readonly 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setReadonly($readonly)
	{
		$this->_readonly = Basico_OPController_UtilOPController::retornaValorTipado($readonly, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get readonly
	* 
	* @return null|Boolean
	*/
	public function getReadonly()
	{
		return $this->_readonly;
	}
	
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_DicionarioDadosAssocField
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
	* Lazy loads Basico_Model_DicionarioDadosAssocFieldMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DicionarioDadosAssocFieldMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_DicionarioDadosAssocFieldMapper');
	}
}
