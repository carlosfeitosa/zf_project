<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * CVC model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CVCMapper
 * @subpackage Model
 */

require_once(APPLICATION_PATH . "/modules/basico/controllers/RowinfoControllerController.php");

class Basico_Model_CVC
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_CVCMapper
	 */
	protected $_mapper;

	/**
	 * @var Integer
	 */
	protected $_idGenerico;
	/**
	 * @var Double
	 */
	protected $_versao;
    /**
     * @var Integer
     */
    protected $_categoriaChaveEstrangeira;
	/**
	 * @var String
	 */
	protected $_objeto;
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
	protected $_ultimaAtualizacao;
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
	 * @return Basico_Model_CVC
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
	* Set idGenerico
	* 
	* @param Integer $idGenerico 
	* @return Basico_Model_IdGenerico
	*/
	public function setIdGenerico($idGenerico)
	{
		$this->_idGenerico = (Integer) $idGenerico;
		return $this;
	}

	/**
	* Get idGenerico
	* 
	* @return null|Integer
	*/
	public function getIdGenerico()
	{
		return $this->_idGenerico;
	}
     
	/**
	* Set versao
	* 
	* @param Double $versao 
	* @return Basico_Model_Versao
	*/
	public function setVersao($versao)
	{
		$this->_versao = (Integer) $versao;
		return $this;
	}

	/**
	* Get versao
	* 
	* @return null|Double
	*/
	public function getVersao()
	{
		return $this->_versao;
	}
     
	/**
	* Set categoriaChaveEstrangeira
	* 
	* @param int $categoriaChaveEstrangeira 
	* @return Basico_Model_CategoriaChaveEstrangeira
	*/
	public function setCategoriaChaveEstrangeira($categoriaChaveEstrangeira)
	{
		$this->_categoriaChaveEstrangeira = (int) $categoriaChaveEstrangeira;
		return $this;
	}

	/**
	* Get categoriaChaveEstrangeira
	* 
	* @return null|int
	*/
	public function getCategoriaChaveEstrangeira()
	{
		return $this->_categoriaChaveEstrangeira;
	}
 
    /**
     * Get categoriaChaveEstrangeira object
     * @return null|CategoriaChaveEstrangeira
     */
    public function getCategoriaChaveEstrangeiraObject()
    {
        $model = new Basico_Model_CategoriaChaveEstrangeira();
        $object = $model->find($this->_categoriaChaveEstrangeira);
        return $object;
    }
    
	/**
	* Set objeto
	* 
	* @param String $objeto 
	* @return Basico_Model_Objeto
	*/
	public function setObjeto($objeto)
	{
		if (is_object($objeto)) {
			$this->_objeto = Basico_Model_Util::codificar($objeto);
		}
		else
			$this->_objeto = $objeto;
		
		return $this;
	}

	/**
	* Get objeto
	* 
	* @return null|String
	*/
	public function getObjeto()
	{
		return $this->_objeto;
	}
	
	/**
	 * get objeto as array
	 * 
	 * @return null|array
	 */
	public function getObjetoArray()
	{
		return Basico_Model_Util::codificar($this->_objeto, CODIFICAR_ENCODED_STRING_TO_ARRAY);
	}
     
	/**
	* Set validadeInicio
	* 
	* @param String $validadeInicio 
	* @return Basico_Model_ValidadeInicio
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
	* @return Basico_Model_ValidadeTermino
	*/
	public function setValidadeTermino($validadeTermino)
	{
		if (isset($validadeTermino))
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
	* Get validadeTermino
	* 
	* @return null|String
	*/
	public function getUltimaAtualizacao()
	{
		return $this->_ultimaAtualizacao;
	}
	
	/**
	* Set validadeTermino
	* 
	* @param String $validadeTermino 
	* @return Basico_Model_ValidadeTermino
	*/
	public function setUltimaAtualizacao($ultimaAtualizacao)
	{
		$this->_ultimaAtualizacao = (String) $ultimaAtualizacao;
		return $this;
	}
	
	/**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Categoria
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = (String) $rowinfo;
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
	* @return Basico_Model_CVC
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
	* @return Basico_Model_CVC
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_CVCMapper instance if no mapper registered.
	* 
	* @return Basico_Model_CVCMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_CVCMapper());
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
	* @return Basico_Model_CVC
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
    
    /**
     * retorna a versao de uma tupla
     * @param $objeto
     * @param $forceVersioning
     * 
     * @return null|integer
     */
    public static function retornaUltimaVersao($objeto, $forceVersioning = false)
    {
    	// recuperando o valor do id generico vindo do objeto
		$idGenerico = Basico_Model_Util::retornaIdGenericoObjeto($objeto);

		// verificando se o valor de id generico existe
		if (!$idGenerico) {
			return null;
		}
		else 
		{
			// recuperando a relacao categoria chave estrangeira
			$categoriaChaveEstrangeira = self::retornaCategoriaChaveEstrangeira($objeto, true);

			// verificando se existe a relacao com categoria chave estrangeira
			if (isset($categoriaChaveEstrangeira)) {
				// recuperando objeto CVC
				$objCVC = self::retornaObjUltimaVersao($categoriaChaveEstrangeira->id, $idGenerico);
			
				// verificando a tupla existe
				if (isset($objCVC)) {
					// retorna versao da tupla
					return $objCVC->versao;
				}
				else if ($forceVersioning)
				{
					return self::versionar($objeto);
				}
				else {
					return null;
				}
			}
			else
			{
				return null;
			}
		}
    }
    
    /**
     * retorna o objeto Categoria Chave Estrangeira relacionada a um objeto
     * @param object $objeto
     * @param boolean $forceCreateRelationship
     * 
     * @return null|Basico_Model_CategoriaChaveEstrangeira
     */
    public static function retornaCategoriaChaveEstrangeira($objeto, $forceCreateRelationship = false)
    {
    	// recuperando o nome da tabela vinculada ao objeto
    	$tableName = Basico_Model_Util::retornaTableNameObjeto($objeto);
		// instanciando o controlador de categorias
		$categoriaController = Basico_CategoriaControllerController::init();
		// recuperando categoria CVC
		$objCategoriaCVC = $categoriaController->retornaCategoriaCVC();

		// instanciando o modelo de categoria chave estrangeira
		$modelCategoriaChaveEstrangeira = new Basico_Model_CategoriaChaveEstrangeira();
		
		// recuperando a categoria chave estrangeira relacionada ao objeto
		$arrayCategoriasChaveEstrangeira = $modelCategoriaChaveEstrangeira->fetchList("id_categoria = {$objCategoriaCVC->id} and tabela_estrangeira = '{$tableName}'", null, 1, 0);
		
		// verificando se existe a relacao com categoria chave estrangeira
		if (isset($arrayCategoriasChaveEstrangeira[0])) {
			return $arrayCategoriasChaveEstrangeira[0];
		}
		else if ($forceCreateRelationship) {
			// instanciando controlador de rowinfo
			$controladorRowInfo = Basico_RowInfoControllerController::init();
			
			// cria relacao caso o haja o parametro para criacao de relacao
			$modelCategoriaChaveEstrangeira->categoria = $objCategoriaCVC->id;
			$modelCategoriaChaveEstrangeira->tabelaEstrangeira = $tableName;
			$modelCategoriaChaveEstrangeira->campoEstrangeiro = Basico_Model_Util::retornaPrimaryKeyObjeto($objeto);
			
			// preparando XML rowinfo
			$controladorRowInfo->prepareXml($modelCategoriaChaveEstrangeira, true);
			$modelCategoriaChaveEstrangeira->rowinfo = $controladorRowInfo->getXml();
					
			// salvando
			$modelCategoriaChaveEstrangeira->save();

			return $modelCategoriaChaveEstrangeira;
		}
		else {
			return null;
		}
    }
    
    public static function versionar($objeto)
    {
    	// instanciando o modelo de CVC
    	$modelCVC = new Basico_Model_CVC();
    	
    	// recuperando relacao categoria chave estrangeira
    	$relacaoCategoriaChaveEstrangeira = self::retornaCategoriaChaveEstrangeira($objeto, true);
    	
    	// preenchendo informacoes sobre o versionamento
    	$modelCVC->categoriaChaveEstrangeira = $relacaoCategoriaChaveEstrangeira->id;
    	$modelCVC->idGenerico = Basico_Model_Util::retornaIdGenericoObjeto($objeto);
    	$modelCVC->objeto = $objeto;
     	
    	// recuperando versao
    	$versao = self::retornaUltimaVersao($objeto);
    	
    	// verificar se existe versao
    	if ($versao > 0) {
    		if (true != self::comparaObjetoObjetoUltimaVersao($objeto)) {
	    		// incrementando a versao
	    		$versao++;
	    		// retornando objeto CVC da ultima versao
	    		$objCVC = self::retornaObjUltimaVersao($modelCVC->categoriaChaveEstrangeira, $modelCVC->idGenerico);
	    		// fechando a ultima versao
				$objCVC->fechaValidadeVersao();
    		}
			else 
				return $versao;
    	}
    	else {
    		// tupla ainda nao versionada
    		$versao = 1;
    	}
    		
    	$modelCVC->versao = $versao;
    	
		// instanciando controlador de rowinfo
		$controladorRowInfo = Basico_RowInfoControllerController::init();
    	
    	// preparando XML rowinfo
		$controladorRowInfo->prepareXml($modelCVC, true);
		$modelCVC->rowinfo = $controladorRowInfo->getXml();
    	
    	// salvando informacoes do versionamento
    	$modelCVC->save();
    	
    	return $modelCVC->versao;
    }
    
    public static function atualizaVersao($objeto)
    {
    	// recuperando id da relacao de categoria chave estrangeira
    	$categoriaChaveEstrangeira = self::retornaCategoriaChaveEstrangeira($objeto);
    	// recuperando id generico do objeto
    	$idGenerico = Basico_Model_Util::retornaIdGenericoObjeto($objeto);
    	
    	// recuperando objeto CVC contendo a ultima versao do objeto
    	$objUltimaVersao = self::retornaObjUltimaVersao($categoriaChaveEstrangeira->id, $idGenerico);
    	
    	// atualizando a versao
    	$objUltimaVersao->versao++;
    	$objUltimaVersao->ultimaAtualizacao = Basico_Model_Util::retornaDateTimeAtual();
    	$objUltimaVersao->objeto = $objeto;
    	    	
    	$objUltimaVersao->save();
    	
    	return $objUltimaVersao->versao;
    }
    
    /**
     * Fecha a versao de uma tupla 
     */
    private function fechaValidadeVersao()
    {
    	$this->setValidadeTermino(Basico_Model_Util::retornaDateTimeAtual());
    	$this->save();
    }
    
    /**
     * retorna o objeto CVC da ultima versao
     * @param integer $idCategoriaChaveEstrangeira
     * @param integer $idGenerico
     * 
     * @return null|Basico_Model_CVC
     */
    private function retornaObjUltimaVersao($idCategoriaChaveEstrangeira, $idGenerico)
    {
    	// instanciando um novo modelo CVC
    	$modelCVC = new Basico_Model_CVC();
    	// recuperando a tupla
    	$arrayObjsCVC = $modelCVC->fetchList("id_categoria_chave_estrangeira = {$idCategoriaChaveEstrangeira} and id_generico = {$idGenerico} and validade_termino is null", null, 1, 0);
    	
    	// verificando se a tupla existe
    	if (isset($arrayObjsCVC[0]))
    		// retornando objeto CVC
    		return $arrayObjsCVC[0];
    	else
    		return null; 
    }
    
    /**
     * compara o objeto com o objeto da ultima versao
     * retorna true se o objeto for igual a ultima versao contida no CVC.
     *         false se for diferente.
     * @param object $objeto
     * 
     * @return true|false
     */
    private function comparaObjetoObjetoUltimaVersao($objeto)
    {
    	// codificando objeto para comparacao
    	$objetoCodificado = Basico_Model_Util::codificar($objeto);
    	// recuperando id da relacao de categoria chave estrangeira
    	$categoriaChaveEstrangeira = self::retornaCategoriaChaveEstrangeira($objeto);
    	// recuperando id generico do objeto
    	$idGenerico = Basico_Model_Util::retornaIdGenericoObjeto($objeto);
    	
    	// recuperando objeto CVC contendo a ultima versao do objeto
    	$objUltimaVersao = self::retornaObjUltimaVersao($categoriaChaveEstrangeira->id, $idGenerico);

    	return (strcmp($objetoCodificado, $objUltimaVersao->objeto) === 0);
    } 
}
