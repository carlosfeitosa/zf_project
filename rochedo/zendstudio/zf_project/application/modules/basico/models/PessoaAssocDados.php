<?php
/**
 * PessoaAssocDados model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoaAssocDadosMapper
 * @subpackage Model
 */
class Basico_Model_PessoaAssocDados extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{	
	/**
	 * Referencia a classe Basico_Model_Pessoa
	* @var int
	*/
	protected $_idPessoa;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_dataNascimento;
	/**
	 * @var String
	 */
	protected $_constanteTextualPais;
	/**
	 * @var String
	 */
	protected $_nomeUfNascimento;
	/**
	* @var String
	*/
	protected $_nomeMunicipioNascimento;
	/**
	 * @var String
	 */
	protected $_nomePai;
	/**
	 * @var String
	 */
	protected $_nomeMae;
	
	/**
	* Set entry id pessoa
	* 
	* @param  int $idPessoa
	* @return Basico_Model_PessoaAssocDados
	*/
	public function setIdPessoa($idPessoa)
	{
		$this->_idPessoa = Basico_OPController_UtilOPController::retornaValorTipado($idPessoa, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry id pessoa
	* 
	* @return null|int
	*/
	public function getIdPessoa()
	{
		return $this->_idPessoa;
	}

    /**
     * Get pessoa object
     * 
     * @return null|Basico_Model_Pessoa
     */
    public function getPessoaObject()
    {
        $model = new Basico_Model_ComponenteAssocclInclude();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idPessoa);
        return $object;
    }

	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_PessoaAssocDados
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
	* Set data nascimento
	* 
	* @param String $dataNascimento
	* 
	* @return Basico_Model_PessoaAssocDados
	*/
	public function setDataNascimento($dataNascimento)
	{
		$this->_dataNascimento = Basico_OPController_UtilOPController::retornaValorTipado($dataNascimento, TIPO_DATE, true);
		return $this;
	}
	
    /**
	* Get data nascimento
	* 
	* @return null|String
	*/
	public function getDataNascimento()
	{
		return $this->_dataNascimento;
	}

	/**
	* Set constante textual pais
	* 
	* @param String $constanteTextualPais
	* 
	* @return Basico_Model_PessoaAssocDados
	*/
	public function setConstanteTextualPais($constanteTextualPais)
	{
		$this->_constanteTextualPais = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualPais, TIPO_STRING, true);
		return $this;
	}
	
    /**
	* Get constante textual pais
	* 
	* @return null|String
	*/
	public function getConstanteTextualPais()
	{
		return $this->_constanteTextualPais;
	}

	/**
	* Set nome uf nascimento
	* 
	* @param String $nomeUfNascimento
	* 
	* @return Basico_Model_PessoaAssocDados
	*/
	public function setNomeUfNascimento($nomeUfNascimento)
	{
		$this->_nomeUfNascimento = Basico_OPController_UtilOPController::retornaValorTipado($nomeUfNascimento, TIPO_STRING, true);
		return $this;
	}
	
    /**
	* Get nome uf nascimento
	* 
	* @return null|String
	*/
	public function getNomeUfNascimento()
	{
		return $this->_nomeUfNascimento;
	}

	/**
	* Set nome municipio nascimento
	* 
	* @param  String $nomeMunicipioNascimento
	* 
	* @return Basico_Model_PessoaAssocDados
	*/
	public function setNomeMunicipioNascimento($nomeMunicipioNascimento)
	{
		$this->_nomeMunicipioNascimento = Basico_OPController_UtilOPController::retornaValorTipado($nomeMunicipioNascimento, TIPO_STRING, true);
		return $this;
	}

	/**
	* Retrieve nome municipio nascimento
	* 
	* @return null|int
	*/
	public function getNomeMunicipioNascimento()
	{
		return $this->_nomeMunicipioNascimento;
	}

	/**
	* Set nome pai
	* 
	* @param  String $nomePai
	* 
	* @return Basico_Model_PessoaAssocDados
	*/
	public function setNomePai($nomePai)
	{
		$this->_nomePai = Basico_OPController_UtilOPController::retornaValorTipado($nomePai, TIPO_STRING, true);
		return $this;
	}

    /**
	* Get nomePai
	* 
	* @return null|String
	*/
	public function getNomePai()
	{
		return $this->_nomePai;
	}

	/**
	* Set nome mae
	* 
	* @param  String $nomeMae
	* 
	* @return Basico_Model_PessoaAssocDados
	*/
	public function setNomeMae($nomeMae)
	{
		$this->_nomeMae = Basico_OPController_UtilOPController::retornaValorTipado($nomeMae, TIPO_STRING, true);
		return $this;
	}

    /**
	* Get nomeMae
	* 
	* @return null|String
	*/
	public function getNomeMae()
	{
		return $this->_nomeMae;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_PessoaAssocDadosMapper instance if no mapper registered.
	* 
	* @return Basico_Model_PessoaAssocDadosMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_PessoaAssocDadosMapper);
	}
}
