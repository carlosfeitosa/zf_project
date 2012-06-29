<?php
/**
 * FormDecoratorGrupo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormDecoratorGrupoMapper
 * @subpackage Model
 */

class Basico_Model_FormularioDecoratorGrupo extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
     * @var Int
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
	 * @var Boolean
	 */
	protected $_ativo;
	
	/**
	* Set id categoria
	* 
	* @param int $idCategoria 
	* @return Basico_Model_FormularioDecoratorGrupo
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
	* Set nome
	* 
	* @param String $nome
	* 
	* @return Basico_Model_FormDecoratorGrupo
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
		if ($this->_nome)
			return $this->_nome;
		else
			return null;
	}
 	
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual
	*  
	* @return Basico_Model_FormDecoratorGrupo
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constanteTextual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		if ($this->_constanteTextual)
			return $this->_constanteTextual;
		else
			return null;
	}
     
	/**
	* Set constanteTextualDescricao
	* 
	* @param String $constanteTextualDescricao 
	* 
	* @return Basico_Model_FormDecoratorGrupo
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constanteTextualDescricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		if ($this->_constanteTextualDescricao)
			return $this->_constanteTextualDescricao;
		else
			return null;
	}
         
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* 
	* @return Basico_Model_FormDecoratorGrupo
	*/
	public function setAtivo($ativo)
	{		
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo,TIPO_BOOLEAN,true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|Boolean
	*/
	public function getAtivo()
	{
		if (strlen($this->_ativo))
			return $this->_ativo;
		else
			return null;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormDecoratorGrupoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormDecoratorGrupoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_FormularioDecoratorGrupoMapper');
	}	
}