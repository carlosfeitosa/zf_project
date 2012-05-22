<?php
/**
 * DicionarioDadosAssocTable model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DicionarioDadosAssocTableMapper
 * @subpackage Model
 */
class Basico_Model_DicionarioDadosAssocTable extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{	
	/**
	 * Referencia a classe Basico_Model_Categoria
     * @var int
     */
    protected $_idCategoria;
	/**
	 * Referencia a classe Basico_Model_DicionarioDadosSchema
     * @var int
     */
    protected $_idSchema;
    /**
	 * Referencia a classe Basico_Model_DicionarioDadosFk
     * @var int
     */
    protected $_idFkDefault;
	/**
	 * @var String
	 */
	protected $_tablename;
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
	 * @var Int
	 */
	protected $_quantidadeCampos;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	
	/**
	* Set idCategoria
	* 
	* @param int $idCategoria 
	* @return Basico_Model_DicionarioDadosAssocTable
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idCategoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
 
    /**
     * Get Categoria object
     * @return null|Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        return $object;
    }
	
	/**
	* Set idSchema
	* 
	* @param int $idSchema 
	* @return Basico_Model_DicionarioDadosAssocTable
	*/
	public function setIdSchema($idSchema)
	{
		$this->_idSchema = Basico_OPController_UtilOPController::retornaValorTipado($idSchema, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idSchema
	* 
	* @return null|int
	*/
	public function getIdSchema()
	{
		return $this->_idSchema;
	}
 
    /**
     * Get schema object
     * @return null|Schema
     */
    public function getSchemaObject()
    {
        $model = new Basico_Model_DicionarioDadosSchema();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idSchema);
        return $object;
    }
    
	/**
	* Set idFkDefault
	* 
	* @param int $idFkDefault 
	* @return Basico_Model_DicionarioDadosAssocTable
	*/
	public function setIdFkDefault($idFkDefault)
	{
		$this->_idFkDefault = Basico_OPController_UtilOPController::retornaValorTipado($idFkDefault, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idFkDefault
	* 
	* @return null|int
	*/
	public function getIdFkDefault()
	{
		return $this->_idFkDefault;
	}
 
    /**
     * Get FkDefault object
     * @return null|FkDefault
     */
    public function getFkDefaultObject()
    {
        $model = new Basico_Model_DicionarioDadosFkDefault();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idFkDefault);
        return $object;
    }
    
	/**
	* Set tableName
	* 
	* @param String $tableName 
	* @return Basico_Model_DicionarioDadosAssocTable
	*/
	public function setTableName($tableName)
	{
		$this->_tablename = Basico_OPController_UtilOPController::retornaValorTipado($tableName, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get tableName
	* 
	* @return null|String
	*/
	public function getTableName()
	{
		return $this->_tablename;
	}
     
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_DicionarioDadosAssocTable
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
	* @return Basico_Model_DicionarioDadosAssocTable
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
	* @return Basico_Model_DicionarioDadosAssocTable
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
	* Set quantidadeCampos
	* 
	* @param int $quantidadeCampos 
	* @return Basico_Model_DicionarioDadosAssocTable
	*/
	public function setQuantidadeCampos($quantidadeCampos)
	{
		$this->_quantidadeCampos = Basico_OPController_UtilOPController::retornaValorTipado($quantidadeCampos, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get quantidadeCampos
	* 
	* @return null|int
	*/
	public function getQuantidadeCampos()
	{
		return $this->_quantidadeCampos;
	}
	
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_DicionarioDadosAssocTable
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
	* Lazy loads Basico_Model_DicionarioDadosAssocTableMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DicionarioDadosAssocTableMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_DicionarioDadosAssocTableMapper');
	}
}
