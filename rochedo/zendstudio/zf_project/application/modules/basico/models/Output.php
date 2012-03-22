<?php
/**
 * Output model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_OutputMapper
 * @subpackage Model
 */
class Basico_Model_Output extends Abstract_RochedoModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	* @var int
	*/
	protected $_idCategoria;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_constante_textual;
	/**
	 * @var String
	 */
	protected $_constante_textual_descricao;
	/**
	 * @var String
	 */
	protected $_contexto;
	/**
	 * @var Boolean
	 */
	protected $_ativo;

	/**
	* Set entry idCategoria
	* 
	* @param  int $idCategoria
	* @return Basico_Model_Output
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idCategoria
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
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_Nome
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
	* @return Basico_Model_Output
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constante_textual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constante_textual;
	}

	/**
	* Set constanteTextualDescricao
	* 
	* @param String $constanteTextualDescricao 
	* @return Basico_Model_Output
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constante_textual_descricao = Basico_OPController_UtilOPController::retornaValorTipado($descricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualDescricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constante_textual_descricao;
	}

	/**
	* Set contexto
	* 
	* @param String $contexto
	* @return Basico_Model_Output
	*/
	public function setContexto($contexto)
	{
		$this->_contexto = Basico_OPController_UtilOPController::retornaValorTipado($contexto, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get contexto
	* 
	* @return null|String
	*/
	public function getContexto()
	{
		return $this->_contexto;
	}

	/**
	* Set ativo
	* 
	* @param Boolean $ativo
	* @return Basico_Model_Output
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
	* Lazy loads Basico_Model_OutputMapper instance if no mapper registered.
	* 
	* @return Basico_Model_OutputMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_OutputMapper);
	}
}