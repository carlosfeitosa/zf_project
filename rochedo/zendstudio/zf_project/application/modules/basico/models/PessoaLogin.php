<?php
/**
 * PessoaLogin model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoaLoginMapper
 * @subpackage Model
 */
class Basico_Model_PessoaLogin extends Abstract_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
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
        $model = new Basico_Model_ComponenteAssocclInclude();
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
	* Get data mapper
	*
	* Lazy loads Basico_Model_PessoaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_PessoaLoginMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_PessoaLoginMapper);
	}
}