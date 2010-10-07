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
	 * @var Basico_EmailController
	 */
	static private $singleton;

	/**
	 * 
	 * @var Basico_Model_Email
	 */
	private $email;

	/**
	 * Construtor do Controlador Email
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->email = new Basico_Model_Email();
	}

	/**
	 * Inicializa o controlador Email.
	 * 
	 * @return Basico_EmailController
	 */
	static public function init()
	{
		// verificando singleton
		if (self::$singleton == NULL){
			
			self::$singleton = new Basico_EmailControllerController();
		}
		return self::$singleton;
	}

	/**
	 * Retorna um UniqueId a partir de um endereco de e-mail
	 * 
	 * @return String
	 */
	private function gerarUniqueIdEmail()
	{
		// retorna o resultado do metodo "geradorUniqueIdGerarId" na classe "Basico_GeradorControllerController"
		return Basico_GeradorControllerController::geradorUniqueIdGerarId($this->email, 'unique_id');
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
		$arrayObjsEmail = self::$singleton->email->fetchList("email = '{$email}'", null, 1, 0);
		
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
	private function retornaObjetoEmail($email)
	{
		// recuperando objetos e-mail
		$arrayObjsEmail = self::$singleton->email->fetchList("email = '{$email}'", null, 1, 0);

		// verificando se o objeto foi recuperado/existe
		if (isset($arrayObjsEmail[0]))
			// retornando objeto e-mail
    	    return $arrayObjsEmail[0];
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
	public function retornaIdEmail($email)
	{
		// recuperando objetos e-mail
		$arrayObjsEmail = self::$singleton->email->fetchList("email = '{$email}'", null, 1, 0);
		
		// verificando se o objeto foi recuperado/existe
		if (isset($arrayObjsEmail[0]))
			// retornando o id do objeto e-mail
    	    return $arrayObjsEmail[0]->id;
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
	public function retornaObjetoEmailId($id)
	{
		// recuperando objetos e-mail
		$arrayObjsEmail = self::$singleton->email->fetchList("id = '{$id}'", null, 1, 0);
		
		// verificando se o objeto foi recuperado/existe
		if (isset($arrayObjsEmail[0]))
			// retornando o objeto e-mail
    	    return $arrayObjsEmail[0];
    	else
    	    return NULL;
	}

	/**
	 * Retorna o id da pessoa pelo email passado como parâmetro.
	 * 
	 * @param String $email
	 * 
	 * @return Basico_Model_Email|null
	 */
	public function retornaIdPessoaEmail($email)
	{
		// recuperando objetos e-mail
		$arrayObjsEmail = self::$singleton->email->fetchList("email = '{$email}'", null, 1, 0);
		
		// verificando se o objeto foi recuperado/existe
		if (isset($arrayObjsEmail[0]))
			// retornando o id generico do proprietario do objeto e-mail
    	    return $arrayObjsEmail[0]->idGenericoProprietario;
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
		$auxEmail = $this->retornaObjetoEmail($email);
		
		// verificando se o objeto foi recuperado/existe
		if(isset($auxEmail))
			// retornando o atributo validado
			return $auxEmail->validado;
		else
		    return NULL;
	}

	/**
	 * Salva novo email no banco
	 * 
	 * @param Basico_Model_Email $novoEmail
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarEmail(Basico_Model_Email $novoEmail, $idPessoaPerfilCriador = null)
	{
		// verificando se existe a relacao de categoria
		if (!Basico_PersistenceControllerController::bdChecaExistenciaRelacaoCategoriaChaveEstrangeira($novoEmail->categoria))
			throw new Exception(MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_EMAIL_SEM_RELACAO);

		// verificando se existe o token existe na tabela de relacao
		if (!Basico_PersistenceControllerController::bdChecaExistenciaValorCategoriaChaveEstrangeira($novoEmail->categoria, $novoEmail->idGenericoProprietario, Basico_PersistenceControllerController::bdRetornaTableNameObjeto($novoEmail), Basico_PersistenceControllerController::bdRetornaNomeCampoIdGenericoObjeto($novoEmail), true))
			throw new Exception(MSG_ERRO_EMAIL_CHECK_CONSTRAINT);

    	try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();

			// salvando o objeto através do controlador Save
	    	Basico_PersistenceControllerController::bdSave($novoEmail, null, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoEmail(), LOG_MSG_NOVO_EMAIL);

	    	// atualizando o objeto
    		$this->email = $novoEmail;

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
		// buscando o e-mail do sistema
		$idCategoriaEmailSistema = Basico_CategoriaControllerController::retornaIdCategoriaEmailSistema();
		$emailSistema = self::$singleton->email->fetchList("id_categoria = {$idCategoriaEmailSistema}", null, 1, 0);
		
		// verificando se o objeto foi recuperado/existe
		if (isset($emailSistema[0]))
			// retornando o e-mail do sistema
    	    return $emailSistema[0]->email;
    	else
    	    return NULL;
	}
}