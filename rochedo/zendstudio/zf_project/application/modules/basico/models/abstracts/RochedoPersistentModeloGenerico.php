<?php
/**
 * 
 * Esta classe tem por objetivo, centralizar todos os atributos comuns a todos os modelos.
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 *
 */
abstract class Basico_AbstractModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var Basico_Model
	 */
	protected $_mapper;
	/**
	* @var int
	*/
	protected $_id;
	/**
	 * @var Date
	 */
	protected $_datahoraCriacao;
	/**
	 * @var String
	 */
	protected $_rowinfo;

	/**
	 * Constructor
	 * 
	 * @param  array|null $options 
	 * 
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
	 * 
	 * @return void
	 */
	public function __set($name, $value)
	{
		$method = 'set' . $name;
		if ('mapper' == $name || !method_exists($this, $method)) 
		{
			throw new Exception(MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA . $name);
		}
		$this->$method($value);
	}

	/**
	 * Overloading: allow property access
	 * 
	 * @param  string $name 
	 * 
	 * @return mixed
	 */
	public function __get($name)
	{
		$method = 'get' . $name;
		if ('mapper' == $name || !method_exists($this, $method)) 
		{
			throw new Exception(MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA . $name);
		}
		return $this->$method();
	}

	/**
	 * Set object state
	 * 
	 * @param  array $options
	 * 
	 * @return Model
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* 
	* @return Model
	*/
	public function setMapper($object)
	{
		$this->_mapper = $object;
		return $this;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Model instance if no mapper registered.
	* 
	* @return Model
	*/
	public function getMapper($object)
	{
		if (null === $this->_mapper) {
			$this->setMapper(new $object());
		}
		return $this->_mapper;
	}

	/**
	* Set entry id
	* 
	* @param  int $id 
	* 
	* @return Model
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
	* Set datahoraCriacao
	* 
	* @param String $datahoraCriacao
	* 
	* @return Model
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
	* Set rowinfo
	* 
	* @param String $xml
	* 
	* @return Model
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
	 * Retorna um array com os atributos da classe
	 * 
	 * @param Boolean $removerMapper
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 11/04/2012
	 */
	public function retornaAtributos($removerMapper = true)
	{
		// recuperando atributos da classe
		$arrayResultado = array_keys(get_class_vars(get_class($this)));

		// loop para remover os underlines
		foreach ($arrayResultado as $chave => $atributo) {
			// verificando se o valor é "_mapper" e se é preciso remove-lo
			if (($atributo === "_mapper") and ($removerMapper)) {
				// removendo mapper
				unset($arrayResultado[$chave]);

				// indo para o proximo passo do laço
				continue;
			}

			// removendo o "underline" (_) do inicio do atributo
			$arrayResultado[$chave] = substr_replace($atributo, '', 0, 1);
		}

		// regerando chaves do array
		$arrayResultado = array_slice($arrayResultado, 0, count($arrayResultado));
		
		// movendo atributo "id" para o inicio do array
		$arrayResultado = Basico_OPController_UtilOPController::moverElementoPorChave($arrayResultado, array_search('id', $arrayResultado), 0);
		
		// retornando o array de atributos
		return $arrayResultado;
	}
}