<?php
/**
 * Controlador PessoaPerfil
 *
 */
class Basico_PessoaPerfilControllerController
{
	/**
	 * Instância do Controlador PessoaPerfil
	 * @var Basico_PessoaPerfilController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo PessoaPerfil
	 * @var Basico_Model_PessoaPerfil
	 */
	private $pessoaPerfil;
	
	/**
	 * Construtor do controlador PessoaPerfil
	 * @return Basico_Model_PessoaPerfil
	 */
	private function __construct()
	{
		$this->pessoaPerfil = new Basico_Model_PessoaPerfil();
	}
	
	/**
	 * Retorna instância do Controlador PessoaPerfil
	 * @return Basico_PessoaPerfilController
	 */
	public static function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PessoaPerfilControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva pessoaPefil no banco de dados.
	 * @param Basico_Model_PessoaPerfil $novaPessoaPerfil
	 * @param int $idPessoaPerfilCriador
	 * @return void
	 */
	public function salvarPessoaPerfil($novaPessoaPerfil, $idPessoaPerfilCriador = null)
	{
	    try {
	    	// verifica se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();

			// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novaPessoaPerfil, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovaPessoaPerfil(), LOG_MSG_NOVA_PESSOA_PERFIL);

			// atualizando o objeto
    		$this->pessoaPerfil = $novaPessoaPerfil;
			
    	} catch (Exception $e) {
    		throw new Exception($e);
    	}
	}
	
	/**
	 * Retorna id da pessoaPerfil utilizando o id de pessoa como parametro para busca.
	 * @param int $idPessoa
	 * @return Basico_Model_PessoaPefil
	 */
	public function retornaIdPessoaPerfilPessoa($idPessoa) {
		
		$idPessoaPerfil = self::$singleton->pessoaPerfil->fetchList("id_pessoa = '{$idPessoa}'", null, 1, 0);
		if (isset($idPessoaPerfil[0]))
    	    return $idPessoaPerfil[0];
    	else
    	    return NULL;
	}
}