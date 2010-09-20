<?php
/**
 * Controlador Save
 * 
 */
require_once(APPLICATION_PATH . "/modules/basico/controllers/CVCControllerController.php");

class Basico_SaveControllerController
{
	/**
	 * salva e versiona um objeto atraves do controlador/modelo
	 * @param controller|object $mixed
	 */
	static public function save($mixed)
	{
		// descobrindo se a tupla existe no banco de dados, para o CVC funcionar
		if (!Basico_Model_Util::retornaIdGenericoObjeto($mixed));
			$mixed->save();
		
		// recuperando o numero da ultima versao
		$ultimaVersao = Basico_CVCControllerController::retornaUltimaVersao($mixed, true);

		// verificando se o objeto deve ser versionado ou ter sua ultima versao atualizada apenas
		if (self::isInAtualizarVersaoList($mixed)) {
			// atualizando o objeto
			$versaoVersionamento = Basico_CVCControllerController::atualizaVersao($mixed);			
		}
		else {
			// versionando objeto
			$versaoVersionamento = Basico_CVCControllerController::versionar($mixed);
		}
		
		// verificando se houve atualizacao da versao
		if ($ultimaVersao !== $versaoVersionamento) {
			$mixed->save();
			return true;
		}
		else {
			return false;
		}
	}
	
	static private function isInAtualizarVersaoList($mixed)
	{
		// inicializando array contendo o nome das tabelas que devem atualizar a versao apenas
		$arrayAtualizarList = array();
		
		// retornando resultado da pesquisa da tabela relacionada ao objeto dentro do array de tabelas que devem atualizar a versao apenas
		$resultadoArraySearch = array_search(Basico_Model_Util::retornaTableNameObjeto($mixed), $arrayAtualizarList);
		return (false !== array_search(Basico_Model_Util::retornaTableNameObjeto($mixed), $arrayAtualizarList));
	}
}