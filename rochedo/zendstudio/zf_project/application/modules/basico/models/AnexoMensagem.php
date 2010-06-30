<?php
/**
 * AnexoMensagem model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AnexoMensagemMapper
 * @subpackage Model
 */
class Basico_Model_AnexoMensagem
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_AnexoMensagemMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_nomeOriginal;
	/**
	 * @var String
	 */
	protected $_nomeSugestao;
	/**
	 * @var String
	 */
	protected $_descricao;
	/**
	 * @var File
	 */
	protected $_arquivo;
	/**
	 * @var String
	 */
	protected $_mimeType;
    /**
     * @var Integer
     */
    protected $_mensagem;

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
	 * @return Basico_Model_AnexoMensagem
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
	* Set nomeOriginal
	* 
	* @param String $nomeOriginal 
	* @return Basico_Model_NomeOriginal
	*/
	public function setNomeOriginal($nomeOriginal)
	{
		$this->_nomeOriginal = (String) $nomeOriginal;
		return $this;
	}

	/**
	* Get nomeOriginal
	* 
	* @return null|String
	*/
	public function getNomeOriginal()
	{
		return $this->_nomeOriginal;
	}
     
	/**
	* Set nomeSugestao
	* 
	* @param String $nomeSugestao 
	* @return Basico_Model_NomeSugestao
	*/
	public function setNomeSugestao($nomeSugestao)
	{
		$this->_nomeSugestao = (String) $nomeSugestao;
		return $this;
	}

	/**
	* Get nomeSugestao
	* 
	* @return null|String
	*/
	public function getNomeSugestao()
	{
		return $this->_nomeSugestao;
	}
     
	/**
	* Set descricao
	* 
	* @param String $descricao 
	* @return Basico_Model_Descricao
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = (String) $descricao;
		return $this;
	}

	/**
	* Get descricao
	* 
	* @return null|String
	*/
	public function getDescricao()
	{
		return $this->_descricao;
	}
     
	/**
	* Set arquivo
	* 
	* @param String $arquivo 
	* @return Default_Model_Arquivo
	*/
	public function setArquivo($arquivo)
	{
		$this->_arquivo = (String) $arquivo;
		return $this;
	}

	/**
	* Get arquivo
	* 
	* @return null|String
	*/
	public function getArquivo()
	{
		return $this->_arquivo;
	}
     
	/**
	* Set mimeType
	* 
	* @param String $mimeType 
	* @return Basico_Model_MimeType
	*/
	public function setMimeType($mimeType)
	{
		$this->_mimeType = (String) $mimeType;
		return $this;
	}

	/**
	* Get mimeType
	* 
	* @return null|String
	*/
	public function getMimeType()
	{
		return $this->_mimeType;
	}
     
	/**
	* Set mensagem
	* 
	* @param int $mensagem 
	* @return Basico_Model_Mensagem
	*/
	public function setMensagem($mensagem)
	{
		$this->_mensagem = (int) $mensagem;
		return $this;
	}

	/**
	* Get mensagem
	* 
	* @return null|int
	*/
	public function getMensagem()
	{
		return $this->_mensagem;
	}
 
    /**
     * Get mensagem object
     * @return null|Mensagem
     */
    public function getMensagemObject()
    {
        $model = new Basico_Model_Mensagem();
        $object = $model->find($this->_mensagem);
        return $object;
    }

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_AnexoMensagem
	*/
	public function setId($id)
	{
		$this->_id = (int) $id;
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
	* @return Basico_Model_AnexoMensagem
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_AnexoMensagemMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AnexoMensagemMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_AnexoMensagemMapper());
		}
		return $this->_mapper;
	}

	/**
	* Save the current entry
	* 
	* @return void
	*/
	public function save()
	{
		$this->getMapper()->save($this);
	}
	
	/**
	 * Delete the current entry
	 * @return void
	 */
	public function delete()
	{
		$this->getMapper()->delete($this);
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_AnexoMensagem
	*/
	public function find($id)
	{
		$this->getMapper()->find($id, $this);
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
