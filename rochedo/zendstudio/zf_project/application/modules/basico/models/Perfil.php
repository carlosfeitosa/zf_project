<?php
/**
 * Perfil model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PerfilMapper
 * @subpackage Model
 */
class Basico_Model_Perfil extends Abstract_RochedoModeloDados implements Interface_RochedoPersistentModeloGenerico
{
    /**
     * @var Integer
     */
    protected $_idCategoria;
    /**
     * @var Integer
     */
    protected $_idModulo;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_constanteTextual;
	/**
	 * @var String
	 */
	protected $_constanteTextualDescricao;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
     * @var Integer
     */
    protected $_prioridade;
    	
	/**
	* Set idCategoria
	* 
	* @param int $idCategoria 
	* 
	* @return Basico_Model_Perfil
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
     * Get categoria object
     * 
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        return $object;
    }

	/**
	* Set idModulo
	* 
	* @param int $idModulo 
	* 
	* @return Basico_Model_Perfil
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
     * 
     * @return null|Basico_Model_Modulo
     */
    public function getModuloObject()
    {
        $model = new Basico_Model_Modulo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idModulo);
        return $object;
    }

	/**
	* Set nome
	* 
	* @param String $nome 
	* 
	* @return Basico_Model_Perfil
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get nome
	* 
	* @return null|String
	*/
	public function getNome()
	{
		return $this->_nome;
	}

	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual
	* 
	* @return Basico_Model_Perfil
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
	* 
	* @return Basico_Model_Perfil
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
	public function getconstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}

	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* 
	* @return Basico_Model_Perfil
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN);
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
	* Set prioridade
	* 
	* @param int $prioridade
	* 
	* @return Basico_Model_Perfil
	*/
	public function setPrioridade($prioridade)
	{
		$this->_prioridade = Basico_OPController_UtilOPController::retornaValorTipado($prioridade, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get prioridade
	* 
	* @return null|int
	*/
	public function getPrioridade()
	{
		return $this->_prioridade;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_PerfilMapper instance if no mapper registered.
	* 
	* @return Basico_Model_PerfilMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_PerfilMapper);
	}
}