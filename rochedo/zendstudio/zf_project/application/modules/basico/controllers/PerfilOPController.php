<?php
/**
 * Controlador dos perfis do sistema.
 * 
 * @author João Henrique M.Bione (joao.henrique.bione@rochedoproject.com)
 * 
 * @uses Basico_Model_Perfil
 * 
 * @since 22/03/2011
 */
class Basico_OPController_PerfilOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do controlador Basico_OPController_PerfilOPController.
	 * @var Basico_OPController_PerfilOPController
	 */
	private static $_singleton;
	/**
	 * Instância do modelo Basico_Model_Perfil
	 * @var Basico_Model_Perfil
	 */
	protected $_model;

	/**
	 * Nome da tabela perfil
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.perfil';

	/**
	 * Nome do campo id da tabela perfil
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_PerfilOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_PerfilOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		// chamando inicializacao da classe pai
		parent::init();

		return;
	}

	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function initControllers()
	{
		return;
	}

	/**
	 * Retorna a instância do controlador perfil
	 * 
	 * @return Basico_OPController_PerfilOPController $singleton
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_PerfilOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna um perfil utilizando o nome do perfil como parametro de busca.
	 * 
	 * @param String $nomePerfil
	 * 
	 * @return Basico_Model_Perfil|null
	 */
	public function retornaObjetoPerfilPorNome($nomePerfil)
	{
		// recuperando array de perfis
		$objPerfil = $this->retornaObjetosPorParametros("nome = '{$nomePerfil}'", null, 1, 0);
		
		// verificando se existe o objeto
		if (isset($objPerfil[0]))
			// retornando o objeto
    	    return $objPerfil[0];
    	    
    	return null;
	}

	/**
	 * Retorna o id de um perfil, utilizando o nome do perfil como parametro de busca, via SQL
	 * 
	 * @param String $nomePerfil
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdPerfilPorNomeViaSQL($nomePerfil)
	{
		// verificando se foi passado o id da categoria
		if (!isset($nomePerfil))
			return null;

		// recuperando informacoes sobre a tabela perfil
		$arrayNomeCampoId = array(self::nomeCampoIdModelo);
		$condicaoSQL      = "nome = '{$nomePerfil}'";

		// recuperando um array contendo os nomes dos perfis relacionados a uma categoria
		$arrayPerfis = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayNomeCampoId, $condicaoSQL);

		// verificando se a consulta obteve resultados
		if ((isset($arrayPerfis)) and (is_array($arrayPerfis)) and (count($arrayPerfis) > 0)) {
			// retornando o id da categoria
			return (int) $arrayPerfis[0][self::nomeCampoIdModelo];
		}

		return null;
	}

	/**
	 * Retorna o objeto perfil pelo id passado.
	 * 
	 * @param Int $idPerfil
	 * 
	 * @return Basico_Model_Perfil|null
	 */
	public function retornaObjetoPerfilPorIdPerfil($idPerfil)
	{
		// verificando se o id do perfil foi passado
		if ($idPerfil > 0) {
			// recuperando o objeto
			return $this->retornaObjetoPorId($this->_model, $idPerfil);
		}
	}
	
	/**
	 * Retorna o perfil de usuário não validado.
	 * 
	 * @return Basico_Model_Perfil
	 */
	public function retornaObjetoPerfilUsuarioNaoValidado()
	{
		// recuperando o objeto perfil
	    $perfilUsuarioNaoValidado = $this->retornaObjetoPerfilPorNome(PERFIL_USUARIO_NAO_VALIDADO);

	    // verificando se o objeto existe
	    if (isset($perfilUsuarioNaoValidado))
	    	// retornando o objeto
    	    return $perfilUsuarioNaoValidado;

    	throw new Exception(MSG_ERROR_PERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO);
	}
	
    /**
	 * Retorna o perfil de usuário validado.
	 * 
	 * @return Basico_Model_Perfil
	 */
	public function retornaObjetoPerfilUsuarioValidado()
	{
		// recuperando o objeto perfil
	    $perfilUsuarioValidado = $this->retornaObjetoPerfilPorNome(PERFIL_USUARIO_VALIDADO);

	    // verificando se o objeto existe
	    if (isset($perfilUsuarioValidado))
	    	// retornando o objeto
    	    return $perfilUsuarioValidado;

    	throw new Exception(MSG_ERROR_PERFIL_USUARIO_VALIDADO_NAO_ENCONTRADO);
	}

    /**
	 * Retorna o perfil de usuário publico.
	 * 
	 * @return Basico_Model_Perfil
	 */
	public function retornaObjetoPerfilUsuarioPublico()
	{
		// recuperando o objeto perfil
	    $perfilUsuarioPublico = $this->retornaObjetoPerfilPorNome(PERFIL_USUARIO_PUBLICO);

	    // verificando se o objeto existe
	    if (isset($perfilUsuarioPublico))
	    	// retornando o objeto
    	    return $perfilUsuarioPublico;

    	throw new Exception(MSG_ERROR_PERFIL_USUARIO_VALIDADO_NAO_ENCONTRADO);
	}

    /**
	 * Retorna o perfil de usuário desenvolvedor.
	 * 
	 * @return Basico_Model_Perfil
	 */
	public function retornaObjetoPerfilUsuarioDesenvolvedor()
	{
		// recuperando o objeto perfil
	    $perfilUsuarioDesenvolvedor = $this->retornaObjetoPerfilPorNome(PERFIL_USUARIO_DESENVOLVEDOR);

	    // verificando se o objeto existe
	    if (isset($perfilUsuarioDesenvolvedor))
	    	// retornando o objeto
    	    return $perfilUsuarioDesenvolvedor;

    	throw new Exception(MSG_ERROR_PERFIL_USUARIO_DESENVOLVEDOR_NAO_ENCONTRADO);
	}

	/**
	 * Retorna o id do perfil de usuario publico
	 * 
	 * @return Integer|null
	 */
	public function retornaIdPerfilUsuarioPublico()
	{
		// recuperanado o objeto perfil usuario publico
		$objPerfilUsuarioPublico = $this->retornaObjetoPerfilUsuarioPublico();

		// verificando se o objeto foi carregado
		if (isset($objPerfilUsuarioPublico))
			// retornando o id do objeto
			return $objPerfilUsuarioPublico->id;

		return null;
	}

	/**
	 * Retorna o id do perfil de usuario desenvolvedor
	 * 
	 * @return Integer|null
	 */
	public function retornaIdPerfilUsuarioDesenvolvedor()
	{
		// recuperanado o objeto perfil usuario publico
		$objPerfilUsuarioDesenvolvedor = $this->retornaObjetoPerfilUsuarioDesenvolvedor();

		// verificando se o objeto foi carregado
		if (isset($objPerfilUsuarioDesenvolvedor))
			// retornando o id do objeto
			return $objPerfilUsuarioDesenvolvedor->id;

		return null;
	}

	/**
	 * Retorna o nome do perfil de usuario publico
	 * 
	 * @return String|null
	 * 
	 * @deprecated
	 */
	public function retornaNomePerfilUsuarioPublico()
	{
		// recuperanado o objeto perfil usuario publico
		$objPerfilUsuarioPublico = $this->retornaObjetoPerfilUsuarioPublico();

		// verificando se o objeto foi carregado
		if (isset($objPerfilUsuarioPublico))
			// retornando o id do objeto
			return $objPerfilUsuarioPublico->nome;

		return null;
	}

	/**
	 * Retorna o nome do perfil do usuario publico, via SQL
	 * 
	 * @return String|null
	 */
	public function retornaNomePerfilUsuarioPublicoViaSQL()
	{
		// recuperando informacoes sobre a tabela perfil
		$arrayNomeCampoNome = array('nome');
		$nomePerfilPublico  = PERFIL_USUARIO_PUBLICO;
		$condicaoSQL        = "nome = '{$nomePerfilPublico}'";

		// recuperando um array contendo os nomes dos perfis relacionados a uma categoria
		$arrayPerfis = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayNomeCampoNome, $condicaoSQL);

		// verificando se a consulta obteve resultados
		if ((isset($arrayPerfis)) and (is_array($arrayPerfis)) and (count($arrayPerfis) > 0)) {
			// retornando o id da categoria
			return $arrayPerfis[0]['nome'];
		}

		return null;
	}

	/**
	 * Retorna os objetos perfis associados a uma categoria (passada por id)
	 * 
	 * @param Integer $idCategoria
	 * 
	 * @return Array|null
	 */
	private function retornaObjetosPerfisPorIdCategoria($idCategoria)
	{
		// retornando objetos
		return $this->retornaObjetosPorParametros("id_categoria = {$idCategoria}");
	}

	/**
	 * Retorna um array de nomes dos perfis associados a uma categoria (passada por id)
	 * 
	 * @param Integer $idCategoria
	 * 
	 * @return Array|null
	 */
	private static function retornaNomesPerfisPorIdCategoriaViaSQL($idCategoria)
	{
		// verificando se foi passado o id da categoria
		if (!isset($idCategoria))
			return null;

		// recuperando informacoes sobre a tabela perfil
		$arrayNomeCampoNome = array('nome');
		$condicaoSQL        = "id_categoria = {$idCategoria}";

		// recuperando um array contendo os nomes dos perfis relacionados a uma categoria
		$arrayPerfis = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayNomeCampoNome, $condicaoSQL);

		// verificando se a consulta obteve resultados
		if ((isset($arrayPerfis)) and (is_array($arrayPerfis)) and (count($arrayPerfis) > 0)) {
			// retornando o id da categoria
			return $arrayPerfis;
		}

		return null;
	}

	/**
	 * Retorna os objetos perfis de usuario
	 * 
	 * @return Array|null
	 */
	public function retornaObjetosPerfisUsuario()
	{
		// recuperando o id categoria PERFIL_USUARIO_SISTEMA e PERFIL_USUARIO
		$idCategoriaPerfilUsuarioSistema = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaPerfilUsuarioSistema();
		$idCategoriaPerfilUsuario = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaPerfilUsuario();

		// recupereando os perfis de usuario do sistema
		$arrayPerfisUsuarioSistema = $this->retornaObjetosPerfisPorIdCategoria($idCategoriaPerfilUsuarioSistema);
		$arrayPerfisUsuario        = $this->retornaObjetosPerfisPorIdCategoria($idCategoriaPerfilUsuario);
		
		// retornando os objetos perfis usuario sistema e perfis usuario
		return array_merge($arrayPerfisUsuarioSistema, $arrayPerfisUsuario);
	}

	/**
	 * Retorna um array contendo os nomes dos perfis de usuario, via SQL
	 * 
	 * @return Array|null
	 */
	public static function retornaArrayNomesPerfisUsuarioViaSQL()
	{
		// recuperando o id categoria PERFIL_USUARIO_SISTEMA e PERFIL_USUARIO
		$idCategoriaPerfilUsuarioSistema = Basico_OPController_CategoriaOPController::retornaIdCategoriaPerfilUsuarioSistemaViaSQL();
		$idCategoriaPerfilUsuario        = Basico_OPController_CategoriaOPController::retornaIdCategoriaPerfilUsuarioViaSQL();

		// preparando informacoes para recuperacao dos nomes dos perfis do usuario do sistema
		$arrayPerfisUsuarioSistema = self::retornaNomesPerfisPorIdCategoriaViaSQL($idCategoriaPerfilUsuarioSistema);
		$arrayPerfisUsuario        = self::retornaNomesPerfisPorIdCategoriaViaSQL($idCategoriaPerfilUsuario);

		// retornando os objetos perfis usuario sistema e perfis usuario
		return array_merge($arrayPerfisUsuarioSistema, $arrayPerfisUsuario);
	}

	/**
	 * Retorna o nome do perfil padrao, encontrado na sessao do usuario logado
	 * 
	 * @deprecated Utilize retornaDescricaoPerfilPadraoUsuarioSessaoViaSQL para maior performance
	 * 
	 * @return String
	 */
	public function retornaDescricaoPerfilPadraoUsuarioSessao()
	{
		// recupernado o id do perfil padrao do usuario logado (sessao)
		$idPerfilPadraoSessao = Basico_OPController_PessoaOPController::retornaIdPerfilPadraoUsuarioSessao();

		// verificando se existe perfil padrao
		if ($idPerfilPadraoSessao) {
			// retornando a descricao do perfil
			return $this->retornaObjetoPerfilPorIdPerfil($idPerfilPadraoSessao)->descricao;
		}

		// retornando "nenhuma opcao informada"
		return Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('SELECT_OPTION_NAO_DESEJO_INFORMAR');
	}

	/**
	 * Retorna o nome do perfil padrao, encontrado na sessao do usuario logado
	 * 
	 * @return String
	 */
	public static function retornaDescricaoPerfilPadraoUsuarioSessaoViaSQL()
	{
		// recupernado o id do perfil padrao do usuario logado (sessao)
		$idPerfilPadraoSessao = Basico_OPController_PessoaOPController::retornaIdPerfilPadraoUsuarioSessao();

		// verificando se existe perfil padrao setado na sessao
		if ($idPerfilPadraoSessao) {
			// recuperando informacoes sobre a tabela perfil
			$arrayNomeCampoDescricaoPerfil = array('descricao');
			$condicaoSQL                   = "id = {$idPerfilPadraoSessao}";
	
			// recuperando array com resultados
			$arrayDescricaoPerfilPadrao = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayNomeCampoDescricaoPerfil, $condicaoSQL);
	
			// verificando se os dados foram recuperados
			if (count($arrayDescricaoPerfilPadrao) > 0) {
				// retornando a descricao do perfil
				return $arrayDescricaoPerfilPadrao[0]['descricao'];
			}
		}

		// retornando "nenhuma opcao informada"
		return Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('SELECT_OPTION_NAO_DESEJO_INFORMAR');
	}

	/**
	 * Retorna a traducao do perfil padrao, encontrado na sessao do usuario logado
	 * 
	 * @return String
	 */
	public static function retornaTraducaoPerfilPadraoUsuarioSessaoViaSQL()
	{
		// recupernado o id do perfil padrao do usuario logado (sessao)
		$idPerfilPadraoSessao = Basico_OPController_PessoaOPController::retornaIdPerfilPadraoUsuarioSessao();

		// verificando se existe perfil padrao setado na sessao
		if ($idPerfilPadraoSessao) {
			// recuperando informacoes sobre a tabela perfil
			$arrayNomeCampoDescricaoPerfil = array('constante_textual');
			$condicaoSQL                   = "id = {$idPerfilPadraoSessao}";
	
			// recuperando array com resultados
			$arrayDescricaoPerfilPadrao = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayNomeCampoDescricaoPerfil, $condicaoSQL);
	
			// verificando se os dados foram recuperados
			if (count($arrayDescricaoPerfilPadrao) > 0) {
				// retornando a descricao do perfil
				return Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayDescricaoPerfilPadrao[0]['constante_textual']);
			}
		}

		// retornando "nenhuma opcao informada"
		return Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('SELECT_OPTION_NAO_DESEJO_INFORMAR');
	}
}