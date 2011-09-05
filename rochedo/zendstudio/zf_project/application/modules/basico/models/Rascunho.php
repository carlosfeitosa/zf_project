<?php
/**
 * Rascunho model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_RascunhoMapper
 * @subpackage Model
 */
class Basico_Model_Rascunho
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_RascunhoMapper
	 */
	protected $_mapper;

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
	 * @var Date
	 */
	protected $_dataHoraExpiracao;
	/**
	 * @var Date
	 */
	protected $_dataHoraCriacao;
	/**
	 * @var Date
	 */
	protected $_dataHoraUltimaAtualizacao;
    /**
     * @var Integer
     */
    protected $_rascunho;

    /**
     * @var Integer
     */
    protected $_categoria;

    /**
     * @var Integer
     */
    protected $_pessoa;

    /**
     * @var Integer
     */
    protected $_perfil;

	/**
	 * Constructor
	 * 
	 * @param  array|null $options 
	 * @return void
	 */
	public function __construct(array $options = null)
	{
		if (is_array($options)) 
		{
			$this->setOptions($options);
		}
	}

	/**
	 * Overloading: allow property access
	 * 
	 * @param  string $name 
	 * @param  mixed $value 
	 * @return void
	 */
	public function __set($name, $value)
	{
		$method = 'set' . $name;
		if ('mapper' == $name || !method_exists($this, $method)) 
		{
			throw new Exception(MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA);
		}
		$this->$method($value);
	}

	/**
	 * Overloading: allow property access
	 * 
	 * @param  string $name 
	 * @return mixed
	 */
	public function __get($name)
	{
		$method = 'get' . $name;
		if ('mapper' == $name || !method_exists($this, $method)) 
		{
			throw new Exception(MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA);
		}
		return $this->$method();
	}

	/**
	 * Set object state
	 * 
	 * @param  array $options 
	 * @return Basico_Model_Rascunho
	 */
	public function setOptions(array $options)
	{
		$methods = get_class_methods($this);
		foreach ($options as $key => $value) 
		{
			$method = 'set' . ucfirst($key);
			if (in_array($method, $methods)) 
			{
			    $this->$method($value);
			}
		}
		return $this;
	}
    
	/**
	* Set request
	* 
	* @param String $request 
	* @return Basico_Model_Request
	*/
	public function setRequest($request)
	{
		$this->_request = Basico_OPController_UtilOPController::retornaValorTipado($request,TIPO_STRING,true);
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
	* @return Basico_Model_Post
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
	* @return Basico_Model_FormAction
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
	* @return Basico_Model_FormName
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
	* Set dataHoraExpiracao
	* 
	* @param String $dataHoraExpiracao 
	* @return Basico_Model_DataHoraExpiracao
	*/
	public function setDataHoraExpiracao($dataHoraExpiracao)
	{
		$this->_dataHoraExpiracao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraExpiracao,TIPO_DATE,true);
		return $this;
	}

	/**
	* Get dataHoraExpiracao
	* 
	* @return null|String
	*/
	public function getDataHoraExpiracao()
	{
		return $this->_dataHoraExpiracao;
	}
     
	/**
	* Set dataHoraCriacao
	* 
	* @param String $dataHoraCriacao 
	* @return Basico_Model_DataHoraCriacao
	*/
	public function setDataHoraCriacao($dataHoraCriacao)
	{
		$this->_dataHoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraCriacao,TIPO_DATE,true);
		return $this;
	}

	/**
	* Get dataHoraCriacao
	* 
	* @return null|String
	*/
	public function getDataHoraCriacao()
	{
		return $this->_dataHoraCriacao;
	}
     
	/**
	* Set dataHoraUltimaAtualizacao
	* 
	* @param String $dataHoraUltimaAtualizacao 
	* @return Basico_Model_DataHoraUltimaAtualizacao
	*/
	public function setDataHoraUltimaAtualizacao($dataHoraUltimaAtualizacao)
	{
		$this->_dataHoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaAtualizacao,TIPO_DATE,true);
		return $this;
	}

	/**
	* Get dataHoraUltimaAtualizacao
	* 
	* @return null|String
	*/
	public function getDataHoraUltimaAtualizacao()
	{
		return $this->_dataHoraUltimaAtualizacao;
	}
     
	/**
	* Set rascunhoPai
	* 
	* @param int $rascunhoPai 
	* @return Basico_Model_Rascunho
	*/
	public function setRascunhoPai($rascunhoPai)
	{
		$this->_rascunhoPai = Basico_OPController_UtilOPController::retornaValorTipado($rascunhoPai,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get rascunhoPai
	* 
	* @return null|int
	*/
	public function getRascunhoPai()
	{
		return $this->_rascunhoPai;
	}
 
    /**
     * Get rascunhoPai object
     * @return null|Rascunho
     */
    public function getRascunhoPaiObject()
    {
        $model = new Basico_Model_Rascunho();
        $object = $model->find($this->_rascunhoPai);
        return $object;
    }
    
	/**
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_Categoria
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get categoria
	* 
	* @return null|int
	*/
	public function getCategoria()
	{
		return $this->_categoria;
	}
 
    /**
     * Get categoria object
     * @return null|Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = $model->find($this->_categoria);
        return $object;
    }
    
	/**
	* Set pessoa
	* 
	* @param int $pessoa 
	* @return Basico_Model_Pessoa
	*/
	public function setPessoa($pessoa)
	{
		$this->_pessoa = Basico_OPController_UtilOPController::retornaValorTipado($pessoa,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get pessoa
	* 
	* @return null|int
	*/
	public function getPessoa()
	{
		return $this->_pessoa;
	}
 
    /**
     * Get pessoa object
     * @return null|Pessoa
     */
    public function getPessoaObject()
    {
        $model = new Basico_Model_Pessoa();
        $object = $model->find($this->_pessoa);
        return $object;
    }
    
	/**
	* Set perfil
	* 
	* @param int $perfil 
	* @return Basico_Model_Perfil
	*/
	public function setPerfil($perfil)
	{
		$this->_perfil = Basico_OPController_UtilOPController::retornaValorTipado($perfil,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get perfil
	* 
	* @return null|int
	*/
	public function getPerfil()
	{
		return $this->_perfil;
	}
 
    /**
     * Get perfil object
     * @return null|Perfil
     */
    public function getPerfilObject()
    {
        $model = new Basico_Model_Perfil();
        $object = $model->find($this->_perfil);
        return $object;
    }

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_Rascunho
	*/
	public function setId($id)
	{
		$this->_id = Basico_OPController_UtilOPController::retornaValorTipado($id,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Retrieve entry id
	* 
	* @return null|int
	*/
	public function getId()
	{
		return $this->_id;
	}

	/**
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_Rascunho
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_RascunhoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_RascunhoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_RascunhoMapper());
		}
		return $this->_mapper;
	}

}
