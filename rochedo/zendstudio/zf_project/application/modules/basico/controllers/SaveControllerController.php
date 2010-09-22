<?php
/**
 * Controlador Save
 * 
 */
require_once(APPLICATION_PATH . "/modules/basico/controllers/CVCControllerController.php");
require_once(APPLICATION_PATH . "/modules/basico/controllers/LogControllerController.php");

class Basico_SaveControllerController
{
	/**
	 * Salva e versiona um objeto atraves do controlador/modelo
	 * 
	 * O segundo parametro so deve ser diferente de null caso 
	 * Caso nao deseje salvar log, ignore os tres ultimos parametros
	 * 
	 * @param controller|object $mixed
	 * @param integer $versaoUpdate
	 * @param integer $idPessoaPerfil
	 * @param integer $idCategoriaLog
	 * @param string $mensagemLog
	 * @return true|false
	 */
	static public function save($mixed, $versaoUpdate = null, $idPessoaPerfil = null, $idCategoriaLog = null, $mensagemLog = null)
	{	
		// descobrindo se a tupla existe no banco de dados, para o CVC funcionar
		if (!Basico_Model_Util::retornaIdGenericoObjeto($mixed)) {
			if (method_exists($mixed, 'save')) {
				// salvando o objeto
				$mixed->save();
				// criando log de operacoes
				if ((isset($idPessoaPerfil)) and (isset($idCategoriaLog)) and (isset($mensagemLog)))
					Basico_LogControllerController::salvarLog($idPessoaPerfil, $idCategoriaLog, $mensagemLog);
			}
			else
				throw new Exception(MSG_ERRO_SAVE_NAO_ENCONTRADO);
		}
		
		// recuperando o numero da ultima versao
		$ultimaVersao = Basico_CVCControllerController::retornaUltimaVersao($mixed, true);
		
		// verificando se a versao para update eh diferente da ultima versao existente no repositorio CVC
		if (isset($versaoUpdate) and ($ultimaVersao !== $versaoUpdate))
			throw new Exception(MSG_ERRO_SAVE_UPDATE_VERSAO_DESATUALIZADA);

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
			if (method_exists($mixed, 'save')) {
				// salvando o objeto
				$mixed->save();
				// criando log de operacoes
				if ((isset($idPessoaPerfil)) and (isset($idCategoriaLog)) and (isset($mensagemLog)))
					Basico_LogControllerController::salvarLog($idPessoaPerfil, $idCategoriaLog, $mensagemLog);
			}
			else
				throw new Exception(MSG_ERRO_SAVE_NAO_ENCONTRADO);
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