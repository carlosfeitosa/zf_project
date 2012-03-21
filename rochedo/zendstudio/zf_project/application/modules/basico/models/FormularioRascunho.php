<?php
/**
 * FormularioRascunho model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioRascunhoMapper
 * @subpackage Model
 */
class Basico_Model_FormularioRascunho extends Abstract_RochedoPersistentModeloDados implements Interface_RochedoPersistentModeloGenerico
{
	/**
	 * @var Integer
	 */
	protected $_idRascunhoPai;
	/**
	 * @var Integer
	 */
	protected $_idCategoria;
	/**
	 * @var Integer
	 */
	protected $_idAssocclPerfil;
	/**
	 * @var Integer
	 */
	protected $_idAssocagGrupo;
	/**
	 * @var Integer
	 */
	protected $_idAssocsqAcaoAplicacao;
    /**
     * @var Integer
     */
    protected $_idAssocVisaoOrigem;
    /**
     * @var String
     */
    protected $_request;
    /**
     * @var String
     */
    protected $_post;
    /**
     * @var String
     */
    protected $_formAction;
    /**
     * @var String
     */
    protected $_formName;
    /**
     * @var String
     */
    protected $_actionOrigem;
    /**
     * @var Boolean
     */
    protected $_ativo;
    
	/**
	* Set idRascunhoPai
	* 
	* @param Integer $idRascunhoPai
	*  
	* @return Basico_Model_FormularioRascunho
	*/
	public function setIdRascunhoPai($idRascunhoPai)
	{
		$this->_idRascunhoPai = Basico_OPController_UtilOPController::retornaValorTipado($idRascunhoPai, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idRascunhoPai
	* 
	* @return null|int
	*/
	public function getIdRascunhoPai()
	{
		if ($this->_idRascunhoPai)
			return $this->_idRascunhoPai;
		else
			return null;
	}
	
    /**
     * Get RascunhoPai object
     * 
     * @return null|Rascunho
     */
    public function getRascunhoPaiObject()
    {
        $model = new Basico_Model_FormularioRascunho();
        $object = $model->find($this->_idRascunhoPai);
        return $object;
    }
    
	/**
	* Set idCategoria
	* 
	* @param Integer $idCategoria
	*  
	* @return Basico_Model_FormularioRascunho
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
		if ($this->_idCategoria)
			return $this->_idCategoria;
		else
			return null;
	}
    
    /**
     * Get Categoria object
     * @return null|Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = $model->find($this->_idCategoria);
        return $object;
    }	
	
	/**
	* Set idAssocclPerfil
	* 
	* @param Integer $idAssocclPerfil
	*  
	* @return Basico_Model_PessoaAssocclPerfilPerfil
	*/
	public function setIdAssocclPerfil($idAssocclPerfil)
	{
		$this->_idAssocclPerfil = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclPerfil, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idAssocclPerfil
	* 
	* @return null|int
	*/
	public function getIdAssocclPerfil()
	{
		if ($this->_idAssocclPerfil)
			return $this->_idAssocclPerfil;
		else
			return null;
	}

    /**
     * Get AssocclPerfil object
     * 
     * @return null|PessoaAssocclPerfil
     */
    public function getAssocclPerfilObject()
    {
        $model = new Basico_Model_PessoaAssocclPerfil();
        $object = $model->find($this->_idAssocclPerfil);
        return $object;
    }		
	
	/**
	* Set idAssocagGrupo
	* 
	* @param Integer $idAssocagGrupo
	*  
	* @return Basico_Model_FormularioRascunho
	*/
	public function setIdAssocagGrupo($idAssocagGrupo)
	{
		$this->_idAssocagGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idAssocagGrupo, TIPO_INTEIRO, true);		
		return $this;
	}

	/**
	* Get idAssocagGrupo
	* 
	* @return null|int
	*/
	public function getIdAssocagGrupo()
	{
		if ($this->_idAssocagGrupo)
			return $this->_idAssocagGrupo;
		else
			return null;
	}

    /**
     * Get AssocagGrupo object
     * 
     * @return null|FormularioRascunhoAssocagGrupo
     */
    public function getAssocagGrupoObject()
    {
        $model = new Basico_Model_FormularioRascunhoAssocagGrupo();
        $object = $model->find($this->_idAssocagGrupo);
        return $object;
    }	
	

	/**
	* Set idAssocsqAcaoAplicacao
	* 
	* @param Integer $idAssocsqAcaoAplicacao
	*  
	* @return Basico_Model_SequenciaAssocsqAcaoAplicacao
	*/
	public function setIdAssocsqAcaoAplicacao($idAssocsqAcaoAplicacao)
	{
		$this->idAssocsqAcaoAplicacao = Basico_OPController_UtilOPController::retornaValorTipado($idAssocsqAcaoAplicacao, TIPO_INTEIRO, true);		
		return $this;
	}

	/**
	* Get idAssocsqAcaoAplicacao
	* 
	* @return null|int
	*/
	public function getIdAssocsqAcaoAplicacao()
	{
		if ($this->_idAssocsqAcaoAplicacao)
			return $this->_idAssocsqAcaoAplicacao;
		else
			return null;
	}
	
    /**
     * Get SequenciaAssocsqAcaoAplicacao object
     * 
     * @return null|SequenciaAssocsqAcaoAplicacao
     */
    public function getAssocsqAcaoAplicacaoObject()
    {
        $model = new Basico_Model_SequenciaAssocsqAcaoAplicacao();
        $object = $model->find($this->idAssocsqAcaoAplicacao);
        return $object;
    }

	/**
	* Set idAssocVisaoOrigem
	* 
	* @param Integer $idAssocVisaoOrigem
	*  
	* @return Basico_Model_FormularioRascunho
	*/
	public function setIdAssocVisaoOrigem($idAssocVisaoOrigem)
	{
		$this->_idAssocVisaoOrigem = Basico_OPController_UtilOPController::retornaValorTipado($idAssocVisaoOrigem, TIPO_INTEIRO, true);		
		return $this;
	}

	/**
	* Get idAssocVisaoOrigem
	* 
	* @return null|int
	*/
	public function getIdAssocVisaoOrigem()
	{
		if ($this->_idAssocVisaoOrigem)
			return $this->_idAssocVisaoOrigem; 
		else
			return null;
	}
	
    /**
     * Get AcaoAplicacaoAssocVisao object
     * 
     * @return null|AcaoAplicacaoAssocVisao
     */
    public function getAssocVisaoObject()
    {
        $model = new Basico_Model_AcaoAplicacaoAssocVisao();
        $object = $model->find($this->_idAssocVisaoOrigem);
        return $object;
    }
		
		
	/**
	* Set request
	* 
	* @param String $request 
	* @return Basico_Model_FormularioRascunho
	*/
	public function setRequest($request)
	{
		if (is_object($request)) 
		{
			$this->_request = Basico_OPController_UtilOPController::codificar($request);
		}
		else
			$this->_request = $request;
					
		return $this;
	}

	/**
	* Get request
	* 
	* @return null|String
	*/
	public function getRequest()
	{
		return $this->_request;
	}
     
	/**
	* Set post
	* 
	* @param String $post 
	* 
	* @return Basico_Model_FormularioRascunho
	*/
	public function setPost($post)
	{
		$this->_post = Basico_OPController_UtilOPController::retornaValorTipado($post,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get post
	* 
	* @return null|String
	*/
	public function getPost()
	{
		return $this->_post;
	}
     
	/**
	* Set formAction
	* 
	* @param String $formAction 
	* 
	* @return Basico_Model_FormularioRascunho
	*/
	public function setFormAction($formAction)
	{
		$this->_formAction = Basico_OPController_UtilOPController::retornaValorTipado($formAction,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get formAction
	* 
	* @return null|String
	*/
	public function getFormAction()
	{
		return $this->_formAction;
	}
     
	/**
	* Set formName
	* 
	* @param String $formName 
	* 
	* @return Basico_Model_FormularioRascunho
	*/
	public function setFormName($formName)
	{
		$this->_formName = Basico_OPController_UtilOPController::retornaValorTipado($formName,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get formName
	* 
	* @return null|String
	*/
	public function getFormName()
	{
		return $this->_formName;
	}

	/**
	* Set actionOrigem
	* 
	* @param String $actionOrigem 
	* 
	* @return Basico_Model_FormularioRascunho
	*/
	public function setActionOrigem($actionOrigem)
	{
		$this->_actionOrigem = Basico_OPController_UtilOPController::retornaValorTipado($actionOrigem,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get actionOrigem
	* 
	* @return null|String
	*/
	public function getActionOrigem()
	{
		return $this->_actionOrigem;
	}
	
	/**
	* Set ativo
	* 
	* @param Bool $ativo
	* 
	* @return Basico_Model_FormularioRascunho
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo,TIPO_STRING,true);
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
	* Lazy loads Basico_Model_FormularioRascunhoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioRascunhoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_FormularioRascunhoMapper);
	}	
}