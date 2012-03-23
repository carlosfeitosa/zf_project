<?php
/**
 * CategoriaAssocChaveEstrangeira model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CategoriaAssocChaveEstrangeiraMapper
 * @subpackage Model
 */
class Basico_Model_CategoriaAssocChaveEstrangeira extends Basico_AbstractModel_RochedoPersistentModeloGenerico implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var int
	 */
	protected $_idModulo;
    /**
     * 
     * @var int
     */
	protected $_idCategoria;
	/**
	 * @var String
	 */
	protected $_tabelaEstrangeira;
	/**
	 * @var String
	 */
	protected $_campoEstrangeiro;
	
	/**
	 * Set idModulo
	 * @param int $idModulo
	 * @return Basico_Model_CategoriaAssocChaveEstrangeira
	 */
	public function setIdModulo($idModulo)
	{
	   	$this->_idModulo = Basico_OPController_UtilOPController::retornaValorTipado($idModulo,TIPO_INTEIRO,true);
		return $this;
	}
	
	/**
	 * Get idModulo
	 * @return null|int
	 */
	public function getIdModulo()
	{
		return $this->_idModulo;
	}
	
	/**
     * Get modulo object
     * @return null|Basico_Model_Modulo
     */
    public function getModuloObject()
    {
        $model = new Basico_Model_Modulo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idModulo);
        return $object;
    }
	
	/**
	 * Set idCategoria
	 * @param int $idCategoria
	 * @return Basico_Model_CategoriaAssocChaveEstrangeira
	 */
	public function setIdCategoria($idCategoria)
	{
	   	$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria,TIPO_INTEIRO,true);
		return $this;
	}
	
	/**
	 * Get idCategoria
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
	* Set tabelaEstrangeira
	* 
	* @param String $tabela_estrangeira 
	* @return Basico_Model_CategoriaAssocChaveEstrangeira
	*/
	public function setTabelaEstrangeira($tabelaEstrangeira)
	{
		$this->_tabelaEstrangeira = Basico_OPController_UtilOPController::retornaValorTipado($tabelaEstrangeira,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get tabelaEstrangeira
	* 
	* @return null|String
	*/
	public function getTabelaEstrangeira()
	{
		return $this->_tabelaEstrangeira;
	}
     
	/**
	* Set campoEstrangeiro
	* 
	* @param String $campoEstrangeiro 
	* @return Basico_Model_CategoriaAssocChaveEstrangeira
	*/
	public function setCampoEstrangeiro($campoEstrangeiro)
	{
		$this->_campoEstrangeiro = Basico_OPController_UtilOPController::retornaValorTipado($campoEstrangeiro,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get campoEstrangeiro
	* 
	* @return null|String
	*/
	public function getCampoEstrangeiro()
	{
		return $this->_campoEstrangeiro;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_CategoriaAssocChaveEstrangeiraMapper instance if no mapper registered.
	* 
	* @return Basico_Model_CategoriaAssocChaveEstrangeiraMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_CategoriaAssocChaveEstrangeiraMapper);
	}
}
