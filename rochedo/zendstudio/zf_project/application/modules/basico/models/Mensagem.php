<?php
/**
 * Mensagem model
 *
 * Utiliza o Mapper para persistir os dados.
 * 
 * @uses Basico_Model_MensagemMapper
 * @subpackage Model
 */
class Basico_Model_Mensagem
{
	/**
	 * @var Basico_Model_MensagemMapper
	 */
	protected $_mapper;
	
	/**
	* @var int
	*/
	protected $_id;
	/**
	* @var int
	*/
	protected $_idCategoria;
	/**
	* @var int
	*/
	protected $_idGenericoProprietario;
	/**
	 * @var String
	 */
	protected $_remetente;
	/**
	 * @var String
	 */
	protected $_destinatarios;
	/**
	 * @var String
	 */
	protected $_assunto;
	/**
	 * @var String
	 */
	protected $_mensagem;
	/**
	 * @var Date
	 */
	protected $_datahoraEnvio;
	/**
	 * @var Date
	 */
	protected $_datahoraCriacao;
	/**
	 * @var Date
	 */
	protected $_datahoraUltimaAtualizacao;
	/**
	 * @var String
	 */
	protected $_rowinfo;
	
	/**
	 * Construtor
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
	 * @return Basico_Model_Mensagem
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
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_Mensagem
	*/
	public function setId($id)
	{
		$this->_id = Basico_OPController_UtilOPController::retornaValorTipado($id, TIPO_INTEIRO, true);
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
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_Mensagem
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
	* Set entry idGenericoProprietario
	* 
	* @param  int $idGenericoProprietario
	* @return Basico_Model_Mensagem
	*/
	public function setIdGenericoProprietario($idGenericoProprietario)
	{
		$this->_idGenericoProprietario = Basico_OPController_UtilOPController::retornaValorTipado($idGenericoProprietario, TIPO_INTEIRO, true);
		return $this;
	}
	
    /**
	* Retrieve entry idGenericoProprietario
	* 
	* @return null|int
	*/
	public function getIdGenericoProprietario()
	{
		return $this->_idGenericoProprietario;
	}
 
	/**
	* Set remetente
	* 
	* @param String $remetente 
	* @return Basico_Model_Mensagem
	*/
	public function setRemetente($remetente)
	{
		$this->_remetente = Basico_OPController_UtilOPController::retornaValorTipado($remetente, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get remetente
	* 
	* @return null|String
	*/
	public function getRemetente()
	{
		return $this->_remetente;
	}

	/**
	* Set destinatarios
	* 
	* @param String $destinatarios 
	* @return Basico_Model_Mensagem
	*/
	public function setDestinatarios($destinatarios)
	{
		if (is_array($destinatarios))
			$this->_destinatarios = implode(';', $destinatarios);
		else
			$this->_destinatarios = Basico_OPController_UtilOPController::retornaValorTipado($destinatarios, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get destinatarios string
	* 
	* @return null|String
	*/
	public function getDestinatariosString()
	{
		return $this->_destinatarios;
	}
	
    /**
	* Get destinatario array
	* 
	* @return null|String
	*/
	public function getDestinatariosArray()
	{
		$destinatarios = explode(';', $this->_destinatarios);
		return $destinatarios;
	}

	/**
	* Set assunto
	* 
	* @param String $assunto 
	* @return Basico_Model_Mensagem
	*/
	public function setAssunto($assunto)
	{
		$this->_assunto = Basico_OPController_UtilOPController::retornaValorTipado($assunto, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get assunto
	* 
	* @return null|String
	*/
	public function getAssunto()
	{
		return $this->_assunto;
	}

	/**
	* Set mensagem
	* 
	* @param String $mensagem 
	* @return Basico_Model_Mensagem
	*/
	public function setMensagem($mensagem)
	{
		$this->_mensagem = Basico_OPController_UtilOPController::retornaValorTipado($mensagem, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get mensagem
	* 
	* @return null|String
	*/
	public function getMensagem()
	{
		return $this->_mensagem;
	}

    /**
	* Set datahoraEnvio
	* 
	* @param String $datahoraEnvio 
	* @return Basico_Model_Mensagem
	*/
	public function setDatahoraEnvio($datahoraEnvio)
	{
		$this->_datahoraEnvio = Basico_OPController_UtilOPController::retornaValorTipado($datahoraEnvio, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraEnvio
	* 
	* @return null|String
	*/
	public function getDatahoraEnvio()
	{
		return $this->_datahoraEnvio;
	}

	/**
	* Set datahoraCriacao
	* 
	* @param String $datahoraCriacao 
	* @return Basico_Model_Mensagem
	*/
	public function setDatahoraCriacao($datahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraCriacao
	* 
	* @return null|String
	*/
	public function getDatahoraCriacao()
	{
		return $this->_datahoraCriacao;
	}

	/**
	* Set datahoraUltimaAtualizacao
	* 
	* @param String $datahoraUltimaAtualizacao 
	* @return Basico_Model_Mensagem
	*/
	public function setDatahoraUltimaAtualizacao($datahoraUltimaAtualizacao)
	{
		$this->_datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaAtualizacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraUltimaAtualizacao
	* 
	* @return null|String
	*/
	public function getDatahoraUltimaAtualizacao()
	{
		return $this->_datahoraUltimaAtualizacao;
	}

	/**
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_Mensagem
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING, true);
		return $this;
	}
	
    /**
	* Retrieve entry rowInfo
	* 
	* @return null|string
	*/
	public function getRowinfo()
	{
		return $this->_rowinfo;
	}

	/**
	 * Retorna se a mensagem foi enviada ou nao
	 * 
	 * @return Boolean
	 */
	public function getEnviada()
	{
		// retornando se a mensagem possui data-hora de envio e possui 2 ou mais pessoas associadas em PessoasPerfisMensagensCategorias
		return (($this->_datahoraEnvio) and (count($this->getPessoasPerfisMensagensCategoriasObjects())) >= 2);
	}

	/**
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_Mensagem
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_MensagemMapper instance if no mapper registered.
	* 
	* @return Basico_Model_MensagemMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_MensagemMapper());
		}
		return $this->_mapper;
	}
	
	/**
	 * Retorna um array contendo os objetos PessoasPerfisMensagensCategorias relacionado a mensagem
	 * 
	 * @return Array|null
	 */
	public function getPessoasPerfisMensagensCategoriasObjects()
	{
		// recuperando modelo
		$model = new Basico_Model_PessoasPerfisMensagensCategorias();
		// recuperando objetos
		$objetosPessoasPerfisMensagensCategorias = Basico_OPController_PersistenceOPController::bdObjectFetchList($model, "id_mensagem = {$this->_id}");
		// retornando objetos
		return $objetosPessoasPerfisMensagensCategorias;
	}
}
