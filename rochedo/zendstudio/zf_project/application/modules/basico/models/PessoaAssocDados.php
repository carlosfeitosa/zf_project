<?php
/**
 * PessoaAssocDados model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoaAssocDadosMapper
 * @subpackage Model
 */
class Basico_Model_PessoaAssocDados
{
	/**
	 * @var Basico_Model_PessoaAssocDadosMapper
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
	 * @var String
	 */
	protected $_datahoraCriacao;
	/**
	 * @var String
	 */
	protected $_datahoraUltimaAtualizacao;
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
	 * @return Basico_Model_PessoaAssocDados
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
	* @return Basico_Model_PessoaAssocDados
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
        $model = new Basico_Model_Pessoa();
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
	* Set datahora criacao
	* 
	* @param String $datahoraCriacao
	* @return Basico_Model_Componente
	*/
	public function setDatahoraCriacao($datahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahora criacao
	* 
	* @return null|String
	*/
	public function getDatahoraCriacao()
	{
		return $this->_datahoraCriacao;
	}
     
	/**
	* Set datahora ultima atualizacao
	* 
	* @param String $datahoraUltimaAtualizacao 
	* @return Basico_Model_Componente
	*/
	public function setDatahoraUltimaAtualizacao($datahoraUltimaAtualizacao)
	{
		$this->_datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaAtualizacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahora ultima atualizacao
	* 
	* @return null|String
	*/
	public function getDatahoraUltimaAtualizacao()
	{
		return $this->_datahoraUltimaAtualizacao;
	}

	/**
	* Set rowinfo
	* 
	* @param String $xml 
	* @return Basico_Model_PessoaAssocDados
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo,TIPO_STRING,true);
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_PessoaAssocDados
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
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
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_PessoaAssocDadosMapper());
		}
		return $this->_mapper;
	}
}
