<?php
/**
 * 
 * Esta classe tem por objetivo, centralizar os atributos comuns aos modelos que persistem dados.
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 *
 */
abstract class Basico_AbstractModel_RochedoPersistentModeloDados extends Basico_AbstractModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var Date
	 */
	protected $_datahoraUltimaAtualizacao;
	
	/**
	* Set datahoraUltimaAtualizacao
	* 
	* @param String $datahoraUltimaAtualizacao 
	* @return Model
	*/
	public function setDatahoraUltimaAtualizacao($datahoraUltimaAtualizacao)
	{
		$this->_datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaAtualizacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraUltimaAtulizacao
	* 
	* @return null|String
	*/
	public function getDatahoraUltimaAtualizacao()
	{
		return $this->_datahoraUltimaAtualizacao;
	}	
}