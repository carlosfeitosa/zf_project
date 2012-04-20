<?php
/**
 * DicionarioDadosSchema model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DicionarioDadosSchemaMapper
 * @subpackage Model
 */
class Basico_Model_DicionarioDadosSchema extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{	
	/**
	 * Referencia a classe Basico_Model_Modulo
     * @var int
     */
    protected $_idModulo;
	/**
	 * @var String
	 */
	protected $_schemaname;
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
	protected $_quantidadeTabelas;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	
	/**
	* Set idModulo
	* 
	* @param int $idModulo 
	* @return Basico_Model_DicionarioDadosSchema
	*/
	public function setIdModulo($idModulo)
	{
		$this->_idModulo = Basico_OPController_UtilOPController::retornaValorTipado($idModulo, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idModulo
	* 
	* @return null|int
	*/
	public function getIdModulo()
	{
		return $this->_idModulo;
	}
 
    /**
     * Get modulo object
     * @return null|Modulo
     */
    public function getModuloObject()
    {
        $model = new Basico_Model_Modulo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idModulo);
        return $object;
    }
    
	/**
	* Set schemaname
	* 
	* @param String $schemaname 
	* @return Basico_Model_DicionarioDadosSchema
	*/
	public function setSchemaname($schemaname)
	{
		$this->_schemaname = Basico_OPController_UtilOPController::retornaValorTipado($schemaname, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get schemaname
	* 
	* @return null|String
	*/
	public function getSchemaname()
	{
		return $this->_schemaname;
	}
     
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_DicionarioDadosSchema
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
	* @return Basico_Model_DicionarioDadosSchema
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
	* @return Basico_Model_DicionarioDadosSchema
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
	* Set quantidadeTabelas
	* 
	* @param Boolean $quantidadeTabelas 
	* @return Basico_Model_DicionarioDadosSchema
	*/
	public function setQuantidadeTabelas($quantidadeTabelas)
	{
		$this->_quantidadeTabelas = Basico_OPController_UtilOPController::retornaValorTipado($quantidadeTabelas, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get quantidadeTabelas
	* 
	* @return null|Boolean
	*/
	public function getQuantidadeTabelas()
	{
		return $this->_quantidadeTabelas;
	}
	
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_DicionarioDadosSchema
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
	* Lazy loads Basico_Model_DicionarioDadosSchemaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DicionarioDadosSchemaMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_DicionarioDadosSchemaMapper');
	}
}
