<?php
/**
 * LocalizacaoAssocMunicipio model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_LocalizacaoAssocMunicipioMapper
 * @subpackage Model
 */
class Basico_Model_LocalizacaoAssocMunicipio extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var String
	 */
	protected $_nome;
    /**
     * @var Integer
     */
    protected $_estado;

    /**
     * @var Integer
     */
    protected $_idCategoria;
    
	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_Nome
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
	* Set estado
	* 
	* @param int $estado 
	* @return Basico_Model_Estado
	*/
	public function setEstado($estado)
	{
		$this->_estado = Basico_OPController_UtilOPController::retornaValorTipado($estado, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get estado
	* 
	* @return null|int
	*/
	public function getEstado()
	{
		return $this->_estado;
	}
 
    /**
     * Get estado object
     * @return null|Estado
     */
    public function getEstadoObject()
    {
        $model = new Basico_Model_LocalizacaoAssocEstado();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_estado);
        return $object;
    }
    
	/**
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_Categoria
	*/
	public function setCategoria($categoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get categoria
	* 
	* @return null|int
	*/
	public function getCategoria()
	{
		return $this->_idCategoria;
	}
 
    /**
     * Get categoria object
     * @return null|Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        return $object;
    }

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_LocalizacaoAssocMunicipioMapper instance if no mapper registered.
	* 
	* @return Basico_Model_LocalizacaoAssocMunicipioMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_LocalizacaoAssocMunicipioMapper());
		}
		return $this->_mapper;
	}
}