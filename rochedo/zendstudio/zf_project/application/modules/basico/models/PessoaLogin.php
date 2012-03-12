<?php
/**
 * PessoaLogin model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoaLoginMapper
 * @subpackage Model
 */
class Basico_Model_PessoaLogin
{
	/**
	 * @var Basico_Model_PessoaLoginMapper
	 */
	protected $_mapper;	
	
	/**
	* @var int
	*/
	protected $_id;
	/**
	* @var int
	*/
	protected $_idPessoa;
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
	protected $_dataHoraAceiteTermoUso;
	/**
	 * 
	 * @var Date
	 */
	protected $_dataHoraCriacao;
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
	 * @return Basico_Model_PessoaLogin
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
	 * @return Basico_Model_PessoaLogin
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
	* Set id pessoa
	* 
	* @param int $idPessoa 
	* @return Basico_Model_PessoaLogin
	*/
	public function setIdPessoa($idPessoa)
	{
		$this->_idPessoa = Basico_OPController_UtilOPController::retornaValorTipado($idPessoa, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id pessoa
	* 
	* @return null|int
	*/
	public function getIdPessoa()
	{
		return $this->_idPessoa;
	}
	
    /**
     * Get pessoa object
     * @return null|Basico_Model_PessoaLogin
     */
    public function getPessoaObject()
    {
        $model = new Basico_Model_Pessoa();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idPessoa);
        return $object;
    }
    
	/**
	* Set login
	* 
	* @param String $login 
	* @return Basico_Model_PessoaLogin
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
	* @return Basico_Model_PessoaLogin
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
	* @return Basico_Model_PessoaLogin
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
	* @return Basico_Model_PessoaLogin
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
	* @return Basico_Model_PessoaLogin
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
	* @return Basico_Model_PessoaLogin
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
	* @return Basico_Model_PessoaLogin
	*/
	public function setDataHoraUltimoLogon($dataHoraUltimoLogon)
	{
		$this->_dataHoraUltimoLogon = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimoLogon, TIPO_DATE, true);
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
	* Set podeExpirar
	* 
	* @param Boolean $podeExpirar 
	* @return Basico_Model_PessoaLogin
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
	* @return Basico_Model_PessoaLogin
	*/
	public function setDataHoraProximaExpiracao($dataHoraProximaExpiracao)
	{
		$this->_dataHoraProximaExpiracao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraProximaExpiracao, TIPO_DATE, true);
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
	* @return Basico_Model_PessoaLogin
	*/
	public function setDataHoraUltimaExpiracao($dataHoraUltimaExpiracao)
	{
		$this->_dataHoraUltimaExpiracao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaExpiracao, TIPO_DATE, true);
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
	* @return Basico_Model_PessoaLogin
	*/
	public function setDataHoraExpiracaoSenha($dataHoraExpiracaoSenha)
	{
		$this->_dataHoraExpiracaoSenha = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraExpiracaoSenha, TIPO_DATE, true);
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
	* @return Basico_Model_PessoaLogin
	*/
	public function setDataHoraUltimaTentativaFalha($dataHoraUltimaTentativaFalha)
	{
		$this->_dataHoraUltimaTentativaFalha = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaTentativaFalha, TIPO_DATE, true);
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
	* @return Basico_Model_PessoaLogin
	*/
	public function setDataHoraUltimoReset($dataHoraUltimoReset)
	{
		$this->_dataHoraUltimoReset = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimoReset, TIPO_DATE, true);
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
	* @return Basico_Model_PessoaLogin
	*/
	public function setDataHoraUltimaTrocaSenha($dataHoraUltimaTrocaSenha)
	{
		$this->_dataHoraUltimaTrocaSenha = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaTrocaSenha, TIPO_DATE, true);
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
	* Set dataHoraCriacao
	* 
	* @param String $dataHoraCriacao
	* @return Basico_Model_PessoaLogin
	*/
	public function setDataHoraCriacao($dataHoraCriacao)
	{
		$this->_dataHoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraCriacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Set dataHoraAceiteTermoUso
	* 
	* @param String $dataHoraAceiteTermoUso 
	* @return Basico_Model_PessoaLogin
	*/
	public function setDataHoraAceiteTermoUso($dataHoraAceiteTermoUso)
	{
		$this->_dataHoraAceiteTermoUso = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraAceiteTermoUso, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get dataHoraAceiteTermoUso
	* 
	* @return null|String
	*/
	public function getDataHoraAceiteTermoUso()
	{
		return $this->_dataHoraAceiteTermoUso;
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
	* @return Basico_Model_PessoaLogin
	*/
	public function setDataHoraUltimaAtualizacao($dataHoraUltimaAtualizacao)
	{
		$this->_dataHoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaAtualizacao, TIPO_DATE, true);
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
	* @return Basico_Model_PessoaLogin
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
	* @return Basico_Model_PessoaLogin
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
	* @return Basico_Model_PessoaLogin
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_PessoaLoginMapper instance if no mapper registered.
	* 
	* @return Basico_Model_PessoaLoginMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_PessoaLoginMapper());
		}
		return $this->_mapper;
	}
}
