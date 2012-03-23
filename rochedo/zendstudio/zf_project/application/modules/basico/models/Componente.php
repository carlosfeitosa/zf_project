<?php
/**
 * Componente model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ComponenteMapper
 * @subpackage Model
 */
class Basico_Model_Componente extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * Referencia a classe Basico_Model_Categoria
     * @var Integer
     */
    protected $_idCategoria;
    /**
     * Referencia a classe Basico_Model_Template
     * @var Integer
     */
    protected $_idTemplate;
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
	protected $_componente;
	/**
	 * @var Boolean
	 */
	protected $_ativo;

	/**
	* Set id categoria
	* 
	* @param int $idCategoria 
	* @return Basico_Model_Componente
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id categoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
 
    /**
     * Get categoria object
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        return $object;
    }

	/**
	* Set id template
	* 
	* @param int $idTemplate
	* @return Basico_Model_Componente
	*/
	public function setIdTemplate($idTemplate)
	{
		$this->_idTemplate = Basico_OPController_UtilOPController::retornaValorTipado($idTemplate, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id template
	* 
	* @return null|int
	*/
	public function getIdTemplate()
	{
		return $this->_idTemplate;
	}
 
    /**
     * Get template object
     * 
     * @return null|Basico_Model_Template
     */
    public function getTemplateObject()
    {
        $model = new Basico_Model_Template();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idTemplate);
        return $object;
    }

	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_Componente
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome,TIPO_STRING,true);
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
	* Set constante textual
	* 
	* @param String $constanteTextual
	* @return Basico_Model_Componente
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constante textual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constanteTextual;
	}
     
	/**
	* Set constante textual descricao
	* 
	* @param String $constanteTextualDescricao 
	* @return Basico_Model_Componente
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constante textual descricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}

	/**
	* Set componente
	* 
	* @param String $componente 
	* @return Basico_Model_Componente
	*/
	public function setComponente($componente)
	{
		$this->_componente = Basico_OPController_UtilOPController::retornaValorTipado($componente,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get componente
	* 
	* @return null|String
	*/
	public function getComponente()
	{
		return $this->_componente;
	}

	/**
	* Set ativo
	* 
	* @param Boolean $ativo
	* @return Basico_Model_Componente
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|String
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_ComponenteMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ComponenteMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_ComponenteMapper);
	}
}
