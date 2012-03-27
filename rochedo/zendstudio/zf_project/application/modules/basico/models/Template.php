<?php
/**
 * Template model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_TemplateMapper
 * @subpackage Model
 */
class Basico_Model_Template extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var Integer
	 */
	protected $_idCategoria;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_constanteTextual;
	/**
	 * @var String
	 */
	protected $_constanteTextualDescricao;
	/**
	 * @var String
	 */
	protected $_template;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var String
	 */
	protected $_fullFileName;

    /**
	* Set idCategoria
	* 
	* @param Integer $idCategoria 
	* 
	* @return Basico_Model_Categoria
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idCategoria
	* 
	* @return null|Int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
	
    /**
     * Get Categoria object
     * 
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        return $object;
    }	
	
	/**
	* Set nome
	* 
	* @param String $nome
	*  
	* @return Basico_Model_Template
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
	* Set constanteTextual
	* 
	* @param String $constanteTextual
	* 
	* @return Basico_Model_Template
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constanteTextual;
	}
	
	/**
	* Set constanteTextualDescricao
	* 
	* @param String $constanteTextualDescricao
	*  
	* @return Basico_Model_Template
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualDescricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}
     
	/**
	* Set template
	* 
	* @param String $template
	*  
	* @return Default_Model_Template
	*/
	public function setTemplate($template)
	{
		$this->_template = Basico_OPController_UtilOPController::retornaValorTipado($template, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get template
	* 
	* @return null|String
	*/
	public function getTemplate()
	{
		return $this->_template;
	}
	
	/**
	* Set ativo
	* 
	* @param Bool $ativo
	*  
	* @return Basico_Model_Template
	*/
	
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|Bool
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}
    
	/**
	* Set fullFileName
	* 
	* @param String $fullFileName
	*  
	* @return Basico_Model_Template
	*/
    public function setFullFileName($fullFileName)
	{
		$this->_fullFileName = Basico_OPController_UtilOPController::retornaValorTipado($fullFileName, TIPO_STRING, true);
		return $this;
	}
	
	/**
	* Get fullFileName
	* 
	* @return null|String
	*/
	public function getFullFileName()
	{
		return $this->_fullFileName;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_TemplateMapper instance if no mapper registered.
	* 
	* @return Basico_Model_TemplateMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_TemplateMapper');
	}
}