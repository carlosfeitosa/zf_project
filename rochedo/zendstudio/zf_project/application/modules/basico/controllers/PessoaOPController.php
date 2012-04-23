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
	 * Instância do Controlador Pessoa
	 * @var Basico_OPController_PessoaOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo Pessoa.
	 * @var Basico_Model_Pessoa
	 */
	private $_model;
	
	/**
	 * Construtor do Controlador Pessoa.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializacao do controlador Basico_OPController_PessoaOPController
	 * 
	 * @return void
	 */
	protected function init()
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
	 * Salva o objeto pessoa no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Pessoa $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Pessoa', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_PESSOA, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_PESSOA;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVA_PESSOA, true);
	    		$mensagemLog    = LOG_MSG_NOVA_PESSOA;
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}
	
     /**
	 * Apaga o objeto pessoa do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Pessoa $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Pessoa', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_PESSOA, true);
	    	$mensagemLog    = LOG_MSG_DELETE_PESSOA;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
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
		$objsPessoaSistema = $this->retornaObjetosPorParametros($this->_model, "rowinfo = '{$rowinfoMaster}'", null, 1, 0);

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
		return $this->retornaObjetoPorId($this->_model, $idPessoa)->idPerfilDefault;
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
		$object = $this->retornaObjetoPorId($this->_model, $idPessoa);

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
		$object = $this->retornaObjetoPorId($this->_model, $idPessoa);

		// verificando se o objeto foi carregado
		if ($object->id) {
			// mudando atributo perfilPadrao
			$object->idPerfilDefault = $idPerfilPadrao;

			// recuperando o id pessoa perfil usuario validado da pessoa
			$idPessoaPerfilUsuarioValidado = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoa);

			// salvando o objeto
			$this->salvarObjeto($object, $versaoObjetoPessoa, $idPessoaPerfilUsuarioValidado);

			return true;
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
		$novaPessoa = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));
        // salvando o novo objeto pessoa
        $this->salvarObjeto($novaPessoa);
        
        return $novaPessoa->id;
	} 
}