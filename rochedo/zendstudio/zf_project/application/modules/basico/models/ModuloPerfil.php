<?php
/**
 * ModuloPerfil model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ModuloPerfilMapper
 * @subpackage Model
 */
class Basico_Model_ModuloPerfil
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_ModuloPerfilMapper
     */
    protected $_mapper;

    /**
     * @var Modulo
     */
    protected $_modulo;
    
    /**
     * @var Perfil
     */
    protected $_perfil;
    
    /**
     * @var Rowinfo
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
     * @return Basico_Model_ModuloPerfil
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
    * Set modulo
    * 
    * @param int $ 
    * @return Basico_Model_Modulo
    */
    public function setModulo($modulo)
    {
        $this->_modulo = Basico_OPController_UtilOPController::retornaValorTipado($modulo, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get modulo
    * 
    * @return null|int
    */
    public function getModulo()
    {
        return $this->_modulo;
    }
 
    /**
     * Get modulo object
     * @return null|Modulo
     */
    public function getModuloObject()
    {
        $model = new Basico_Model_Modulo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_modulo);
        return $object;
    }
    
    /**
    * Set perfil
    * 
    * @param int $ 
    * @return Basico_Model_Perfil
    */
    public function setPerfil($perfil)
    {
        $this->_perfil = Basico_OPController_UtilOPController::retornaValorTipado($perfil, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get perfil
    * 
    * @return null|int
    */
    public function getPerfil()
    {
        return $this->_perfil;
    }
 
    /**
     * Get perfil object
     * @return null|Perfil
     */
    public function getPerfilObject()
    {
        $model = new Basico_Model_Perfil();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_perfil);
        return $object;
    }

    /**
    * Set entry rowinfo
    * 
    * @param  String $rowinfo 
    * @return Basico_Model_ModuloPerfil
    */
    public function setRowinfo($rowinfo)
    {
        $this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING, true);
        return $this;
    }

    /**
    * Retrieve entry Rowinfo
    * 
    * @return null|int
    */
    public function getRowinfo()
    {
        return $this->_rowinfo;
    }

    /**
    * Set entry id
    * 
    * @param  int $id 
    * @return Basico_Model_ModuloPerfil
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
    * @return Basico_Model_ModuloPerfil
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_ModuloPerfilMapper instance if no mapper registered.
    * 
    * @return Basico_Model_ModuloPerfilMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_ModuloPerfilMapper());
        }
        return $this->_mapper;
    }
}
