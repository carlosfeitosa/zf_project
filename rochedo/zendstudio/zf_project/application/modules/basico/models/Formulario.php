<?php
/**
 * Formulario model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioMapper
 * @subpackage Model
 */
class Basico_Model_Formulario
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_FormularioMapper
	 */
	protected $_mapper;

	/**
	 * @var int
	 */
	protected $_categoria;
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
	protected $_formName;
	/**
	 * @var String
	 */
	protected $_constanteTextualTitulo;
	/**
	 * @var String
	 */
	protected $_constanteTextualSubTitulo;
	/**
	 * @var String
	 */
	protected $_formMethod;
	/**
	 * @var String
	 */
	protected $_formAction;
	/**
	 * @var String
	 */
	protected $_formTarget;
	/**
	 * @var String
	 */
	protected $_formEncType;
	/**
	 * @var Integer
	 */
	protected $_formularioPai;
    /**
     * @var String
     */
    protected $_formAttribs;
    /**
     * @var Integer
     */
    protected $_decorator;
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
	 * @return Basico_Model_Formulario
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
	 * Set categoria
	 * 
	 * @param int $categoria
	 * @return Basico_Model_Formulario
	 */
	public function setCategoria($categoria)
	{
		$this->_categoria = (int) $categoria;
		return $this;
	}
	
	/**
	 * Get categoria
	 * 
	 * @return null|int
	 */
	public function getCategoria()
	{
		return $this->_categoria;
	}
    
	/**
	* Set nome
	* 
	* @param String $nome 
	* @return String
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
	* @return String
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
	* Set formName
	* 
	* @param String $formName 
	* @return String
	*/
	public function setFormName($formName)
	{
		$this->_formName = (String) $formName;
		return $this;
	}

	/**
	* Get formName
	* 
	* @return null|String
	*/
	public function getFormName()
	{
		return $this->_formName;
	}
     
	/**
	* Set constanteTextualTitulo
	* 
	* @param String $constanteTextualTitulo 
	* @return String
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
	* Set constanteTextualSubTitulo
	* 
	* @param String $constanteTextualSubTitulo 
	* @return String
	*/
	public function setConstanteTextualSubTitulo($constanteTextualSubTitulo)
	{
		$this->_constanteTextualSubTitulo = (String) $constanteTextualSubTitulo;
		return $this;
	}

	/**
	* Get constanteTextualSubTitulo
	* 
	* @return null|String
	*/
	public function getConstanteTextualSubTitulo()
	{
		return $this->_constanteTextualSubTitulo;
	}
	
	/**
	* Set formMethod
	* 
	* @param String $formMethod 
	* @return String
	*/
	public function setFormMethod($formMethod)
	{
		$this->_formMethod = (String) $formMethod;
		return $this;
	}

	/**
	* Get formMethod
	* 
	* @return null|String
	*/
	public function getFormMethod()
	{
		return $this->_formMethod;
	}
     
	/**
	* Set formAction
	* 
	* @param String $formAction 
	* @return String
	*/
	public function setFormAction($formAction)
	{
		$this->_formAction = (String) $formAction;
		return $this;
	}

	/**
	* Get formAction
	* 
	* @return null|String
	*/
	public function getFormAction()
	{
		return $this->_formAction;
	}
     
	/**
	* Set formTarget
	* 
	* @param String $formTarget 
	* @return String
	*/
	public function setFormTarget($formTarget)
	{
		$this->_formTarget = (String) $formTarget;
		return $this;
	}

	/**
	* Get formTarget
	* 
	* @return null|String
	*/
	public function getFormTarget()
	{
		return $this->_formTarget;
	}
     
	/**
	* Set formEncType
	* 
	* @param String $formEncType 
	* @return String
	*/
	public function setFormEncType($formEncType)
	{
		$this->_formEncType = (String) $formEncType;
		return $this;
	}

	/**
	* Get formEncType
	* 
	* @return null|String
	*/
	public function getFormEncType()
	{
		return $this->_formEncType;
	}
     
	/**
	* Set formularioPai
	* 
	* @param Integer $formularioPai 
	* @return Integer
	*/
	public function setFormularioPai($formularioPai)
	{
		$this->_formularioPai = (Integer) $formularioPai;
		return $this;
	}

	/**
	* Get formularioPai
	* 
	* @return null|Integer
	*/
	public function getFormularioPai()
	{
		return $this->_formularioPai;
	}
	
    /**
    * Set decorator
    * 
    * @param Integer $decorator 
    * @return Integer
    */
    public function setDecorator($decorator)
    {
        $this->_decorator = (Integer) $decorator;
        return $this;
    }

    /**
    * Get decorator
    * 
    * @return null|Integer
    */
    public function getDecorator()
    {
        return $this->_decorator;
    }
	
    /**
    * Set formAttribs
    * 
    * @param String $formAttribs 
    * @return String
    */
    public function setFormAttribs($formAttribs)
    {
        $this->_formAttribs = (String) $formAttribs;
        return $this;
    }

    /**
    * Get formAttribs
    * 
    * @return null|String
    */
    public function getFormAttribs()
    {
        return $this->_formAttribs;
    }
     
	/**
	* Set validadeInicio
	* 
	* @param String $validadeInicio 
	* @return DateTime
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
	* @return Datetime
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
	* @return DateTime
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
	* @return DateTime
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
	* @return String
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
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Formulario
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
	* @return Default_Model_Formulario
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
	
	public function getCategoriaObject()
	{
		$model = new Basico_Model_Categoria();
		$object = $model->find($this->_categoria);
		return $object;
	}
	
    /**
     * Get decorator object
     * @return null|decorator
     */
    public function getDecoratorObject()
    {
        $model = new Basico_Model_Decorator();
        $object = $model->find($this->_decorator);
        return $object;
    }
    
    /**
     * Return if exists formulario filho
     * @return true|false
     */
    public function existeFormulariosFilhos()
    {  	
    	$modelFormulario = new Basico_Model_Formulario();
    	$arrayFormulariosObjects = $modelFormulario->fetchList("id_formulario_pai = {$this->_id}");
    	
    	return (count($arrayFormulariosObjects) > 0);
    }
    
    /**
     * Get formulariosFilhos objects
     * @return null|arrayFormulario
     */
    public function getFormulariosFilhosObjects()
    {
    	$modelFormulario = new Basico_Model_Formulario();
    	$arrayFormulariosObjects = $modelFormulario->fetchList("id_formulario_pai = {$this->_id}");
    	
    	$arrayIdsFormularios = array();
    	foreach ($arrayFormulariosObjects as $formularioObject){
    		$arrayIdsFormularios[] = $formularioObject->id;
    	}
    	
    	$stringIdsFormularios = implode(',', $arrayIdsFormularios);
    	
    	$arrayObjects = $modelFormulario->fetchList("id IN ({$stringIdsFormularios})");
        
        return $arrayObjects;
    }
	
    /**
     * Get modulo objects
     * @return null|array
     */
    public function getModulosObjects(array $excludeModulesNames = null)
    {
        $modelModuloFormulario = new Basico_Model_ModuloFormulario();
        $arrayModulosFormulariosObjects = $modelModuloFormulario->fetchList("id_formulario = {$this->_id}");
        $modelModulo = new Basico_Model_Modulo();
        
        $arrayIdsModulos = array();
        foreach ($arrayModulosFormulariosObjects as $moduloFormularioObject){
            $arrayIdsModulos[] = $moduloFormularioObject->modulo;
        }
        
        $stringIdsModulos = implode(',', $arrayIdsModulos);
        
        for ($contador = 0; $contador <= count($excludeModulesNames)-1; $contador++)
            $excludeModulesNames[$contador] = Basico_Model_Util::retornaStringEntreCaracter($excludeModulesNames[$contador], "'"); 
        
        if ($excludeModulesNames)
            $stringExcludeModulesNames = implode(',', $excludeModulesNames);
        else
            $stringExcludeModulesNames = null;
        
        if (($stringIdsModulos) and ($stringExcludeModulesNames)) 
            $arrayObjects = $modelModulo->fetchList("id IN ({$stringIdsModulos}) and nome NOT IN ({$stringExcludeModulesNames})");
        else if ($stringIdsModulos) 
            $arrayObjects = $modelModulo->fetchList("id IN ({$stringIdsModulos})");
        else
            $arrayObjects = array();
        
        return $arrayObjects;
    }
    
    /**
     * Return if exists elementos
     * @return true|false
     */
   	public function existeElementos()
   	{
   		$modelFormularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();
        $arrayFormularioFormularioElementosObjects = $modelFormularioFormularioElemento->fetchList("id_formulario = {$this->_id}");
        
        return (count($arrayFormularioFormularioElementosObjects) > 0);
   	}
    
    /**
     * Get formularioElemento objects
     * @return null|array
     */
    public function getFormularioElementosObjects()
    {
        $modelFormularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();
        $arrayFormularioFormularioElementosObjects = $modelFormularioFormularioElemento->fetchList("id_formulario = {$this->_id}", "ordem");
        $modelFormularioElemento = new Basico_Model_FormularioElemento();
        
        $arrayIdsFormularioElementos = array();
        foreach ($arrayFormularioFormularioElementosObjects as $formularioElementoObject){
            $arrayIdsFormularioElementos[] = $formularioElementoObject->formularioElemento;
        }
        
        $arrayObjects = array();
        
        foreach ($arrayIdsFormularioElementos as $idFormularioElemento) {
        	$modelFormularioElemento = new Basico_Model_FormularioElemento();
        	$arrayObjects[] = $modelFormularioElemento->find($idFormularioElemento);
        }
        
        return $arrayObjects;
    }

    public function getTemplatesObjects()
    {
        $modelTemplateFormulario = new Basico_Model_TemplateFormulario();
        $arrayTemplatesFormularios = $modelTemplateFormulario->fetchList("id_formulario = {$this->_id}");
        $modelTemplate = new Basico_Model_Template();

        $arrayIdsTemplates = array();
        foreach($arrayTemplatesFormularios as $templateFormularioObject){
        	$arrayIdsTemplates[] = $templateFormularioObject->template;
        }
        
        $arrayObjects = array();
        
        if (count($arrayIdsTemplates)){
			$stringIdsTemplates = implode(',', $arrayIdsTemplates);
        	$arrayObjects = $modelTemplate->fetchList("id IN ({$stringIdsTemplates})");
        } 
        
        return $arrayObjects;
    }
	
	/**
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Default_Model_Formulario
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormularioMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_FormularioMapper());
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
	* @return Basico_Model_Formulario
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
