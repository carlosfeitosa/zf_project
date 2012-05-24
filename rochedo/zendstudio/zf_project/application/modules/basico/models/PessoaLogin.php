<?php
/**
 * PessoaLogin model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoaLoginMapper
 * @subpackage Model
 */
class Basico_Model_PessoaLogin extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
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
	protected $_datahoraUltimoLogon;
	/**
	 * @var Boolean
	 */
	protected $_podeExpirar;
	/**
	 * @var Date
	 */
	protected $_datahoraProximaExpiracao;
	/**
	 * @var Date
	 */
	protected $_datahoraUltimaExpiracao;
	/**
	 * @var Date
	 */
	protected $_datahoraExpiracaoSenha;
	/**
	 * 
	 * @var Date
	 */
	protected $_datahoraUltimaTentativaFalha;
	/**
	 * 
	 * @var Date
	 */
	protected $_datahoraUltimoReset;
	/**
	 * 
	 * @var Date
	 */
	protected $_datahoraUltimaTrocaSenha;
	/**
	 * 
	 * @var Date
	 */
	protected $_datahoraAceiteTermoUso;
	
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
	* Set datahoraUltimoLogon
	* 
	* @param String $datahoraUltimoLogon 
	* @return Basico_Model_PessoaLogin
	*/
	public function setDatahoraUltimoLogon($datahoraUltimoLogon)
	{
		$this->_datahoraUltimoLogon = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimoLogon, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraUltimoLogon
	* 
	* @return null|String
	*/
	public function getDatahoraUltimoLogon()
	{
		return $this->_datahoraUltimoLogon;
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
	* Set datahoraProximaExpiracao
	* 
	* @param String $datahoraProximaExpiracao 
	* @return Basico_Model_PessoaLogin
	*/
	public function setDatahoraProximaExpiracao($datahoraProximaExpiracao)
	{
		$this->_datahoraProximaExpiracao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraProximaExpiracao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraProximaExpiracao
	* 
	* @return null|String
	*/
	public function getDatahoraProximaExpiracao()
	{
		return $this->_datahoraProximaExpiracao;
	}
     
	/**
	* Set datahoraUltimaExpiracao
	* 
	* @param String $datahoraUltimaExpiracao 
	* @return Basico_Model_PessoaLogin
	*/
	public function setDatahoraUltimaExpiracao($datahoraUltimaExpiracao)
	{
		$this->_datahoraUltimaExpiracao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaExpiracao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraUltimaExpiracao
	* 
	* @return null|String
	*/
	public function getDatahoraUltimaExpiracao()
	{
		return $this->_datahoraUltimaExpiracao;
	}

	/**
	* Set datahoraExpiracaoSenha
	* 
	* @param String $datahoraExpiracaoSenha 
	* @return Basico_Model_PessoaLogin
	*/
	public function setDatahoraExpiracaoSenha($datahoraExpiracaoSenha)
	{
		$this->_datahoraExpiracaoSenha = Basico_OPController_UtilOPController::retornaValorTipado($datahoraExpiracaoSenha, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraExpiracaoSenha
	* 
	* @return null|String
	*/
	public function getDatahoraExpiracaoSenha()
	{
		return $this->_datahoraExpiracaoSenha;
	}
	
    /**
	* Set datahoraUltimaTentativaFalha
	* 
	* @param String $datahoraUltimaTentativaFalha 
	* @return Basico_Model_PessoaLogin
	*/
	public function setDatahoraUltimaTentativaFalha($datahoraUltimaTentativaFalha)
	{
		$this->_datahoraUltimaTentativaFalha = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaTentativaFalha, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraUltimaTentativaFalha
	* 
	* @return null|String
	*/
	public function getDatahoraUltimaTentativaFalha()
	{
		return $this->_datahoraUltimaTentativaFalha;
	}
	
    /**
	* Set datahoraUltimoReset
	* 
	* @param String $datahoraUltimoReset 
	* @return Basico_Model_PessoaLogin
	*/
	public function setDatahoraUltimoReset($datahoraUltimoReset)
	{
		$this->_datahoraUltimoReset = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimoReset, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraUltimoReset
	* 
	* @return null|String
	*/
	public function getDatahoraUltimoReset()
	{
		return $this->_datahoraUltimoReset;
	}
	
    /**
	* Set datahoraUltimaTrocaSenha
	* 
	* @param String $datahoraUltimaTrocaSenha 
	* @return Basico_Model_PessoaLogin
	*/
	public function setDatahoraUltimaTrocaSenha($datahoraUltimaTrocaSenha)
	{
		$this->_datahoraUltimaTrocaSenha = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaTrocaSenha, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraUltimaTrocaSenha
	* 
	* @return null|String
	*/
	public function getDatahoraUltimaTrocaSenha()
	{
		return $this->_datahoraUltimaTrocaSenha;
	}

	/**
	* Set datahoraAceiteTermoUso
	* 
	* @param String $datahoraAceiteTermoUso 
	* @return Basico_Model_PessoaLogin
	*/
	public function setDatahoraAceiteTermoUso($datahoraAceiteTermoUso)
	{
		$this->_datahoraAceiteTermoUso = Basico_OPController_UtilOPController::retornaValorTipado($datahoraAceiteTermoUso, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraAceiteTermoUso
	* 
	* @return null|String
	*/
	public function getDatahoraAceiteTermoUso()
	{
		return $this->_datahoraAceiteTermoUso;
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
		return parent::getMapper('Basico_Model_PessoaLoginMapper');
	}
}