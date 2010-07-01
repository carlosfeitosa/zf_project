<?php
/**
 * Menu model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       GC_Model_MenuMapper
 * @subpackage Model
 */
class GC_Model_Menu
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var GC_Model_MenuMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_descricao;
	/**
	 * @var String
	 */
	protected $_constanteTextualTitulo;
	/**
	 * @var String
	 */
	protected $_menu;
	/**
	 * @var Integer
	 */
	protected $_menuPai;
	/**
	 * @var Date
	 */
	protected $_validadeInicio;
	/**
	 * @var Date
	 */
	protected $_validadeTermino;
	/**
	 * @var Date
	 */
	protected $_dataDesativacao;
	/**
	 * @var Date
	 */
	protected $_dataAutoReativar;
	/**
	 * @var String
	 */
	protected $_motivoDesativacao;
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
	 * @return GC_Model_Menu
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
	* @return GC_Model_Nome
	*/
	public function setNome($nome)
	{
		$this->_nome = (String) $nome;
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
	* Set descricao
	* 
	* @param String $descricao 
	* @return GC_Model_Descricao
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
	* Set constanteTextualTitulo
	* 
	* @param String $constanteTextualTitulo 
	* @return GC_Model_ConstanteTextualTitulo
	*/
	public function setConstanteTextualTitulo($constanteTextualTitulo)
	{
		$this->_constanteTextualTitulo = (String) $constanteTextualTitulo;
		return $this;
	}

	/**
	* Get constanteTextualTitulo
	* 
	* @return null|String
	*/
	public function getConstanteTextualTitulo()
	{
		return $this->_constanteTextualTitulo;
	}
     
	/**
	* Set menu
	* 
	* @param String $menu 
	* @return GC_Model_Menu
	*/
	public function setMenu($menu)
	{
		$this->_menu = (String) $menu;
		return $this;
	}

	/**
	* Get menu
	* 
	* @return null|String
	*/
	public function getMenu()
	{
		return $this->_menu;
	}
     
	/**
	* Set menuPai
	* 
	* @param Integer $menuPai 
	* @return GC_Model_MenuPai
	*/
	public function setMenuPai($menuPai)
	{
		$this->_menuPai = (Integer) $menuPai;
		return $this;
	}

	/**
	* Get menuPai
	* 
	* @return null|Integer
	*/
	public function getMenuPai()
	{
		return $this->_menuPai;
	}
     
	/**
	* Set validadeInicio
	* 
	* @param String $validadeInicio 
	* @return GC_Model_ValidadeInicio
	*/
	public function setValidadeInicio($validadeInicio)
	{
		$this->_validadeInicio = (String) $validadeInicio;
		return $this;
	}

	/**
	* Get validadeInicio
	* 
	* @return null|String
	*/
	public function getValidadeInicio()
	{
		return $this->_validadeInicio;
	}
     
	/**
	* Set validadeTermino
	* 
	* @param String $validadeTermino 
	* @return GC_Model_ValidadeTermino
	*/
	public function setValidadeTermino($validadeTermino)
	{
		$this->_validadeTermino = (String) $validadeTermino;
		return $this;
	}

	/**
	* Get validadeTermino
	* 
	* @return null|String
	*/
	public function getValidadeTermino()
	{
		return $this->_validadeTermino;
	}
     
	/**
	* Set dataDesativacao
	* 
	* @param String $dataDesativacao 
	* @return GC_Model_DataDesativacao
	*/
	public function setDataDesativacao($dataDesativacao)
	{
		$this->_dataDesativacao = (String) $dataDesativacao;
		return $this;
	}

	/**
	* Get dataDesativacao
	* 
	* @return null|String
	*/
	public function getDataDesativacao()
	{
		return $this->_dataDesativacao;
	}
     
	/**
	* Set dataAutoReativar
	* 
	* @param String $dataAutoReativar 
	* @return GC_Model_DataAutoReativar
	*/
	public function setDataAutoReativar($dataAutoReativar)
	{
		$this->_dataAutoReativar = (String) $dataAutoReativar;
		return $this;
	}

	/**
	* Get dataAutoReativar
	* 
	* @return null|String
	*/
	public function getDataAutoReativar()
	{
		return $this->_dataAutoReativar;
	}
     
	/**
	* Set motivoDesativacao
	* 
	* @param String $motivoDesativacao 
	* @return GC_Model_MotivoDesativacao
	*/
	public function setMotivoDesativacao($motivoDesativacao)
	{
		$this->_motivoDesativacao = (String) $motivoDesativacao;
		return $this;
	}

	/**
	* Get motivoDesativacao
	* 
	* @return null|String
	*/
	public function getMotivoDesativacao()
	{
		return $this->_motivoDesativacao;
	}
 
	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return GC_Model_Menu
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
	* Set entry rowinfo
	* 
	* @param  String $rowinfo
	* @return GC_Model_Menu
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = (String) $rowinfo;
		return $this;
	}

	/**
	* Retrieve entry rowinfo
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
	* @return GC_Model_Menu
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads GC_Model_MenuMapper instance if no mapper registered.
	* 
	* @return GC_Model_MenuMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new GC_Model_MenuMapper());
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
	* @return GC_Model_Menu
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
	   
    /**
    * fetch list of entries satisfying the parameters but allowing a join
    *
    * @return array
    */
    public function fetchJoinList($joins=null, $where=null, $order=null, $count=null, $offset=null)
    {
        return $this->getMapper()->fetchJoinList($joins, $where, $order, $count, $offset);
    }
    
    /**
    * fetch joined list of entries that satisfy the parameters
    *
    * @return array
    */
    public function fetchJoin($jointable=null, $joinby=null, $where=null, $order=null)
    {
        return $this->getMapper()->fetchJoin($jointable, $joinby, $where, $order);
    }

}
