<?php
/**
 * Login model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_LoginMapper
 * @subpackage Model
 */
class Basico_Model_Login
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_LoginMapper
	 */
	protected $_mapper;
	
	/**
	* @var int
	*/
	protected $_pessoa;

	/**
	 * @var String
	 */
	protected $_login;
	/**
	 * @var String
	 */
	protected $_senha;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var Integer
	 */
	protected $_tentativasFalhas;
	/**
	 * @var Boolean
	 */
	protected $_travado;
	/**
	 * @var Boolean
	 */
	protected $_resetado;
	/**
	 * @var Date
	 */
	protected $_dataHoraUltimoLogon;
	/**
	 * @var String
	 */
	protected $_observacoes;
	/**
	 * @var Boolean
	 */
	protected $_podeExpirar;
	/**
	 * @var Date
	 */
	protected $_dataHoraProximaExpiracao;
	/**
	 * @var Date
	 */
	protected $_dataHoraUltimaExpiracao;
	/**
	 * @var Date
	 */
	protected $_dataHoraExpiracaoSenha;
	/**
	 * 
	 * @var Date
	 */
	protected $_dataHoraUltimaTentativaFalha;
	/**
	 * 
	 * @var Date
	 */
	protected $_dataHoraUltimoReset;
	/**
	 * 
	 * @var Date
	 */
	protected $_dataHoraUltimaTrocaSenha;
	/**
	 * 
	 * @var Date
	 */
	protected $_dataHoraCadastro;
	/**
	 * 
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
	 * @return Basico_Model_Login
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
	 * @return Basico_Model_Login
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
	* Set pessoa
	* 
	* @param int $pessoa 
	* @return Basico_Model_Pessoa
	*/
	public function setPessoa($pessoa)
	{
		$this->_pessoa = Basico_OPController_UtilOPController::retornaValorTipado($pessoa, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idPessoa
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
	* Set login
	* 
	* @param String $login 
	* @return Basico_Model_Login
	*/
	public function setLogin($login)
	{
		$this->_login = Basico_OPController_UtilOPController::retornaValorTipado($login, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get login
	* 
	* @return null|String
	*/
	public function getLogin()
	{
		return $this->_login;
	}
     
	/**
	* Set senha
	* 
	* @param String $senha 
	* @return Basico_Model_Senha
	*/
	public function setSenha($senha)
	{
		$this->_senha = Basico_OPController_UtilOPController::retornaValorTipado($senha, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get senha
	* 
	* @return null|String
	*/
	public function getSenha()
	{
		return $this->_senha;
	}
     
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_Ativo
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, false);
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
	* Set tentativasFalhas
	* 
	* @param Integer $tentativasFalhas 
	* @return Basico_Model_TentativasFalhas
	*/
	public function setTentativasFalhas($tentativasFalhas)
	{
		$this->_tentativasFalhas = Basico_OPController_UtilOPController::retornaValorTipado($tentativasFalhas, TIPO_INTEIRO, false);
		return $this;
	}

	/**
	* Get tentativasFalhas
	* 
	* @return null|Integer
	*/
	public function getTentativasFalhas()
	{
		return $this->_tentativasFalhas;
	}
     
	/**
	* Set travado
	* 
	* @param Boolean $travado 
	* @return Basico_Model_Travado
	*/
	public function setTravado($travado)
	{
		$this->_travado = Basico_OPController_UtilOPController::retornaValorTipado($travado, TIPO_BOOLEAN, false);
		return $this;
	}

	/**
	* Get travado
	* 
	* @return null|Boolean
	*/
	public function getTravado()
	{
		return $this->_travado;
	}
     
	/**
	* Set resetado
	* 
	* @param Boolean $resetado 
	* @return Basico_Model_Resetado
	*/
	public function setResetado($resetado)
	{
		$this->_resetado = Basico_OPController_UtilOPController::retornaValorTipado($resetado, TIPO_BOOLEAN, false);
		return $this;
	}

	/**
	* Get resetado
	* 
	* @return null|Boolean
	*/
	public function getResetado()
	{
		return $this->_resetado;
	}
     
	/**
	* Set dataHoraUltimoLogon
	* 
	* @param String $dataHoraUltimoLogon 
	* @return Basico_Model_DataHoraUltimoLogon
	*/
	public function setDataHoraUltimoLogon($dataHoraUltimoLogon)
	{
		$this->_dataHoraUltimoLogon = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimoLogon, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataHoraUltimoLogon
	* 
	* @return null|String
	*/
	public function getDataHoraUltimoLogon()
	{
		return $this->_dataHoraUltimoLogon;
	}
     
	/**
	* Set observacoes
	* 
	* @param String $observacoes 
	* @return Basico_Model_Observacoes
	*/
	public function setObservacoes($observacoes)
	{
		$this->_observacoes = Basico_OPController_UtilOPController::retornaValorTipado($observacoes, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get observacoes
	* 
	* @return null|String
	*/
	public function getObservacoes()
	{
		return $this->_observacoes;
	}
     
	/**
	* Set podeExpirar
	* 
	* @param Boolean $podeExpirar 
	* @return Basico_Model_PodeExpirar
	*/
	public function setPodeExpirar($podeExpirar)
	{
		$this->_podeExpirar = Basico_OPController_UtilOPController::retornaValorTipado($podeExpirar, TIPO_BOOLEAN, false);
		return $this;
	}

	/**
	* Get podeExpirar
	* 
	* @return null|Boolean
	*/
	public function getPodeExpirar()
	{
		return $this->_podeExpirar;
	}
     
	/**
	* Set dataHoraProximaExpiracao
	* 
	* @param String $dataHoraProximaExpiracao 
	* @return Basico_Model_DataHoraProximaExpiracao
	*/
	public function setDataHoraProximaExpiracao($dataHoraProximaExpiracao)
	{
		$this->_dataHoraProximaExpiracao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraProximaExpiracao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataHoraProximaExpiracao
	* 
	* @return null|String
	*/
	public function getDataHoraProximaExpiracao()
	{
		return $this->_dataHoraProximaExpiracao;
	}
     
	/**
	* Set dataHoraUltimaExpiracao
	* 
	* @param String $dataHoraUltimaExpiracao 
	* @return Basico_Model_DataHoraUltimaExpiracao
	*/
	public function setDataHoraUltimaExpiracao($dataHoraUltimaExpiracao)
	{
		$this->_dataHoraUltimaExpiracao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaExpiracao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataHoraUltimaExpiracao
	* 
	* @return null|String
	*/
	public function getDataHoraUltimaExpiracao()
	{
		return $this->_dataHoraUltimaExpiracao;
	}

	/**
	* Set dataHoraExpiracaoSenha
	* 
	* @param String $dataHoraExpiracaoSenha 
	* @return Basico_Model_Login
	*/
	public function setDataHoraExpiracaoSenha($dataHoraExpiracaoSenha)
	{
		$this->_dataHoraExpiracaoSenha = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraExpiracaoSenha, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataHoraExpiracaoSenha
	* 
	* @return null|String
	*/
	public function getDataHoraExpiracaoSenha()
	{
		return $this->_dataHoraExpiracaoSenha;
	}
	
    /**
	* Set dataHoraUltimaTentativaFalha
	* 
	* @param String $dataHoraUltimaTentativaFalha 
	* @return Basico_Model_Login
	*/
	public function setDataHoraUltimaTentativaFalha($dataHoraUltimaTentativaFalha)
	{
		$this->_dataHoraUltimaTentativaFalha = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaTentativaFalha, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataHoraUltimaTentativaFalha
	* 
	* @return null|String
	*/
	public function getDataHoraUltimaTentativaFalha()
	{
		return $this->_dataHoraUltimaTentativaFalha;
	}
	
    /**
	* Set dataHoraUltimoReset
	* 
	* @param String $dataHoraUltimoReset 
	* @return Basico_Model_Login
	*/
	public function setDataHoraUltimoReset($dataHoraUltimoReset)
	{
		$this->_dataHoraUltimoReset = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimoReset, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataHoraUltimoReset
	* 
	* @return null|String
	*/
	public function getDataHoraUltimoReset()
	{
		return $this->_dataHoraUltimoReset;
	}
	
    /**
	* Set dataHoraUltimaTrocaSenha
	* 
	* @param String $dataHoraUltimaTrocaSenha 
	* @return Basico_Model_Login
	*/
	public function setDataHoraUltimaTrocaSenha($dataHoraUltimaTrocaSenha)
	{
		$this->_dataHoraUltimaTrocaSenha = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaTrocaSenha, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataHoraUltimaTrocaSenha
	* 
	* @return null|String
	*/
	public function getDataHoraUltimaTrocaSenha()
	{
		return $this->_dataHoraUltimaTrocaSenha;
	}
	
    /**
	* Set dataHoraCadastro
	* 
	* @param String $dataHoraCadastro 
	* @return Basico_Model_Login
	*/
	public function setDataHoraCadastro($dataHoraCadastro)
	{
		$this->_dataHoraCadastro = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraCadastro, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataHoraCadastro
	* 
	* @return null|String
	*/
	public function getDataHoraCadastro()
	{
		return $this->_dataHoraCadastro;
	}
	
    /**
	* Set dataHoraUltimaAtualizacao
	* 
	* @param String $dataHoraUltimaAtualizacao 
	* @return Basico_Model_Login
	*/
	public function setDataHoraUltimaAtualizacao($dataHoraUltimaAtualizacao)
	{
		$this->_dataHoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaAtualizacao, TIPO_STRING, true);
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
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Rowinfo
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get rowinfo
	* 
	* @return null|String
	*/
	public function getRowinfo()
	{
		return $this->_rowinfo;
	}
 
	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_Login
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_Login
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_LoginMapper instance if no mapper registered.
	* 
	* @return Basico_Model_LoginMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_LoginMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_Login
	*/
	public function find($id)
	{
		$this->getMapper()->find((Int) $id, $this);
		return $this;
	}

	/**
	* Fetch all entries
	* 
	* @return array
	*/
	public function fetchAll()
	{
		return $this->getMapper()->fetchAll();
	}
	
	/**
	* Fetch a list of entries that satisfy the parameters <params>
	* 
	* @return array
	*/
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		return $this->getMapper()->fetchList($where, $order, $count, $offset);
	}
}
