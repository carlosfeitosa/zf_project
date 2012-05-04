<?php

/**
 * Controlador DB Open
 * 
 * Controla a abertura de objetos do sistema
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 01/08/2011
 * 
 */

class Basico_OPController_DBOpenOPController
{
	/**
	 * Verifica se o checksum de objeto esta correto
	 * 
	 * @param Object $objeto
	 * @param Boolean $estouraExcessao
	 * 
	 * @return Boolean
	 */
	private static function verificaChecksumObjeto($objeto, $estouraExcessao = false)
	{
		// verificando se foi passado um objeto como parametro
		Basico_OPController_UtilOPController::verificaVariavelRepresentaObjeto($objeto, true, true);

		// gerando o checksum do objeto
		$checksumObjeto = Basico_OPController_UtilOPController::retornaChecksumObjeto($objeto);
		// recupando o checksum do objeto gravado no CVC
		$checksumObjetoCVC = Basico_OPController_PersistenceOPController::bdRetornaChecksumObjetoViaCVC($objeto);

		// verificando se os checksums sao iguais
		if ($checksumObjeto !== $checksumObjetoCVC) {
			// verificando se eh preciso estourar uma excessao
			if ($estouraExcessao) {
				// estourando excessao
				throw new Exception(MSG_ERRO_DATABASE_CHECKSUM_INVALIDO);
			}

			// retornando fracasso
			return false;
		}

		// retornado sucesso
		return true;
	}

	/**
	 * Localiza uma tupla atraves do ID
	 * 
	 * @param Object $model
	 * @param Integer $id
	 * 
	 * @return Object|null
	 */
	public static function find($model, $id)
	{
		// verificando se foi passado um objeto como parametro
		Basico_OPController_UtilOPController::verificaVariavelRepresentaObjeto($model, false, true);

		// verificando se foi passado o id do objeto que se deseja localizar
		if ((is_int($id)) and ($id > 0)) {
			// verificando se o mapper foi recuperado
			if ($model->getMapper()) {
				// verificando se o mapper possui o metodo find
				if (method_exists($model->getMapper(), 'find')) {
					// instanciando o objeto
					$objeto = $model;
					// recuperando o resultado do metodo find do mapper do objeto
					$objeto->getMapper()->find($id, $objeto);

					// verificando se o objeto foi recuperado
					if ($objeto) {
						// verificando eh preciso verificar o checksum do objeto
						if (APPLICATION_DATABASE_CHECK_CHECKSUM) {
							// verificando checksum
							self::verificaChecksumObjeto($objeto, true);
						}
					}

					// retornando o objeto
					return $objeto;

				} else { // metodo find nao encontrado
					// estourando excessao por encontrar o find no mapper do objeto
					throw new Exception(MSG_ERRO_FIND_METODO_NAO_ENCONTRADO);
				}
				
			} else { // mapper nao encontrado
				// estourando excecao por nao encontrar o mapper do objeto
				throw new Exception(MSG_ERRO_MAPPER_NAO_ENCONTRADO);
			}
			
		} else { // nao foi passado o ID ou o id eh menor que zero
			return null;
		}
	}

	/**
	 * Recupera array com todos os objetos de um determinado modelo
	 * 
	 * @param Object $model
	 * 
	 * @return Array|null
	 */
	public static function fetchAll($model)
	{
		// verificando se foi passado um objeto como parametro
		Basico_OPController_UtilOPController::verificaVariavelRepresentaObjeto($model, false, true);

		// verificando se o mapper foi recuperado
		if ($model->getMapper()) {
			// verificando se o mapper possui o metodo find
			if (method_exists($model->getMapper(), 'fetchAll')) {
				// recuperando o resultado do metodo find do mapper do objeto
				$arrayObjetos = $model->getMapper()->fetchAll();

				// verificando se os objetos foram recuperados
				if ((is_array($arrayObjetos)) and (count($arrayObjetos) > 0)) {
					// verificando eh preciso verificar o checksum do objeto
					if (APPLICATION_DATABASE_CHECK_CHECKSUM) {
						// loop para verificar os checksums
						foreach ($arrayObjetos as $objeto) {
							// verificando checksum
							self::verificaChecksumObjeto($objeto, true);
						}
					}
				}

				// retornando array de objetos
				return $arrayObjetos;

			} else { // metodo find nao encontrado
				// estourando excessao por encontrar o find no mapper do objeto
				throw new Exception(MSG_ERRO_FETCHALL_METODO_NAO_ENCONTRADO);
			}

		} else { // mapper nao encontrado
			// estourando excecao por nao encontrar o mapper do objeto
			throw new Exception(MSG_ERRO_MAPPER_NAO_ENCONTRADO);
		}
	}

	/**
	 * Recupera array com todos os objetos de um determinado modelo, seguindo as condicoes passadas por parametro
	 * 
	 * @param Object $model
	 * @param String $where
	 * @param String $order
	 * @param Integer $count
	 * @param String $offset
	 * 
	 * @return Array|null
	 */
	public static function fetchList($model, $where=null, $order=null, $count=null, $offset=null)
	{
		// verificando se foi passado um objeto como parametro
		Basico_OPController_UtilOPController::verificaVariavelRepresentaObjeto($model, false, true);

		// verificando se o mapper foi recuperado
		if ($model->getMapper()) {
			// verificando se o mapper possui o metodo find
			if (method_exists($model->getMapper(), 'fetchList')) {
				// recuperando o resultado do metodo find do mapper do objeto
				$arrayObjetos = $model->getMapper()->fetchList($where, $order, $count, $offset);

				// verificando se os objetos foram recuperados
				if ((is_array($arrayObjetos)) and (count($arrayObjetos) > 0)) {
					// verificando eh preciso verificar o checksum do objeto
					if (APPLICATION_DATABASE_CHECK_CHECKSUM) {
						// loop para verificar os checksums
						foreach ($arrayObjetos as $objeto) {
							// verificando checksum
							self::verificaChecksumObjeto($objeto, true);
						}
					}
				}

				// retornando array de objetos
				return $arrayObjetos;

			} else { // metodo find nao encontrado
				// estourando excessao por encontrar o find no mapper do objeto
				throw new Exception(MSG_ERRO_FETCHLIST_METODO_NAO_ENCONTRADO);
			}

		} else { // mapper nao encontrado
			// estourando excecao por nao encontrar o mapper do objeto
			throw new Exception(MSG_ERRO_MAPPER_NAO_ENCONTRADO);
		}
	}
}