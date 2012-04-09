<?php

/**
 * Action Controller do Controle de Versao de Objetos.
 * 
 * @author fumato
 * @since 02/05/2011
 *
 */

class Basico_CvcController extends Zend_Controller_Action
{
    /**
	 * Inicializa controlador Administrador
	 * 
	 * @return void
	 */
	public function init()
    {
    	return;
    }

    /**
     * Acao principal do controlador de acoes
     *
     * @return void
     */
    public function indexAction()
    {
    	// redirecionando para a acao de resolucao de conflitos de versao
    	$this->_helper->redirector('resolveconflitoversaoobjeto');
    }

    /**
     * Acao para resolucao de conflitos de versao
     *
     * @return void
     */
    public function resolveconflitoversaoobjetoAction()
    {
    	// carregando informacoes do request
    	$nomeObjetoConflito = $this->_request->getParam('nomeObjetoEmConflito');
    	$idObjetoConflito   = $this->_request->getParam('idObjetoEmConflito');
    	$urlUltimoRequest   = $this->_request->getParam('urlUltimoRequest');

    	// contando quantos elementos "|" existem na url do ultimo request para saber se a acao foi omitida (default index)
    	if (substr_count($urlUltimoRequest, CARACTER_CODIFICACAO_BARRA_URL) === 2) {
    		// adicionando a acao index (default)
    		$urlUltimoRequest .= CARACTER_CODIFICACAO_BARRA_URL . "index";
    	}

    	// recuperando informacoes sobre o post
    	$chavePostUltimoRequest = Basico_OPController_SessionOPController::retornaChavePostUltimoRequest();

    	// recuperando chaves dos parametros
    	$chaveParametroChavePostUltimoRequest  = CVC_PARAM_CHAVE_POST_ULTIMO_REQUEST;
    	$chaveParametroSobrescreverAtualizacao = CVC_PARAM_SOBRESCREVER_ATUALIZACAO;
    	$chaveParametroCancelar                = CVC_PARAM_CANCELAR;
    	$chaveParametroNomeObjetoEmConflito    = CVC_PARAM_NOME_OBJETO_EM_CONFLITO;
    	$chaveParametroIdObjetoEmConflito      = CVC_PARAM_ID_OBJETO_EM_CONFLITO;

    	// verificando se eh preciso limpar os parametros do resolvedor de conflitos do ultimo request
    	if ((strpos($urlUltimoRequest, $chaveParametroChavePostUltimoRequest) !== false) or (strpos($urlUltimoRequest, $chaveParametroSobrescreverAtualizacao) !== false)) {
    		// transformando string em array
    		$arrayUrlUltimoRequest = explode(CARACTER_CODIFICACAO_BARRA_URL, $urlUltimoRequest);

    		// localizando os elementos que devem ser retirados do ultimo request (parametro ultimoRequest)
    		$chaveArrayUrlUltimoRequest = array_search($chaveParametroChavePostUltimoRequest, $arrayUrlUltimoRequest);
			// verificando resultado da recuperacao
			if ($chaveArrayUrlUltimoRequest) {
				// removendo a chave e o elemento
				unset($arrayUrlUltimoRequest[$chaveArrayUrlUltimoRequest]);
				unset($arrayUrlUltimoRequest[$chaveArrayUrlUltimoRequest + 1]);
			}

    	    // localizando os elementos que devem ser retirados do ultimo request (parametro soobrescreverAtualizacao)
    		$chaveArrayUrlUltimoRequest = array_search($chaveParametroSobrescreverAtualizacao, $arrayUrlUltimoRequest);
			// verificando resultado da recuperacao
			if ($chaveArrayUrlUltimoRequest) {
				// removendo a chave e o elemento
				unset($arrayUrlUltimoRequest[$chaveArrayUrlUltimoRequest]);
				unset($arrayUrlUltimoRequest[$chaveArrayUrlUltimoRequest + 1]);
			}

    	    // localizando os elementos que devem ser retirados do ultimo request (parametro cancelar)
    		$chaveArrayUrlUltimoRequest = array_search($chaveParametroCancelar, $arrayUrlUltimoRequest);
			// verificando resultado da recuperacao
			if ($chaveArrayUrlUltimoRequest) {
				// removendo a chave e o elemento
				unset($arrayUrlUltimoRequest[$chaveArrayUrlUltimoRequest]);
				unset($arrayUrlUltimoRequest[$chaveArrayUrlUltimoRequest + 1]);
			}

			// localizando os elementos que devem ser retirados do ultimo request (parametro cancelar)
    		$chaveArrayUrlUltimoRequest = array_search($chaveParametroNomeObjetoEmConflito, $arrayUrlUltimoRequest);
			// verificando resultado da recuperacao
			if ($chaveArrayUrlUltimoRequest) {
				// removendo a chave e o elemento
				unset($arrayUrlUltimoRequest[$chaveArrayUrlUltimoRequest]);
				unset($arrayUrlUltimoRequest[$chaveArrayUrlUltimoRequest + 1]);
			}

    		// localizando os elementos que devem ser retirados do ultimo request (parametro cancelar)
    		$chaveArrayUrlUltimoRequest = array_search($chaveParametroIdObjetoEmConflito, $arrayUrlUltimoRequest);
			// verificando resultado da recuperacao
			if ($chaveArrayUrlUltimoRequest) {
				// removendo a chave e o elemento
				unset($arrayUrlUltimoRequest[$chaveArrayUrlUltimoRequest]);
				unset($arrayUrlUltimoRequest[$chaveArrayUrlUltimoRequest + 1]);
			}

    		// transformando o arrayUrlUltimoRequest em string
    		$urlUltimoRequest = implode(CARACTER_CODIFICACAO_BARRA_URL, $arrayUrlUltimoRequest);
    	} 

    	// setando parametros na url do ultimo request
    	$paramsUrlUltimoRequestRevisitarDadosFormulario = "|{$chaveParametroChavePostUltimoRequest}|{$chavePostUltimoRequest}";
    	// setando parametros na url para recuperacao do post
    	$paramsUrlUltimoRequestSobrescreverAtualizacao = "|{$chaveParametroChavePostUltimoRequest}|{$chavePostUltimoRequest}|{$chaveParametroSobrescreverAtualizacao}|true|{$chaveParametroNomeObjetoEmConflito}|{$nomeObjetoConflito}|{$chaveParametroIdObjetoEmConflito}|{$idObjetoConflito}";
    	// setando parametros na url para cancelamento da acao
    	$paramsUrlUltimoRequestCancelar = "|{$chaveParametroChavePostUltimoRequest}|{$chavePostUltimoRequest}|{$chaveParametroCancelar}|true";

    	// tokeninzando urls
    	$fullUrlUltimoRequestTokenizedRevisitarDadosFormulario = Basico_OPController_UtilOPController::retornaServerHost() . $this->view->urlEncrypt(Basico_OPController_UtilOPController::decodificaBarrasUrl($urlUltimoRequest . $paramsUrlUltimoRequestRevisitarDadosFormulario));
    	$fullUrlUltimoRequestTokenizedSobrescreverAtualizacao  = Basico_OPController_UtilOPController::retornaServerHost() . $this->view->urlEncrypt(Basico_OPController_UtilOPController::decodificaBarrasUrl($urlUltimoRequest . $paramsUrlUltimoRequestSobrescreverAtualizacao));
    	$fullUrlUltimoRequestTokenizedCancelar                 = Basico_OPController_UtilOPController::retornaServerHost() . $this->view->urlEncrypt(Basico_OPController_UtilOPController::decodificaBarrasUrl($urlUltimoRequest . $paramsUrlUltimoRequestCancelar));

    	// recuperando o formulario de resolucao de conflito de versao
    	$formResolucaoConflitoVersao = $this->retornaFormResolvedorConflitoVersaoObjeto();

    	// recuperando chamada javascript que abre um dialog contendo os dados atuais do objeto
    	$jsVisualizarDadosAtuais = Basico_OPController_UtilOPController::retornaJavaScriptDojoDialogMensagemViaArrayInfo('resolvedorConflitoObjetosVisualizarDados', Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('DIALOG_FORM_RESOLVEDOR_CONFLITO_VISUALIZAR_DADOS_ATUAIS_TITLE'), Basico_OPController_CVCOPController::getInstance()->retornaArrayAtributosObjeto($nomeObjetoConflito, $idObjetoConflito));
    	// vinculando o evento "onClick" do botao "visualizar dados atuais" com a chamada javascript que abre um dialog contendo os atributos do objeto
    	$formResolucaoConflitoVersao->BasicoResolvedorConflitoVersaoObjetoHtmlButtonVisualizarDadosAtuaisFormResolvedorConflitoVersaoObjeto->setAttrib('onClick', $jsVisualizarDadosAtuais);

    	// recuperando chamada javascript que redireciona o usuario para a pagina que estava, antes de submeter os dados
    	$jsRevisitarDadosAtuaisNoFormulario = Basico_OPController_UtilOPController::retornaJavaScriptRedirectUrl($fullUrlUltimoRequestTokenizedRevisitarDadosFormulario);
    	$formResolucaoConflitoVersao->BasicoResolvedorConflitoVersaoObjetoHtmlButtonRevisarDadosAtuaisFormResolvedorConflitoVersaoObjeto->setAttrib('onClick', $jsRevisitarDadosAtuaisNoFormulario);

    	// recuperando chamada javascript que redireciona o usuario para a pagina que estava, antes de submeter os dados, com um parametro para que o controlador recupere o ultimo post e invoque uma acao para sobrescrever os dados
    	$jsSobrescreverAtualizacao = Basico_OPController_UtilOPController::retornaJavaScriptRedirectUrl($fullUrlUltimoRequestTokenizedSobrescreverAtualizacao);
    	$formResolucaoConflitoVersao->BasicoResolvedorConflitoVersaoObjetoHtmlButtonSobrescreverAtualizacaoFormResolvedorConflitoVersaoObjeto->setAttrib('onClick', $jsSobrescreverAtualizacao);

    	// recuperando chamada javascript que redireciona o usuario para a pagina que estava, antes de submeter os dados, com um parametro para que o controlador recupere o ultimo post
    	$jsCancelar = Basico_OPController_UtilOPController::retornaJavaScriptRedirectUrl($fullUrlUltimoRequestTokenizedCancelar);
    	$formResolucaoConflitoVersao->BasicoResolvedorConflitoVersaoObjetoHtmlButtonCancelarFormResolvedorConflitoVersaoObjeto->setAttrib('onClick', $jsCancelar);

    	// carregando array do cabecalho da view
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('FORM_TITLE_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'));
    	
    	// carregando o formulário
    	$content[] = $formResolucaoConflitoVersao;
    	
    	// enviado conteúdo para a view
		$this->view->content = $content;

    	// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }

    /**
     * Retorna o formulario de resolucao de conflitos de versao
     * 
     */
    private function retornaFormResolvedorConflitoVersaoObjeto()
    {
    	// retornando o formulario de resolucacao de conflitos
    	return new Basico_Form_ResolvedorConflitoVersaoObjeto();
    }
}