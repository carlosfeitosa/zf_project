<?php
/**
 * Controlador Pessoa.
 * 
 * Responsavel pelas pessoas do sistema.
 * 
 * @author João Henrique M.Bione (joao.henrique.bione@rochedoproject.com)
 * 
 * @uses Basico_Model_Pessoa
 *
 * @since 22/03/2011
 * 
 */
class Basico_OPController_PessoaOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do controlador Basico_OPController_PessoaOPController.
	 * @var Basico_OPController_PessoaOPController
	 */
	private static $_singleton;
	/**
	 * Instância do modelo Basico_Model_Pessoa
	 * @var Basico_Model_Pessoa
	 */
	protected $_model;

	/**
	 * Nome da tabela pessoa
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.pessoa';

	/**
	 * Nome do campo id da tabela pessoa
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Pessoa.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializacao do controlador Basico_OPController_PessoaOPController
	 * 
	 * @return void
	 */
	protected function _init()
	{
		// chamando inicializacao da classe pai
		parent::_init();
		
		return;
	}

	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador Pessoa.
	 * 
	 * @return Basico_OPController_PessoaOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_PessoaOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna a lingua usuario
	 * 
	 * @return String
	 */
	public static function retornaLinguaUsuario()
	{
		// retornando a lingua padrao do usuario
		return Basico_OPController_UtilOPController::retornaValorSessao(DEFAULT_USER_LANGUAGE);
	}
	
	/**
	 * Seta a lingua do ususario
	 * 
	 * @param String $lingua
	 * 
	 * @return True
	 */
	public static function setaLinguaUsuario($lingua)
	{
		// setando a lingua padra
		return Basico_OPController_UtilOPController::registraValorSessao(DEFAULT_USER_LANGUAGE, $lingua);
	}

	/**
	 * Retorna o id da pessoa master (sistema)
	 * 
	 * @deprecated
	 * 
	 * @return Integer
	 */
	public function retornaIdPessoaSistema()
	{
		// recuperando informacoes sobre o rowinfo master
		$rowinfoMaster = ROWINFO_SYSTEM_STARTUP_MASTER;
		// recuperando o objeto pessoa
		$objsPessoaSistema = $this->_retornaObjetosPorParametros("rowinfo = '{$rowinfoMaster}'", null, 1, 0);

		// verificando se o objeto foi carregado
		if (isset($objsPessoaSistema[0]))
			return $objsPessoaSistema[0]->id;

		return null;
	}

	/**
	 * Retorna o id da pessoa master (sistema), via SQL
	 * 
	 * @return Integer
	 */
	public static function retornaIdPessoaSistemaViaSQL()
	{
		// recuperando informacoes sobre o perfil do sistema	
		$idPerfilSistema = Basico_OPController_PerfilOPController::retornaIdPerfilPorNomeViaSQL('SISTEMA');

		// recuperando informacoes sobre a tabela pessoa
		$arrayNomeCampoNome = array(self::nomeCampoIdModelo);
		$condicaoSQL        = "id_perfil_default = '{$idPerfilSistema}'";

		// recuperando um array contendo os nomes dos perfis relacionados a uma categoria
		$arrayPessoa = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayNomeCampoNome, $condicaoSQL);

		// verificando se a consulta obteve resultados
		if ((isset($arrayPessoa)) and (is_array($arrayPessoa)) and (count($arrayPessoa) > 0)) {
			// retornando o id da categoria
			return (int) $arrayPessoa[0][self::nomeCampoIdModelo];
		}

		return null;
	}

	/**
	 * Retorna se conseguiu salvar o id do perfil padrao do usuario na sessao
	 * 
	 * @param Integer $idPerfilPadrao
	 * 
	 * @return Boolean
	 */
	public static function registraIdPerfilPadraoUsuarioSessao($idPerfilPadrao)
	{
		// inicializando variaveis
		$sessionIdPerfilPadraoUsuarioAttribute = PERFIL_ID_PERFIL_PADRAO_KEY;

		// registrando/recuperando o namespace do token na sessao
        $session = Basico_OPController_SessionOPController::registraSessaoUsuario();

		// verificando se o id do usuario sessao
		if ((!isset($session->$sessionIdPerfilPadraoUsuarioAttribute)) or ($session->$sessionIdPerfilPadraoUsuarioAttribute !== $idPerfilPadrao)) {
        	// setando o id do usuario na sessao
        	$session->$sessionIdPerfilPadraoUsuarioAttribute = $idPerfilPadrao;

        	return true;
		}

		return false;
	}

	/**
	 * Retorna o id do perfil padrao do usuario salvo na sessao
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdPerfilPadraoUsuarioSessao()
	{
		// inicializando variaveis
		$sessionIdPerfilPadraoUsuarioAttribute = PERFIL_ID_PERFIL_PADRAO_KEY;

		// recupernado a sessao do usuario
		$session = Basico_OPController_SessionOPController::registraSessaoUsuario();
	
		// verificando se o id do usuario sessao
		if (isset($session->$sessionIdPerfilPadraoUsuarioAttribute)) {
			// retornando o id do perfil padrao do usuario salvo na sessao
			return $session->$sessionIdPerfilPadraoUsuarioAttribute;
		}

		return null;
	}

	/**
	 * Retorna o id do perfil padrao vinculado ao id de uma pessoa
	 * 
	 * @param Integer $idPessoa
	 * 
	 * @return Integer|null
	 */
	public function retornaIdPerfilPadraoPorIdPessoa($idPessoa)
	{
		// retornando o id do perfil padrao da pessoa
		return $this->_retornaObjetosPorParametros("id = {$idPessoa}")->idPerfilDefault;
	}

	/**
	 * Retorna a versao do objeto pessoa, a partir do id de uma pessoa
	 * 
	 * @param Integer $idPessoa
	 * @param Boolean $forceVersioning
	 * 
	 * @return Integer
	 */
	public function retornaVersaoObjetoPessoaPorIdPessoa($idPessoa, $forceVersioning = false)
	{
		// recuperando objeto pessoa
		$object = $this->_retornaObjetosPorParametros("id = {$idPessoa}");

		// retornando a versao do objeto
		return Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($object, $forceVersioning);
	}

	/**
	 * Atualiza o perfil padrao de uma pessoa
	 * 
	 * @param Integer $idPessoa
	 * @param Integer $idPerfilPadrao
	 * @param Integer $versaoObjetoPessoa
	 * 
	 * @return Boolean
	 */
	public function atualizaPerfilPadraoPessoa($idPessoa, $idPerfilPadrao, $versaoObjetoPessoa)
	{
		// recuperando o objeto pessoa
		$object = $this->_retornaObjetosPorParametros("id = {$idPessoa}");

		// verificando se o objeto foi carregado
		if ((is_object($object)) and ($object->id)) {
			// mudando atributo perfilPadrao
			$object->idPerfilDefault = $idPerfilPadrao;

			// recuperando o id pessoa perfil usuario validado da pessoa
			$idPessoaPerfilUsuarioValidado = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoa);

			// retornando o resultado do método de salvar o objeto
			return parent::_salvarObjeto($object, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVA_PESSOA, true), LOG_MSG_NOVA_PESSOA, $versaoObjetoPessoa, $idPessoaPerfilUsuarioValidado);
		}

		return false;
	}

	/**
	 * Atualiza o perfil padrao de uma pessoa, via arrayPost do formulario CadastrarDadosUsuarioConta
	 * 
	 * @param Integer $idPessoa
	 * @param Array $arrayPost
	 * 
	 * @return Boolean
	 */
	public function atualizaPerfilPadraoPessoaViaFormCadastrarDadosUsuarioConta($idPessoa, $arrayPost)
	{
    	// recuperando dados do post
    	$idPerfilPadrao     = Basico_OPController_UtilOPController::retornaValorTipado($arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaPerfisVinculadosDisponiveis'], TIPO_INTEIRO, true);
    	$versaoObjetoPessoa = Basico_OPController_UtilOPController::retornaValorTipado($arrayPost['CadastrarDadosUsuarioConta']['versaoObjetoPessoa'], TIPO_INTEIRO, true);

    	// retornando o resultado do metodo atualizaPerfilPadraoPessoa
    	return $this->atualizaPerfilPadraoPessoa($idPessoa, $idPerfilPadrao, $versaoObjetoPessoa);
	}
	
	/**
	 * Cria uma nova pessoa e retorna o id
	 * 
	 * @return Integer
	 */
	public function retornaIdNovoObjetoPessoa()
	{
		// criando uma nova pessoa
		$novaPessoa = $this->_retornaNovoObjetoModelo();
        // salvando o novo objeto pessoa
        parent::_salvarObjeto($novaPessoa, Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL(LOG_NOVA_PESSOA), LOG_MSG_NOVA_PESSOA);
        
        return $novaPessoa->id;
	} 
}