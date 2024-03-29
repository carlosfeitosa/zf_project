/**
 * Arquivo de funções customizadas para manipulação do plugin JQuery jgGrid
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * @since 18/04/2012
 */


/**
 * Funcao que carrega os dados do form de edicao do jqGrid no momento da abertura do form
 * 
 * @param formObject - Objeto formulario 
 * @param urlDadosForm - Url para recuperação dos dados
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * @since 18/04/2012
 */
function carregaDadosFormEdicaoJqGrid(formObject, urlDadosForm) {

	if (formObject[0]['id_g'].value != "undefined") {
		// realizando requisicao ajax para recuperacao dos dados
		$.getJSON(urlDadosForm + formObject[0]['id_g'].value, function(data) {
		  		
			// percorrendo o array json resultado da requisicao
			$.each(data[0], function(key, val) {
				if (formObject[0][key]) {
					// recuperando o tipo do elemento
					var tipoElemento = formObject[0][key].type;
					
					// setando elemento de acordo com o seu tipo
					if (tipoElemento == "checkbox") {
						// verificando valor para marcar ou desmarcar o checkbox
						if (val == "true")
							formObject[0][key].checked = "checked";
						else
							formObject[0][key].checked = "";
					}else{
						// setando valor do elemento do tipo text
						formObject[0][key].value = substituiTodasOcorrenciasString('<br>', '\n', val);
					}
				}
			});
	
		});
	}
}

/**
 * Funcao que carrega os dados do form de edição do jqGrid no momento do click nos botoes de navegação entre registros
 * 
 * @param wichbutton
 * @param formObject
 * @param rowid
 * @param urlDadosForm
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * @since 18/04/2012
 */
function carregaDadosFormEdicaoJqGridPaginator(wichbutton, formObject, rowid, urlDadosForm) {

	if (rowid != "undefined") {
		// realizando requisicao ajax para recuperacao dos dados
		$.getJSON(urlDadosForm + rowid, function(data) {
		  	
			  // percorrendo o array json resultado da requisicao	
			  $.each(data[0], function(key, val) {
				if (formObject[0][key]) {				
					// recuperando o tipo do elemento
					var tipoElemento = formObject[0][key].type;

					// setando elemento de acordo com o seu tipo
					if (tipoElemento == "checkbox") {
						if (val == "true")
							formObject[0][key].checked = "checked";
						else
							formObject[0][key].checked = "";
					}else{
						formObject[0][key].value = val.replace(new RegExp('<br>', 'g'), '\n');
					}
				}
			  });

		});
	}
}

/**
 * Funcao que carrega os dados do dialog de visualização dos dados do jqGrid no momento da abertura do dialog
 * 
 * @param formObject - Objeto formulario 
 * @param urlDadosForm - Url para recuperação dos dados
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * @since 18/04/2012
 */
function carregaDadosDialogViewJqGrid(formObject, urlDadosForm) {
	
	if (formObject[0]['id_g'].value != "undefined") {
		
		// realizando requisicao ajax para recuperacao dos dados
		$.getJSON(urlDadosForm + formObject[0]['id_g'].value, function(data) {
		  		
			// percorrendo o array json resultado da requisicao
			$.each(data[0], function(key, val) {
				$('#v_' + key).text(val.replace(new RegExp('<br>', 'g'), '\n'));
			});
	
		});
	}
}

/**
 * Funcao que carrega os dados do dialog de visualização dos dados do jqGrid no momento do click nos botoes de navegação entre registros
 * 
 * @param wichbutton
 * @param formObject
 * @param rowid
 * @param urlDadosForm
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * @since 18/04/2012
 */
function carregaDadosDialogViewJqGridPaginator(wichbutton, formObject, rowid, urlDadosForm) {
	// realizando requisicao ajax para recuperacao dos dados
	$.getJSON(urlDadosForm + rowid, function(data) {
	  		
		// percorrendo o array json resultado da requisicao
		$.each(data[0], function(key, val) {
			$('#v_' + key).text(val.replace(new RegExp('<br>', 'g'), '\n'));
		});

	});
}

/**
 * Função para processar a resposta do request de edição de um objeto
 * 
 * @param response
 * @param postdata
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 25/05/2012
 */
function processaRetornoJqGrid(response, postdata) {
	// inicializando variáveis
	var success = true;
	var message = "";
	// transformando o response em json
	var json = eval('(' + response.responseText + ')');
	// verificando se existe erro
	if(json.errors) {
		// marcando o retorno como erro
		success = false;
		// loop para setar as mensagens de erro
		for(i=0; i < json.errors.length; i++) {
			// setando as mensagens de erro
			message += json.errors[i] + '<br/>';
		}
	}

	// verificando se a requisição está marcada como sucesso
	if (success) {
		// recuperando array de scripts para execução
		var arrayScripts = json.view.scripts;
		// loop para processar os scripts
		for (script in arrayScripts)	{
			// Processando o script
			processaScript(arrayScripts[script]);
		}
	}

	return [success,message];
}

/**
 * Verifica o retorno do método de recuperação de dados, antes iniciar o processamento
 * 
 * @param data
 * @param status
 * @param xhr
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 30/05/2012
 */
function verificaDadosAntesProcessamento(data, status, xhr) {
	// verificnado se a página foi recuperada
	if (data.page == undefined) {
		// processa o resultado via ajax rochedo
		processaResponseDojoFormRequest(data);
	}
}