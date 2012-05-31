<?php
/**
 * Controlador PessoaPerfil
 * 
 * Controlador responsavel pela PessoaPerfil
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_PessoaAssocclPerfilOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador PessoaPerfil
	 * @var Basico_OPController_PessoasPerfisOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo PessoaPerfil
	 * @var Basico_Model_PessoasPerfis
	 */
	protected $_model;
	
	/**
	 * Nome da tabela pessoas perfis
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_pessoa.assoccl_perfil';

	/**
	 * Nome do campo id da tabela pessoas perfis
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do controlador PessoaPerfil
	 * @return Basico_Model_PessoasPerfis
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_PessoasPerfisOPController
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
	 * Retorna instância do Controlador PessoaPerfil
	 * 
	 * @return Basico_OPController_PessoasPerfisOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_PessoaAssocclPerfilOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
    /**
     * Retorna o objeto da PessoaPefil do sistema.
     * 
     * @return Basico_Model_PessoasPerfis
     */
	public function retornaObjetoPessoaPerfilSistema()
	{
		// instanciando modelos
		$perfilOPController = Basico_OPController_PerfilOPController::getInstance();
		$pessoaOPController = Basico_OPController_PessoaOPController::getInstance();
		
	    // recuperando o perfil do sistema
	    $applicationSystemPerfil = APPLICATION_SYSTEM_PERFIL;
	   
		// recuperando informacoes do sistema
        $objPerfilSistema = $perfilOPController->retornaObjetoPerfilPorNome($applicationSystemPerfil);
        $idPessoaSistema  = $pessoaOPController->retornaIdPessoaSistema();
        
        // verificando se o objeto perfil do sistema foi recuperao/existe
        if (count($objPerfilSistema) === 0)
	        throw new Exception(MSG_ERROR_PERFIL_SISTEMA_NAO_ENCONTRADO);

	    // recuperando o objeto pessoa perfil do sistema
        $objPessoaPerfilSistema = $this->_retornaObjetosPorParametros("id_perfil = {$objPerfilSistema->id} and id_pessoa = {$idPessoaSistema}", null, 1, 0);
        
        // verificando se o objeto pessoa perfil do sistema foi recuperado/existe
        if (!$objPessoaPerfilSistema[0]->id)
            throw new Exception(MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO);

        // retornando o id do objeto pessoa perfil do sistema
        return $objPessoaPerfilSistema[0];
	}

    /**
     * Retorna o id da PessoaPefil do sistema.
     * 
     * @deprecated Para maior performance, utilize retornaIdPessoaPerfilSistemaViaSQL()
     * 
     * @return Int
     */
	public function retornaIdPessoaPerfilSistema()
	{
		// recuperando objeto pessoa perfil sistema
		$objPessoaPerfilSistema = $this->retornaObjetoPessoaPerfilSistema();

		// verificando se o objeto foi carregado
		if (isset($objPessoaPerfilSistema))
			// retornando o id de pessoa perfil
			return $objPessoaPerfilSistema->id;

		return null;
	}

    /**
     * Retorna o id da PessoaPefil do sistema, via SQL.
     * 
     * @return Int
     */
	public static function retornaIdPessoaPerfilSistemaViaSQL()
	{
		// recuperando o id do perfil sistema
		$idPerfilSistema = Basico_OPController_PerfilOPController::retornaIdPerfilPorNomeViaSQL(APPLICATION_SYSTEM_PERFIL);
		$idPessoaSistema = Basico_OPController_PessoaOPController::retornaIdPessoaSistemaViaSQL();

		 // verificando se id do perfil do sistema foi recuperao/existe
        if (!isset($idPerfilSistema))
	        throw new Exception(MSG_ERROR_PERFIL_SISTEMA_NAO_ENCONTRADO);

	    // recuperando informacoes sobre a tabela pessoas perfis
	    $arrayNomeCampoIdPessoaPerfilSistema = array(self::nomeCampoIdModelo);
		$condicaoSQL                         = "id_perfil = {$idPerfilSistema} and id_pessoa = {$idPessoaSistema}";

		// recuperando informacoes sobre o id da pessoa perfil sistema, via SQL
		$arrayIdPessoaPerfilSistema = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayNomeCampoIdPessoaPerfilSistema, $condicaoSQL);

		// verificando o resultado da recuperacao
		if (count($arrayIdPessoaPerfilSistema) > 0) {
			// retornando o id da pessoa perfil do usuario sistema
			return (int) $arrayIdPessoaPerfilSistema[0][self::nomeCampoIdModelo];
		} else {
			throw new Exception(MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO);
		}

		return null;
	}

	/**
	 * Retorna o maior id da pessoa perfil considerando a acao passada (publica ou nao) 
	 * 
	 * @param Integer $idPessoa
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Integer|null;
	 */
	public static function retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest($idPessoa, Zend_Controller_Request_Abstract $request)
	{
		// recuperando id do maior perfil vinculado a pessoa e acao
		$idMaiorPessoaPerfil = Basico_OPController_ControleAcessoOPController::retornaIdPessoaMaiorPerfilRequestPorIdPessoaRequest($idPessoa, $request);

		// verificando o resultado da recuperacao
		if (!$idMaiorPessoaPerfil)
			// recuperando o perfil de usuario validado
			$idMaiorPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoa);

		// retornando o id pessoa perfil maior perfil
		return $idMaiorPessoaPerfil;
	}

	/**
	 * Retorna as pessoasPerfis da pessoa passada.
	 * 
	 * @param int $idPessoa
	 * 
	 * @return Array
	 */
	public function retornaObjetosPessoasPerfisPorIdPessoa($idPessoa)
	{
		// recuperando array de objetos Basico_Model_PessoaPefil
		$objsPessoasPerfis = $this->_retornaObjetosPorParametros("id_pessoa = '{$idPessoa}'");

		// verificando se o objeto existe
		if (count($objsPessoasPerfis) > 0)
			// retornando o objeto
    	    return $objsPessoasPerfis;
    	else
    	    return null;
	}

	/**
	 * Retorna as pessoasPerfis com a categoria PERFIL_USUARIO da pessoa passada.
	 * 
	 * @param int $idPessoa
	 * 
	 * @return Array
	 */
	public static function retornaArrayIdConstanteTextualPerfilPessoasPerfisUsuarioPorIdPessoaViaSQL($idPessoa)
	{
		// recuperando o id da categoria PERFIL_USUARIO
		$idCategoriaPerfilUsuario = Basico_OPController_CategoriaOPController::retornaIdCategoriaPerfilUsuarioViaSQL();

		// montando consulta SQL
		$consultaSQL = "SELECT p.id, p.constante_textual
						FROM basico.perfil p
						LEFT JOIN basico_pessoa.assoccl_perfil pp ON (p.id = pp.id_perfil)
						WHERE pp.id_pessoa = {$idPessoa}
						AND p.id_categoria = {$idCategoriaPerfilUsuario}";

		// recuperando e retornando array de resultados
		return $arrayIdsDescricoesPerfisVinculadosUsuario = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($consultaSQL);
	}

	/**
	 * Retorna as pessoasPerfis com a categoria PERFIL_USUARIO da pessoa passada.
	 * 
	 * @param int $idPessoa
	 * 
	 * @return Array
	 */
	public function retornaArrayIdConstanteTextualPerfilPessoasPerfisUsuarioPorIdPessoa($idPessoa)
	{
		// inicializando variaveis
		$arrayResultado = array();

		// recuperando o id da categoria PERFIL_USUARIO
		$idCategoriaPerfilUsuario = Basico_OPController_CategoriaOPController::retornaIdCategoriaPerfilUsuarioViaSQL();

		// recuperando perfis do usuario
		$objsPerfisUsuario = $this->retornaObjetosPessoasPerfisPorIdPessoa($idPessoa);

		// verificando se foram recuperados os perfis do usuario
		if (count($objsPerfisUsuario) > 0) {
			// loop para carregar array de resultados
			foreach ($objsPerfisUsuario as $objPerfilUsuario) {
				// recuperando objeto perfil
				$objPerfil = $objPerfilUsuario->getPerfilObject();

				// verificando se o perfil eh da cateroria de perfil de usuario
				if ($objPerfil->idCategoria === $idCategoriaPerfilUsuario && $objPerfil->nome !== 'USUARIO_VALIDADO') {
					// carregando array de resultados
					$arrayResultado[] = array('id' => $objPerfil->id, 'constante_textual' => $objPerfil->constanteTextual);
				}
			}
		}

		// retornando resultado
		return $arrayResultado;
	}

	/**
	 * Retorna o objeto pessoaPerfil do perfil USUARIO_NAO_VALIDADO da pessoa passada por parametro
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return Basico_Model_PessoasPerfis
	 */
	public function retornaObjetoPessoaPerfilUsuarioNaoValidadoPorIdPessoa($idPessoa)
	{
		// verificando se foi passado o id da pessoa
		if (!$idPessoa)
			return null;

		// instanciando controladores
		$perfilOPController = Basico_OPController_PerfilOPController::getInstance();

		// recuperando o perfil de usuario nao validado
		$perfilUsuarioNaoValidado = $perfilOPController->retornaObjetoPerfilUsuarioNaoValidado();

		// recuperando o objeto pessoa perfil de usuario nao validado
    	$objPessoaPerfilPessoa = $this->_retornaObjetosPorParametros("id_pessoa = {$idPessoa} and id_perfil = {$perfilUsuarioNaoValidado->id}");

    	// verificando se o objeto foi recuperado
    	if (is_object($objPessoaPerfilPessoa)) {
    		return $objPessoaPerfilPessoa;
    	}

    	throw new Exception(MSG_ERROR_PESSOAPERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO);
	}

	/**
	 * Retorna o objeto pessoaPerfil do perfil USUARIO_VALIDADO da pessoa passada por parametro
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return Basico_Model_PessoasPerfis
	 */
	public function retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idPessoa)
	{
		// verificando se foi passado o id da pessoa
		if (!$idPessoa)
			return null;

		// instanciando controladores
		$perfilOPController = Basico_OPController_PerfilOPController::getInstance();

		// recuperando o objeto perfil de usuario validado
		$objPerfilUsuarioValidado = $perfilOPController->retornaObjetoPerfilUsuarioValidado();

		// recuperando o objeto pessoa pefil
    	$objPessoaPerfil = $this->_retornaObjetosPorParametros("id_pessoa = {$idPessoa} and id_perfil = {$objPerfilUsuarioValidado->id}");

    	// verificando se o objeto foi recuperado
    	if (is_object($objPessoaPerfil)) {
    		// retornando o objeto
    		return $objPessoaPerfil;
    	}
    	
    	return NULL;
	}

	/**
	 * Retorna o id pessoaPerfil do perfil USUARIO_VALIDADO da pessoa passada por parametro, via SQL
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return Basico_Model_PessoasPerfis
	 */
	public static function retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoa)
	{
		if ($idPessoa) {
			// recuperando o nome do perfil USUARIO_VALIDADO
			$nomePerfilUsuarioValidado = PERFIL_USUARIO_VALIDADO;
	
			// montando a query SQL que retorna o id da pessoa perfil, do perfil USUARIO_VALIDADO vinculado ao id da pessoa passado por parametro
			$queryRetornaIdPessoaPerfilUsuarioValidado = "SELECT pp.id
														  FROM basico_pessoa.assoccl_perfil pp
														  LEFT JOIN basico.pessoa pa ON (pp.id_pessoa = pa.id)
														  LEFT JOIN basico.perfil pl ON (pp.id_perfil = pl.id)
														  WHERE pl.NOME = '{$nomePerfilUsuarioValidado}'
														  AND pa.id = {$idPessoa}";
	
			// recuperando array contendo o id da pessoa perfil
			$arrayIdPessoaPerfil = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryRetornaIdPessoaPerfilUsuarioValidado);
	
			// verificando se houve recuperacao do perfil
			if ((isset($arrayIdPessoaPerfil)) and (is_array($arrayIdPessoaPerfil)) and (count($arrayIdPessoaPerfil) > 0))
				// retornando o id pessoa perfil
				return (int) $arrayIdPessoaPerfil[0][self::nomeCampoIdModelo];
		}
		
		return null;
	}

    /**
	 * Retorna o objeto pessoaPerfil da pessoa e do perfil passado.
	 * 
	 * @param Int $idPessoa
	 * @param Int $idPerfil
	 * 
	 * @return Basico_Model_PessoasPerfis
	 */
	public function retornaObjetoPessoaPerfilPorIdPessoaIdPerfil($idPessoa, $idPerfil)
	{		
		// verificando se foi passado o id da pessoa e do perfil
		if ((!$idPessoa) or (!$idPerfil))
			return null;

		// instanciando controladores
		$perfilOPController = Basico_OPController_PerfilOPController::getInstance();

		// recuperanado o objeto perfil
		$objPerfil = $perfilOPController->retornaObjetoPerfilPorIdPerfil($idPerfil);

		// recuperando o objeto pessoa perfil
    	$objPessoaPerfilPessoa = $this->_retornaObjetosPorParametros("id_pessoa = {$idPessoa} and id_perfil = {$objPerfil->id}");

    	// verificando se o objeto foi recuperado
    	if (is_object($objPessoaPerfilPessoa)) {
    		return $objPessoaPerfilPessoa;
    	}

    	throw new Exception(MSG_ERROR_PESSOAPERFIL_NAO_ENCONTRADO);
	}
	
	/**
	 * Edita a pessoaPerfil da pessoa passada por parametro
	 * 
	 * @param Int $idPessoa
	 * @param Int $idPerfilAntigo
	 * @param Int $idPerfilNovo
	 * @param Int $idPessoaPerfilCriador
	 * 
	 * @return Boolean
	 */
	public function editarPessoaPerfil($idPessoa, $idPerfilAntigo, $idPerfilNovo, $idPessoaPerfilCriador = null)
	{
		// verificando se foi passado o id da pessoa, do perfil antigo e do novo perfil
		if (((Int) $idPessoa > 0) and ((Int) $idPerfilAntigo > 0) and ((Int) $idPerfilNovo > 0)) {
			// recuperando o objeto pessoa perfil
		    $objPessoaPerfil = $this->retornaObjetoPessoaPerfilPorIdPessoaIdPerfil($idPessoa, $idPerfilAntigo);

			// recuperando a versao de pessoa perfil
			$versaoUpdate = Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($objPessoaPerfil);

		    // atualizando o perfil
			$objPessoaPerfil->idPerfil = $idPerfilNovo;

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
			if (!isset($idPessoaPerfilCriador))
				// carregando o id do perfil criador do sistema
				$idPessoaPerfilCriador = self::retornaIdPessoaPerfilSistemaViaSQL();
			else if ($idPessoaPerfilCriador <= 0)
				throw new Exception(MSG_ERROR_PESSOAPERFIL_NAO_ENCONTRADO);

			// salvando o objeto
			parent::_salvarObjeto($objPessoaPerfil, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_PESSOAS_PERFIS, true), LOG_MSG_UPDATE_PESSOA_PERFIL, $versaoUpdate, $idPessoaPerfilCriador);

			return true;
		}
		return false;
	}
	
	/**
	 * Retorna se existe o perfil de UsuarioValidado para a pessoa dona do email passado
	 * @param Basico_Model_Email $email
	 * @return Boolean
	 */
	public function possuiPerfilUsuarioValidadoPorEmail(Basico_Model_ContatoCpgEmail $email)
	{
    	// recuperando o id do proprietario do email
		$idProprietarioEmail = Basico_OPController_ContatoCpgEmailOPController::getInstance()->retornaIdProprietarioEmailPorIdEmail($email->id);
	
		// recuperando o perfil de usuario validado
		$perfilUsuarioValidado = $this->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idProprietarioEmail);

		// retornando se o perfil de usuario validado existe para esta pessoa
		if (isset($perfilUsuarioValidado)) {

			return true;

        }else{
		    return false;

		}
	}
	
	/**
	 * Cria uma nova relacao pessoaPerfil e retorna o id
	 * 
	 * @param Int $idPessoa
	 * @param Int $idPerfil
	 * @return Int
	 */
	public function retornaIdNovoObjetoPessoasPerfis($idPessoa, $idPerfil)
	{
		// criando o novo objeto pessoasPerfis
		$novaPessoasPerfisNovaPessoa = $this->_retornaNovoObjetoModelo();
		// setando a pessoa
		$novaPessoasPerfisNovaPessoa->idPessoa = $idPessoa;
		// setando o perfil
		$novaPessoasPerfisNovaPessoa->idPerfil = $idPerfil;
		// setando ativo
		$novaPessoasPerfisNovaPessoa->ativo    = true;
		
		// salvando o objeto pessoasPefis
		parent::_salvarObjeto($novaPessoasPerfisNovaPessoa, Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL(LOG_NOVA_PESSOAS_PERFIS), LOG_MSG_NOVA_PESSOA_PERFIL);
		
		return $novaPessoasPerfisNovaPessoa->id;
	}
	
	public function retornaObjetoPessoaPerfilMaiorPerfilUsuarioSessaoPorRequest($request)
	{
		// recuperando o id da pessoa logada
		$idPessoa = Basico_OPController_PessoaLoginOPController::retornaIdPessoaPorIdLoginViaSQL(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao());
		// recuperando o id do perfil padrao da pessoa logada
		$idPessoaPerfil = Basico_OPController_ControleAcessoOPController::retornaIdPessoaMaiorPerfilRequestPorIdPessoaRequest($idPessoa, $request);
		// recuperando o objeto pessoaPerfil do perfil padrao da pessoa logada
		$objPessoaPerfil = $this->retornaObjetoPorId($this->_model, $idPessoaPerfil);
		
		// retornando objeto pessoasPerfis
		return $objPessoaPerfil;
	}
	
	/**
	 * Retorna o id do maior pessoa perfil do usuario logado
	 * 
	 * @param $request
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 04/05/2012
	 */
	public function retornaIdPessoaPerfilMaiorPerfilUsuarioSessaoPorRequest($request)
	{
		// recuperando o id da pessoa logada
		$idPessoa = Basico_OPController_PessoaLoginOPController::retornaIdPessoaPorIdLoginViaSQL(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao());
		// recuperando o id do maior perfil da pessoa logada
		$idPessoaPerfil = Basico_OPController_ControleAcessoOPController::retornaIdPessoaMaiorPerfilRequestPorIdPessoaRequest($idPessoa, $request);
		
		// retornando id pessoaAssocclPerfil
		return $idPessoaPerfil;
	}
}