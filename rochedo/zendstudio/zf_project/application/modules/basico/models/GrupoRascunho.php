<?php
/**
 * GrupoRascunho model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_GrupoRascunhoMapper
 * @subpackage Model
 */
class Basico_Model_GrupoRascunho
{
	/**
	* @var int
	*/
	protected $_id;
	/**
	 * @var Basico_Model_GrupoRascunhoMapper
	 */
	protected $_mapper;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_forms;
	/**
     * @var Integer
     */
    protected $_pessoa;
	/**
     * @var Integer
     */
    protected $_perfil;
	/**
     * @var Integer
     */
    protected $_sequenciaFormulario;
	/**
	 * @var Date
	 */
	protected $_dataHoraCriacao;
	/**
	 * @var Date
	 */
	protected $_dataHoraUltimaAtualizacao;
    /**
	 * @var String
	 */
	protected $_rowinfo;

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
	 * @return Basico_Model_GrupoRascunho
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
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_nome
	*/
	public function setNome($nome)
	{
		if (is_object($nome)) {
			$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome,TIPO_STRING,true);
		}
		else
			$this->_nome = $nome;
		
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
	* Set forms
	* 
	* @param String $forms 
	* @return Basico_Model_forms
	*/
	public function setForms($forms)
	{
		$this->_forms = Basico_OPController_UtilOPController::retornaValorTipado($forms,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get forms
	* 
	* @return null|String
	*/
	public function getForms()
	{
		return $this->_forms;
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
	* Set sequenciaFormulario
	* 
	* @param int $sequenciaFormulario 
	* @return Basico_Model_GrupoRascunho
	*/
	public function setSequenciaFormulario($sequenciaFormulario)
	{
		$this->_sequenciaFormulario = Basico_OPController_UtilOPController::retornaValorTipado($sequenciaFormulario,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get sequenciaFormulario
	* 
	* @return null|int
	*/
	public function getSequenciaFormulario()
	{
		return $this->_sequenciaFormulario;
	}
 
    /**
     * Get sequenciaFormulario object
     * @return null|GrupoRascunho
     */
    public function getSequenciaFormularioObject()
    {
        $model = new Basico_Model_SequenciaFormulario();
        $object = $model->find($this->_sequenciaFormulario);
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
	* Set entry rowinfo
	* 
	* @param  string $rowinfo 
	* @return Basico_Model_GrupoRascunho
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo,TIPO_STRING,true);
		return $this;
	}

	/**
	* Retrieve entry rowinfo
	* 
	* @return null|string
	*/
	public function getRowinfo()
	{
		return $this->_rowinfo;
	}

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_GrupoRascunho
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
	* @return Basico_Model_GrupoRascunho
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_GrupoRascunhoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_GrupoRascunhoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_GrupoRascunhoMapper());
		}
		return $this->_mapper;
	}

}
