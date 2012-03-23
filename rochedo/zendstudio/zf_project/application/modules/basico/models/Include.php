<?php
/**
 * Include model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_IncludeMapper
 * @subpackage Model
 */
class Basico_Model_Include extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * Referencia a classe Basico_Model_Categoria
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
	protected $_constanteTextual;
	/**
	 * @var String
	 */
	protected $_constanteTextualDescricao;
	/**
	 * @var String
	 */
	protected $_uri;
    /**
     * @var Boolean
     */
    protected $_ativo;
		
	/**
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_Include
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria,TIPO_INTEIRO,true);
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
	* @return Basico_Model_Include
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome,TIPO_STRING,true);
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
	* @return Basico_Model_
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual,TIPO_STRING,true);
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
	* @return Basico_Model_Include
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao,TIPO_STRING,true);
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
	* Set uri
	* 
	* @param String $uri 
	* @return Basico_Model_Include
	*/
	public function setUri($uri)
	{
		$this->_uri = Basico_OPController_UtilOPController::retornaValorTipado($uri,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get uri
	* 
	* @return null|String
	*/
	public function getUri()
	{
		return $this->_uri;
	}
     
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_Include
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo,TIPO_BOOLEAN,true);
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
	* Lazy loads Basico_Model_IncludeMapper instance if no mapper registered.
	* 
	* @return Basico_Model_IncludeMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_IncludeMapper);
	}
}
