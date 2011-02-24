<?php

/**
 * Controlador Email
 *
 */

// include controladores
require_once("CategoriaControllerController.php");
require_once("GeradorControllerController.php");

/**
 * Controlador Email
 * 
 * @uses Basico_Model_Email
 */
class Basico_EmailControllerController
{
	/**
	 * 
	 * @var Basico_EmailControllerController
	 */
	private static $_singleton;

	/**
	 * 
	 * @var Basico_Model_Email
	 */
	private $_email;

	/**
	 * Construtor do Controlador Basico_EmailControllerController
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando modelo
		$this->_email = $this->retornaNovoObjetoEmail();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializacao do controlador Basico_EmailControllerController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Inicializa o controlador Email.
	 * 
	 * @return Basico_EmailController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_EmailControllerController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto email vazio
	 * 
	 * @return Basico_Model_Email
	 */
	public function retornaNovoObjetoEmail()
	{
		// retornando um modelo vazio
		return new Basico_Model_Email();
	}

	/**
	 * Retorna um UniqueId a partir de um endereco de e-mail
	 * 
	 * @return String
	 */
	private function gerarUniqueIdEmail()
	{
		// retorna o resultado do metodo "geradorUniqueIdGerarId" na classe "Basico_GeradorControllerController"
		return Basico_GeradorControllerController::geradorUniqueIdGerarId($this->_email, 'unique_id');
	}

	/**
	 * Retorna um novo UniqueId
	 * 
	 * @return String 
	 */
	public function retornaNovoUniqueIdEmail()
	{
		// retorna um novo uniqueId
		return $this->gerarUniqueIdEmail();
	}

	/**
	 * Retorna o UniqueId do email passado como parametro. 
	 * 
	 * @param String $email
	 * 
	 * @return Basico_Model_Email|null
	 */
	public function retornaUniqueIdEmail($email) 
	{
		// recuperando objetos e-mail
		$arrayObjsEmail = $this->_email->fetchList("email = '{$email}'", null, 1, 0);
		
		// verificando se o objeto foi recuperado/existe
		if (isset($arrayObjsEmail[0]))
			// retornando uniqueId
    	    return $arrayObjsEmail[0]->uniqueId;
    	else
    	    return NULL;
	}

	/**
	 * Retorna o objeto email carregado ou null se o email passado não existir no banco.
	 * 
	 * @param String $email
	 * 
	 * @return Basico_Model_Email|null
	 */
	private function retornaObjetoEmailPorEmail($email)
	{
		// recuperando objetos e-mail
		$objsEmail = $this->_email->fetchList("email = '{$email}'", null, 1, 0);

		// verificando se o objeto foi recuperado/existe
		if (isset($objsEmail[0]))
			// retornando objeto e-mail
    	    return $objsEmail[0];
    	else
    	    return NULL;
	}

    /**
	 * Retorna o id do email ou null se o email passado não existir no banco.
	 * 
	 * @param String $email
	 * 
	 * @return Integer|null
	 */
	public function retornaIdEmailPorEmail($email)
	{
		// recuperando objeto e-mail
		$objEmail = self::retornaObjetoEmailPorEmail($email);

		// verificando se o objeto foi recuperado/existe
		if (isset($objEmail))
			// retornando o id do objeto e-mail
    	    return $objEmail->id;
    	else
    	    return NULL;
	}

    /**
	 * Retorna o email pelo id passado ou null se o id passado não existir no banco.
	 * 
	 * @param Integer $id
	 * 
	 * @return Basico_Model_Email|null
	 */
	public function retornaObjetoEmailPorId($id)
	{
		// retornando o objeto email atraves do id
		return $this->_email->find($id);
	}

	/**
	 * Retorna o id da pessoa pelo email passado como parâmetro.
	 * 
	 * @param String $email
	 * 
	 * @return Basico_Model_Email|null
	 */
	public function retornaIdProprietarioEmailPorEmail($email)
	{
		// recuperando objetos e-mail
		$objsEmail = $this->_email->fetchList("email = '{$email}'", null, 1, 0);

		// verificando se o objeto foi recuperado/existe
		if (isset($objsEmail[0]))
			// retornando o id generico do proprietario do objeto e-mail
    	    return $objsEmail[0]->idGenericoProprietario;
    	else
    	    return NULL;
	}

	/**
	 * Verifica se o email existe, se existir retorna o atributo 'validado' do email.
	 * 
	 * @param String $email
	 * 
	 * @return Boolean|null
	 */
	public function verificaEmailExistente($email)
	{
		// recuperando objetos e-mail
		$objEmail = $this->retornaObjetoEmailPorEmail($email);

		// verificando se o objeto foi recuperado/existe
		if(isset($objEmail))
			// retornando o atributo validado
			return $objEmail->validado;
		else
		    return NULL;
	}

	/**
	 * Salva novo email no banco
	 * 
	 * @param Basico_Model_Email $novoEmail
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarEmail(Basico_Model_Email $objEmail, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se existe a relacao de categoria
		if (!Basico_PersistenceControllerController::bdChecaExistenciaRelacaoCategoriaChaveEstrangeira($objEmail->categoria))
			throw new Exception(MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_EMAIL_SEM_RELACAO);

		// verificando se existe o token existe na tabela de relacao
		if (!Basico_PersistenceControllerController::bdChecaExistenciaValorCategoriaChaveEstrangeira($objEmail->categoria, $objEmail->idGenericoProprietario, Basico_PersistenceControllerController::bdRetornaTableNameObjeto($objEmail), Basico_PersistenceControllerController::bdRetornaNomeCampoIdGenericoObjeto($objEmail), true))
			throw new Exception(MSG_ERRO_EMAIL_CHECK_CONSTRAINT);

    	try {
    		// instanciando controladores
    		$categoriaControllerController = Basico_CategoriaControllerController::getInstance();
    		$pessoaPerfilControllerController = Basico_PessoaPerfilControllerController::getInstance();

    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objEmail->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdateEmail();
	    		$mensagemLog    = LOG_MSG_UPDATE_EMAIL;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovoEmail();
	    		$mensagemLog    = LOG_MSG_NOVO_EMAIL;    		
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_PersistenceControllerController::bdSave($objEmail, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_email = $objEmail;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}

	/**
	 * Retorna o email do Sistema
	 * 
	 * @return String
	 */
	public function retornaEmailSistema()
    {
    	// instanciando controladores
    	$categoriaControllerController = Basico_CategoriaControllerController::getInstance();

		// buscando o e-mail do sistema
		$idCategoriaEmailSistema = $categoriaControllerController->retornaIdCategoriaEmailSistema();
		$objEmailSistema = $this->_email->fetchList("id_categoria = {$idCategoriaEmailSistema}", null, 1, 0);
		
		// verificando se o objeto foi recuperado/existe
		if (isset($objEmailSistema[0]))
			// retornando o e-mail do sistema
    	    return $objEmailSistema[0]->email;
    	else
    	    return NULL;
	}
	
	/**
	 * Retorna o Objeto email primario do id da pessoa passada
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return Basico_Model_Email
	 * 
	 */
	public function retornaEmailPrimarioPessoa($idPessoa)
	{
		if ((Int) $idPessoa > 0) {
			// instanciando controladores
			$categoriaControllerController = Basico_CategoriaControllerController::getInstance();

			// recuperando o id da categoria EMAIL_PRIMARIO
			$idCategoriaEmailPrimario = $categoriaControllerController->retornaIdCategoriaEmailPrimario();

			// recuperando o email primario da pessoa passada
			$objEmailPrimario = $this->_email->fetchList("id_generico_proprietario = {$idPessoa} and id_categoria = {$idCategoriaEmailPrimario}");
			
			// checando se o email foi encontrado
			if (isset($objEmailPrimario[0])) {
				// retornando o objeto
				return $objEmailPrimario[0];
			}
		}
		return false;
	}
}