<?php
/**
 * Controlador Save
 * 
 */
class Basico_SaveControllerController
{
	/**
	 * salva e versiona um objeto atraves do controlador/modelo
	 * @param controller|object $mixed
	 */
	static public function save($mixed)
	{
		// recuperando o numero da ultima versao
		$ultimaVersao = Basico_Model_CVC::retornaUltimaVersao($mixed, true);
		
		// verificando se o objeto deve ser versionado ou ter sua ultima versao atualizada apenas
		if (false !== self::isInatualizarVersaoList($mixed)) {
			// versionando objeto
			$versaoVersionamento = Basico_Model_CVC::versionar($mixed);
		}
		else {
			// atualizando o objeto
			$versaoVersionamento = Basico_Model_CVC::atualizaVersao($mixed);
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
	
	static private function isInatualizarVersaoList($mixed)
	{
		// inicializando array contendo o nome das tabelas que devem atualizar a versao apenas
		$arrayAtualizarList = array();
		
		// retornando resultado da pesquisa da tabela relacionada ao objeto dentro do array de tabelas que devem atualizar a versao apenas
		return (false !== array_search(Basico_Model_Util::retornaTableNameObjeto($mixed), $arrayAtualizarList));
	}
}