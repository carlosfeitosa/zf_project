<?php
/**
 * Controlador CVC
 * 
 */

require_once("RowinfoControllerController.php");

class Basico_CVCControllerController
{
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
		$idGenerico = Basico_PersistenceControllerController::bdRetornaValorIdGenericoObjeto($objeto);
		
		// verificando se o valor de id generico existe
		if (!$idGenerico) {
			return null;
		}
		else 
		{
			// recuperando a relacao categoria chave estrangeira
			$categoriaChaveEstrangeira = Basico_PersistenceControllerController::bdRetornaCategoriaChaveEstrangeira($objeto, true);

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
     * versiona um objeto.
     * retorna o numero da versão
     * @param objeto $objeto
     * 
     * @return integer
     */
    public static function versionar($objeto)
    {
    	// instanciando o modelo de CVC
    	$modelCVC = new Basico_Model_CVC();
    	
    	// recuperando relacao categoria chave estrangeira
    	$relacaoCategoriaChaveEstrangeira = Basico_PersistenceControllerController::bdRetornaCategoriaChaveEstrangeira($objeto, true);
    	
    	// preenchendo informacoes sobre o versionamento
    	$modelCVC->categoriaChaveEstrangeira = $relacaoCategoriaChaveEstrangeira->id;
    	$modelCVC->idGenerico = Basico_PersistenceControllerController::bdRetornaValorIdGenericoObjeto($objeto);
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
    
    /**
     * atualiza a versão de um objeto ja versionado
     * retorna o numero da versão
     * 
     * @param object $objeto
     * 
     * @return integer
     */
    public static function atualizaVersao($objeto)
    {
    	// recuperando id da relacao de categoria chave estrangeira
    	$categoriaChaveEstrangeira = self::retornaCategoriaChaveEstrangeira($objeto);
    	// recuperando id generico do objeto
    	$idGenerico = Basico_UtilControllerController::retornaIdGenericoObjeto($objeto);
    	
    	// recuperando objeto CVC contendo a ultima versao do objeto
    	$objUltimaVersao = self::retornaObjUltimaVersao($categoriaChaveEstrangeira->id, $idGenerico);
    	
    	// atualizando a versao
    	$objUltimaVersao->versao++;
    	$objUltimaVersao->ultimaAtualizacao = Basico_UtilControllerController::retornaDateTimeAtual();
    	$objUltimaVersao->objeto = $objeto;
    	    	
    	$objUltimaVersao->save();
    	
    	return $objUltimaVersao->versao;
    }
    
    /**
     * Fecha a versao de uma tupla 
     */
    private function fechaValidadeVersao()
    {
    	$this->setValidadeTermino(Basico_UtilControllerController::retornaDateTimeAtual());
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
    	$objetoCodificado = Basico_UtilControllerController::codificar($objeto);
    	// recuperando id da relacao de categoria chave estrangeira
    	$categoriaChaveEstrangeira = Basico_PersistenceControllerController::bdRetornaCategoriaChaveEstrangeira($objeto);
    	// recuperando id generico do objeto
    	$idGenerico = Basico_PersistenceControllerController::bdRetornaValorIdGenericoObjeto($objeto);
    	
    	// recuperando objeto CVC contendo a ultima versao do objeto
    	$objUltimaVersao = self::retornaObjUltimaVersao($categoriaChaveEstrangeira->id, $idGenerico);

    	return (strcmp($objetoCodificado, $objUltimaVersao->objeto) === 0);
    } 
    
}