<?php
/**
 * Categoria model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CategoriaMapper
 * @subpackage Model
 */
class Basico_Model_Categoria extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * @var Integer
     */
    protected $_idTipoCategoria;   
     /**
     * @var Integer
     */
    protected $_idCategoriaPai;
	/**
	 * @var Integer
	 */
	protected $_nivel;
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
	protected $_codigo;
	/**
	 * @var Boolean
	 */
	protected $_ativo;

	/**
	* Set idTipoCategoria
	* 
	* @param int $idTipoCategoria
	*  
	* @return Basico_Model_TipoCategoria
	*/
	public function setIdTipoCategoria($idTipoCategoria)
	{
		$this->_idTipoCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idTipoCategoria,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idTipoCategoria
	* 
	* @return null|int
	*/
	public function getIdTipoCategoria()
	{
		return $this->_idTipoCategoria;
	}
 
    /**
     * Get tipoCategoria object
     * 
     * @return null|Basico_Model_TipoCategoria
     */
    public function getTipoCategoriaObject()
    {
        $model = new Basico_Model_TipoCategoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idTipoCategoria);
        return $object;
    }
    
    /**
     * Get tipoCategoriaRootCategoriaPai object
     * 
     * @return null|Basico_Model_TipoCategoria
     */
    public function getTipoCategoriaRootCategoriaPaiObject()
    {	
    	$rootCategoriaPaiObject = $this->getRootCategoriaPaiObject();
    	
    	if ($rootCategoriaPaiObject)
    		return $rootCategoriaPaiObject->getTipoCategoriaObject();
    	else
    		return $this->getTipoCategoriaObject();
    }
	
	/**
	* Set idCategoriaPai
	* 
	* @param int $idCategoriaPai 
	* 
	* @return Basico_Model_Categoria
	*/
	public function setIdCategoriaPai($idCategoriaPai)
	{
		$this->_idCategoriaPai = Basico_OPController_UtilOPController::retornaValorTipado($idCategoriaPai,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idCategoriaPai
	* 
	* @return null|int
	*/
	public function getIdCategoriaPai()
	{
		return $this->_idCategoriaPai;
	}
	
	/**
	* Get categoriaPai Object
	* 
	* @return null|Basico_Model_Categoria
	*/
	public function getCategoriaPaiObject()
	{
		$model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoriaPai);
        return $object;
	}
	
	/**
	 * Get RootCategoriaPai Object
	 * 
	 * @return null|Basico_Model_Categoria
	 */
	public function getRootCategoriaPaiObject()
	{
		/* instancia modelo */
		$rootCategoriaPaiObject = new Basico_Model_Categoria();

		/* localiza o id da categoria pai ou utiliza o id da propria categoria */
		if ($this->_idCategoriaPai) {
			$idCategoriaParaLocalizar = $this->_idCategoriaPai;
		} else {
			$idCategoriaParaLocalizar = $this->_id;
		}

		/* localiza a categoria */
		$rootCategoriaPaiObject = Basico_OPController_PersistenceOPController::bdObjectFind($rootCategoriaPaiObject, $idCategoriaParaLocalizar);

		/* loop para chegar na categoria raiz */
		while ($rootCategoriaPaiObject->_idCategoriaPai) {
			$rootCategoriaPaiObject = Basico_OPController_PersistenceOPController::bdObjectFind($rootCategoriaPaiObject, $rootCategoriaPaiObject->_idCategoriaPai);
		}

		// retornando a categoria pai
		return $rootCategoriaPaiObject;
	}
    
	/**
	* Set nivel
	* 
	* @param Integer $nivel 
	* 
	* @return Basico_Model_Nivel
	*/
	public function setNivel($nivel)
	{
		$this->_nivel = (Integer) $nivel;
		return $this;
	}

	/**
	* Get nivel
	* 
	* @return null|Integer
	*/
	public function getNivel()
	{
		return $this->_nivel;
	}
     
	/**
	* Set nome
	* 
	* @param String $nome 
	* 
	* @return Basico_Model_Nome
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
	* 
	* @return Basico_Model_Categoria
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
	*  
	* @return Basico_Model_Categoria
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get descricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}

	/**
	* Set codigo
	* 
	* @param String $codigo 
	* 
	* @return Basico_Model_Categoria
	*/
	public function setCodigo($codigo)
	{
		$this->_codigo = Basico_OPController_UtilOPController::retornaValorTipado($codigo,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get codigo
	* 
	* @return null|String
	*/
	public function getCodigo()
	{
		return $this->_codigo;
	}	
	
	/**
	* Set ativo
	* 
	* @param Boolean $ativo
	*  
	* @return Basico_Model_Categoria
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
	* Lazy loads Basico_Model_CategoriaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_CategoriaMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_CategoriaMapper');
	} 
}