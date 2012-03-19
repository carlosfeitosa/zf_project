<?php
/**
 * FormularioDecorator model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioDecoratorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioDecorator extends Abstract_RochedoPersistentModeloDados implements Interface_RochedoPersistentModeloGenerico
{
	/**
	 * Referencia a classe Basico_Model_Categoria
     * @var Integer
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
	protected $_decorator;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	
	/**
	* Set id categoria
	* 
	* @param int $idCategoria 
	* @return Basico_Model_FormularioDecorator
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id categoria
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
	* @return Basico_Model_FormularioDecorator
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
	* Set constante textual
	* 
	* @param String $constanteTextual
	* @return Basico_Model_FormularioDecorator
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constante textual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constanteTextual;
	}
     
	/**
	* Set constante textual descricao
	* 
	* @param String $constanteTextualDescricao 
	* @return Basico_Model_FormularioDecorator
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constante textual descricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}

	/**
	* Set decorator
	* 
	* @param String $decorator 
	* @return Basico_Model_FormularioDecorator
	*/
	public function setDecorator($decorator)
	{
		$this->_decorator = Basico_OPController_UtilOPController::retornaValorTipado($decorator,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get decorator
	* 
	* @return null|String
	*/
	public function getDecorator()
	{
		return $this->_decorator;
	}

	/**
	* Set ativo
	* 
	* @param Boolean $ativo
	* @return Basico_Model_FormularioDecorator
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|String
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormularioDecoratorMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioDecoratorMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_FormularioDecoratorMapper);
	}
}
