<?php
/**
 * Filter model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FilterMapper
 * @subpackage Model
 */
class Basico_Model_Filter extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * Referência a classe Basico_Model_Categoria
     * @var Int
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
     * @var Boolean
     */
    protected $_ativo;

	/**
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_Filter
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
	* @return Basico_Model_FormularioFilter
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
	* @return Basico_Model_Filter
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
	* @return Basico_Model_Filter
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
	* @return Basico_Model_Filter
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
	* Set attribs
	* 
	* @param String $attribs 
	* @return Basico_Model_FormularioFilter
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
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_Filter
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|int
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FilterMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FilterMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_FilterMapper');
	}
}
