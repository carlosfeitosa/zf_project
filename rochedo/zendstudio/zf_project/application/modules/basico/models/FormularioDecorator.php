<?php
/**
 * FormularioDecorator model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioDecoratorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioDecorator extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * Referencia a classe Basico_Model_Categoria
     * @var Integer
     */
    protected $_idCategoria;
    /**
	 * Referencia a classe Basico_Model_Componente
     * @var Integer
     */
    protected $_idComponente;
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
	protected $_attribs;
	/**
	 * @var String
	 */
	protected $_alias;
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
	* Set id componente
	* 
	* @param int $idComponente 
	* @return Basico_Model_FormularioDecorator
	*/
	public function setIdComponente($idComponente)
	{
		$this->_idComponente = Basico_OPController_UtilOPController::retornaValorTipado($idComponente, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id componente
	* 
	* @return null|int
	*/
	public function getIdComponente()
	{
		return $this->_idComponente;
	}
 
	/**
     * Get Componente object
     * @return null|Basico_Model_Componente
     */
    public function getComponenteObject()
    {
        $model = new Basico_Model_Componente();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idComponente);
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
	* Set attribs
	* 
	* @param String $attribs 
	* @return Basico_Model_FormularioDecorator
	*/
	public function setAttribs($attribs)
	{
		$this->_attribs = Basico_OPController_UtilOPController::retornaValorTipado($attribs,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get attribs
	* 
	* @return null|String
	*/
	public function getAttribs()
	{
		return $this->_attribs;
	}
	
	/**
	* Set alias
	* 
	* @param String $alias 
	* @return Basico_Model_FormularioDecorator
	*/
	public function setAlias($alias)
	{
		$this->_alias = Basico_OPController_UtilOPController::retornaValorTipado($alias,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get alias
	* 
	* @return null|String
	*/
	public function getAlias()
	{
		return $this->_alias;
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
		return parent::getMapper('Basico_Model_FormularioDecoratorMapper');
	}
}
