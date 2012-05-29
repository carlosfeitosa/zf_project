dojo.require("dijit.Dialog");
dojo.require("dijit.form.Form");
dojo.require("dijit.form.Button");
dojo.require("dijit.form.TextBox");
dojo.require("dijit.DialogUnderlay");
dojo.require("dojox.form.PasswordValidator");
dojo.require("dijit.TitlePane");
dojo.require("dijit.form.TimeTextBox");
dojo.require("dijit.form.SimpleTextarea");
dojo.require("dijit.form.DateTextBox");
dojo.require("dijit.form.CurrencyTextBox");
dojo.require("dijit.form.CheckBox");

var underlay;

/*
 * Função para validar uma string
 * @var inputObject - O input a ser validado
 * @var filterType  - O tipo do filtro a ser aplicado
 */
function validaString(inputObject, filterType)
{   	
	var generic_pattners={'special':/[\W]/g, 
		                  'quotes':/['\''&'\"']/g, 
		                  'notnumbers':/[^\d]/g
		                 };

	var login_patterns = {'inicio' : /^[0-9\W_]+/g,
		                  'fim'    : /[^a-zA-Z0-9@._]*$/g
	                     };

	if (dijit.byId(inputObject.id).getValue() != "") {
		if (filterType == "login") {
			for (var i in login_patterns){
				dijit.byId(inputObject.id).attr('value', dijit.byId(inputObject.id).getValue().replace(login_patterns[i],''));
			}
		}else{
			
		    dijit.byId(inputObject.id).attr('value', dijit.byId(inputObject.id).getValue().replace(generic_pattners[filterType],''));
		}
    }
}

function loading() 
{
    underlay = new dijit.DialogUnderlay({'class': 'loading'});
    underlay.show();
}

function exibirDialogConteudo(dialogName, content, title, urlRedirect, urlRedirectHide, formAction, onLoadValues, errorMessage, errorTitle, errorElements)
{
	// procurando se o dialog ja existe na sessao do usuario
	dialog = dijit.byId(dialogName);

	if (!dialog) {
		// criando dialog
		var dialog = new dijit.Dialog({title: title, content: content, id: dialogName,
										onHide: dojo.hitch(this, function(){
										
											//verificando rascunho
											if (typeof verificaElementosModificadosRascunho == 'function')
												verificaElementosModificadosRascunho();

											// verificando se o dialog possui o hidden para redirect
											if (document.getElementsByName('BasicoAutenticacaoUsuarioUrlRedirect')[0] && urlRedirectHide)
							                			window.location = urlRedirectHide;
							            })});

		// setando tempo de fadein
		dialog.duration = 500;
	}

	// verificando se os elementos devem ser carregados com valores
	if (onLoadValues) {
		dojo.addOnLoad(function() {
			carregaValoresElementos(onLoadValues);
		});

		// verificando se eh necessario mostrar uma mensagem de erro
		if (errorMessage)
			adicionaElementoMensagemErro(dialogName, errorMessage, errorTitle);

		// verificando se eh necessario marcar elementos com erro
		if (errorElements)
			marcaElementosErro(errorElements);
	}

	// verificando se eh preciso setar o hidden urlRedirect
	if (urlRedirect) {
		hiddenUrlRedirect = document.getElementsByName('BasicoAutenticacaoUsuarioUrlRedirect')[0];

		// verificando se existe o elemento hidden urlRedirect
		if (hiddenUrlRedirect)
			// setando o valor do hidden
			hiddenUrlRedirect.value = urlRedirect;
	}

	// verificando se eh preciso mudar a acao do formulario
	if (formAction) {
		document.getElementsByTagName('form')[0].action = formAction;
	}

	// mostrando dialog
	dialog.show();
}

function exibirDialogUrl(dialogName, url, title, urlRedirect, urlRedirectHide, formAction, onLoadValues, errorMessage, errorTitle, errorElements,formPai)
{    
	// verificando se o formulario tem form pai 
	if(formPai != null){

		// recuperando os elementos do tipo hashs 	
		var hashElements = $(":input[id$='Csrf']");

		// verificando elementos hash no form pai 
		for (hash in hashElements) {
			if (hashElements[hash].id != null) {
				elementHash = $("#" + hashElements[hash].id);
				if (elementHash.closest("form").attr("id") == formPai) {
				    hash = true;	
				}
			}
		}

       // verificando se o form pai permite rascunho e possui hash
       if(($("#" + formPai).attr('rascunho') == "true") && (hash == true)){
          // chamando ajax para salvar rascunho
          salvarRascunho('http://localhost/rochedo_project/public/basico/rascunho/salvar', true, formPai);	
       }
    }

    // setando os parametros do xhrGet: url, como manipular e os callbacks
    var xhrArgs = {
        url: url,
        handleAs: "text",
        load: function(data) {
        	// chamando metodo de abertura de caixa de dialogo com o conteudo da url
        	exibirDialogConteudo(dialogName, data, title, urlRedirect, urlRedirectHide, formAction, onLoadValues, errorMessage, errorTitle, errorElements);
        },
        error: function(error) {
        	// mostrando erro
            dialog.setContent("Um erro aconteceu: " + error);
        }
    };

    // carregando o conteudo da url no dialog
    dojo.xhrGet(xhrArgs);

    if (typeof initRascunho == 'function') {	
        initRascunho();
    }
}

function showDialogAlert(txtDialogId, txtTitle, txtContent, botaoFechar)
{
	if (botaoFechar == 1)
	{
	    var botaoFechar = "<br><br><center><button dojoType='dijit.form.Button' type='submit' onclick='hideDialog('"+ txtDialogId +"')'>OK</button></center>";
	}else{
		var botaoFechar = "";	
	}
	var thisdialog = new dijit.Dialog({ title: txtTitle, content: txtContent+botaoFechar});
	dojo.body().appendChild(thisdialog.domNode);
	thisdialog.closeButtonNode.style.display='none';
    thisdialog.startup();
	thisdialog.show();
}

function hideDialog(dialogId, urlRedirectHide)
{
	// localizando o dialog
	var dlg = dijit.byId(dialogId);

	// verificando se o dialog existe
	if (dlg != null) {
		// verificando se o dialog possui o hidden urlRedirect
		hiddenUrlRedirect = document.getElementsByName('BasicoAutenticacaoUsuarioUrlRedirect')[0];
		if (hiddenUrlRedirect && urlRedirectHide)
			window.location = urlRedirectHide;
		dlg.hide();
	}
}

function carregaValoresElementos(stringParametrosJson) {
	// loop para atribuir os valores dos elementos
	for (chave in stringParametrosJson) {
		// localizando o elemento (DOJO)
		elemento = dijit.byId(chave);
		
		// verificando se o elemento esta carregado no cliente
		if (elemento) {
			// setando o valor
			elemento.setValue(stringParametrosJson[chave]);
		}
		else if (!elemento) {
			// localizando o elemento
			elemento = document.getElementsByName(chave)[0];
			// verificando se o elemento esta carregado no cliente
			if (elemento)
				// setando o valor
				elemento.value = stringParametrosJson[chave];
		}
	}
}

function adicionaElementoMensagemErro(dialogName, errorMessage, errorTitle, renderizarPrimeiroElemento)
{
	// inicializando variaveis
	var arrayErrorMessages = new Array();

	// recuperando dialog
	dialog = dijit.byId(dialogName);

	// verificando se o dialog foi recuperado
	if (dialog) {

		// verificando se a mensagem de erro eh um array
		if ((errorMessage instanceof Array) === false)
			arrayErrorMessages[0] = errorMessage;
		else
			arrayErrorMessages = errorMessage;

		// criando elemento container div
		var containerDivErrorMessage = document.createElement('div');
		// setando atributos do div
		containerDivErrorMessage.id = 'divContainerError';

		// verificando se existe titulo para a mensagem de erro
		if (errorTitle) {
			// criando elemento label
			var labelContainerDivErrorMessage = document.createElement('label');
			// setando o conteudo do titulo
			labelContainerDivErrorMessage.innerHTML = '<center><b>' + errorTitle + '</b></center>';
			// adicionando elemeneto ul no container div
			containerDivErrorMessage.appendChild(labelContainerDivErrorMessage);
		}

		// criando elemento container ul
		var containerUlErrorMessage = document.createElement('ul');
		// setando o id da ul
		containerUlErrorMessage.id = 'errorUl';

		// adicionando elemeneto ul no container div
		containerDivErrorMessage.appendChild(containerUlErrorMessage);

		// loop para recuperar as mensagens de erro
		for (chave in arrayErrorMessages) {
			// criando elemento li item
			var itemErrorMessage = document.createElement('li');
			// setando o conteudo do elemento li item
			itemErrorMessage.innerHTML = arrayErrorMessages[chave];
			// adicionado o elemento ao containter ul
			containerUlErrorMessage.appendChild(itemErrorMessage);
		}

		if (renderizarPrimeiroElemento) {
			dojo.place(containerDivErrorMessage, dialog.id,  "first");
		} else {
			// adicionando o elemento container ul no dialog
			dojo.place(containerDivErrorMessage, dialog.domNode.childNodes[3].childNodes[0].childNodes[0],  "before");
		}
	}
}

function marcaElementosErro(errorElements)
{
	// loop nos elementos com erro
	for (chave in errorElements) {
		// recuperando elemento
		elemento = dijit.byId(errorElements[chave]);
		// setando estado de erro
		elemento.state = 'Error';
		elemento._setStateClass();
		dijit.setWaiState(elemento, 'invalid', 'true');
		elemento._maskValidSubsetError = true;
	}
}

function setaFocoElemento(nomeElemento)
{
	// recupernado o elemento via dojo
	elemento = recuperaElemento(nomeElemento);

	// verificando se o elemento esta carregado no cliente
	if (elemento) {
		// setando o foco no elemento
		elemento.focus();
	}
}

function setaFocoPrimeiroElementoFormulario(nomeFormulario)
{
	// recupernado o elemento via dojo
	elemento = recuperaElemento(nomeFormulario);

	// verificando se o elemento foi recuperado
	if (elemento) {
		// recuperando elementos filhos
		elementosFilhos = elemento.getChildren();

		// loop para localizar o primeiro elemento "focavel"
		for (chaveElementoFilho in elementosFilhos) {
			// verificando se o elemento eh "focavel"
			if ((elementosFilhos[chaveElementoFilho].isFocusable()) && (elementosFilhos[chaveElementoFilho].tabIndex != -1)) {
				// setando foco no elemento
				elementosFilhos[chaveElementoFilho].focus();
				// saindo do loop
				break;
			}
		}
	}
}

function recuperaElemento(nomeElemento)
{
	// recupernado o elemento via dojo
	elemento = dijit.byId(nomeElemento);

	// verificando se o elemento esta carregado no cliente
	if (!elemento) {
		// recuperando o elemento via DOM 
		elemento = document.getElementsByName(nomeElemento)[0];
	}

	return elemento;
}

function validateForm(formId, titulo, message, baseUrl) 
{
	// recuperando o formulario
    var form = dojo.byId(formId);

    // validando o formulario
    if (!form == undefined && !form.validate()) 
    {
    	// mostando mensagem de erro ao tentar submeter o formulario
	    showDialogAlert(formId, titulo, message, 1);
	    // desabilitando underlay
	    underlay.hide();

        return false;
    }

    return true;
}
	
function verificaDisponibilidade(nomeTabela, nomeCampo, stringPesquisa, idPessoa, nome, dataNascimento, urlMetodo)
{	
	if (stringPesquisa != "") {

		var urlRequest = urlMetodo + stringPesquisa + "/idPessoa/" + idPessoa + "/nome/" + nome + "/dataNascimento/" + dataNascimento; 

		// processando requisicao
		var deferred = dojoRequestAjaxAbstract('get', {url: urlRequest, handleAs: 'text', idLoadingLocation: 'BasicoCadastrarUsuarioValidadoLoginDisponivel-element'});

		// Adicionando callback adicional 
		deferred.addCallback(function(data) {
            //Replace newlines with nice HTML tags.
            data = data.replace(/\n/g, "<br>");

            //Replace tabs with spacess.
            data = data.replace(/\t/g, "&nbsp;&nbsp;&nbsp;");

            dojo.byId("BasicoCadastrarUsuarioValidadoLoginDisponivel-element").innerHTML = data;
        });		
	}else{
		dojo.byId("BasicoCadastrarUsuarioValidadoLoginDisponivel-element").innerHTML = "";
	}
}

function exibirMensagem(mensagem)
{
	humanMsg.displayMsg('<span class="indent">' + mensagem + '</span>');
}

/**
 * Função responsável por escrever mensagem de erro em elemento dojoZendFormElement.
 * 
 * @param String elementName - Nome do elemento que receberá a mensagem.
 * @param String errorMessage - Mensagem que será exibida.
 */
function adicionaMensagemErroZendDojoFormElement(elementName, errorMessage)
{
	// inicializando variaveis
	var arrayErrorMessages = new Array();

	// recuperando elemento
	element = dojo.byId(elementName);

	// verificando se o element foi recuperado
	if (element) {
		// verificando se a mensagem de erro eh um array
		if ((errorMessage instanceof Array) === false)
			arrayErrorMessages[0] = errorMessage;
		else
			arrayErrorMessages = errorMessage;

		// criando elemento ul
		var elementUlErrorMessage = document.createElement('ul');
		// setando o id da ul
		elementUlErrorMessage.id = 'errorUl';
		elementUlErrorMessage.className = 'errors';

		// loop para recuperar as mensagens de erro
		for (chave in arrayErrorMessages) {
			// criando elemento li item
			var itemErrorMessage = document.createElement('li');
			// setando o conteudo do elemento li item
			itemErrorMessage.innerHTML = arrayErrorMessages[chave];
			// adicionado o elemento li ao elemento ul
			elementUlErrorMessage.appendChild(itemErrorMessage);
		}
		// adicionando o elemento ul apos o elemento
		dojo.place(elementUlErrorMessage, element.id, "after");
	}
}


/**
 * Função responsável por limpar as mendagens dojoZendForm dos elementos e do(s) formulário(s).
 * 
 * @param String formName - Nome do formulário a ser limpo. Caso seja null, remove todas as mensagens existentes
 */
function limparMensagemErroZendDojoForm(formName)
{
	/* Limpando as mensagens dos elementos do formulários ou de todos os elementos da view */

	//verifica se o nome do formulario foi passada e se existe o formulario
	if (formName && dojo.query('form[id="' + formName + '"]'))
		parametro = 'form[id="' + formName + '"]';		
	else
		parametro = '';

	// busca todos os elementos de erros com className 'errors', do formulario passado ou de todos os formularios
	var errors = dojo.query(parametro + ' .errors');

    // remove todos os elementos encontrados
    for (var i = 0; i < errors.length; i++) {
		dojo._destroyElement(dojo.byId(errors[i]));
    }
    /* Limpando as mensagens do formulário ou de todos os formulários */ 

    // busca todas as mensagens com o id='divContainerError'  
    var mensagens = dojo.query(parametro + ' #divContainerError');
    
    // remove todas as mensagens encontradas no formulário. 
    for (var i = 0; i < mensagens.length; i++) {
		dojo._destroyElement(dojo.byId(mensagens[i]));
    }
}

/**
 * Função responsável por encontra a posição da primeira ocorrência de uma string.
 * 
 * @param String haystack
 * @param String needle
 * @param String offset
 */
function strpos (haystack, needle, offset) {
	var i = (haystack + '').indexOf(needle, (offset || 0));
	return i === -1 ? false : i;
}

/**
 * Função responsável por processar a resposta do servidor, em requisições ajax. 
 * 
 * @param json data - resposta do servidor.
 */
function processaResponseDojoFormRequest(data)
{
	console.debug('iniciando processamento da resposta....: ', data);
	if(typeof data == "error") {
    	// erro nos dados
		console.warn("error!");	
	}else{
		console.debug('dados recebidos....: ', data);

		// Carregando os dados recebidos 
		jsonResponse = data;

		// Percorrendo os módulos para adiciona-los.
        dojo.forEach(jsonResponse.view.modules, function(module)
        {
        	dojo.require(module);
            console.debug('... modulo carregado:', module);
        });

		// Limpando as mensagens de erros dos formulário.
		limparMensagemErroZendDojoForm();

		// Percorrendo os elementos HTMLs
		for (idElemento in jsonResponse.view.html)	{
			if (dojo.byId(idElemento)) {
				// Retorna os elementos filhos que estão na raiz do elemento pai
				var elementosDestroy = dojo.query('>*', idElemento);

				// Carregando array com os Ids dos elementos que serão destruídos.
				var iDsElementosDestroy = new Array();
				for (var i = 0; i < elementosDestroy.length; i++) {
					if (elementosDestroy[i].id != '') {
						iDsElementosDestroy[i] = elementosDestroy[i].id;	
					}
				}

			    // Remove todos os elementos filhos do elemento pai, que estão registrados no dojo.
				dijit.registry.forEach(function(w){
					var position = dojo.indexOf(iDsElementosDestroy, w.id);
					
					if(position >= 0){
						w.destroyRecursive();
					}
				});

				// Adicionando conteúdo ao elemento.
				dojo.byId(idElemento).innerHTML = jsonResponse.view.html[idElemento];

				// verifica se existe scripts no html para serem processados
				console.warn('verifica se existe scripts no html para serem processados');
				//processaScript(jsonResponse.view.html[idElemento]);
			}
		}  
	    
		if (dojo.byId(jsonResponse.view.idResponseSource)) {
			// Recebendo as mensagens zendFormsMessages
			zendFormsMessages = jsonResponse.view.zendFormsMessages;

			// Limpando as mensagens de erros no formulário.
			limparMensagemErroZendDojoForm(jsonResponse.view.idResponseSource);

			// Verificando se existe mensagems zendFormsMessages.
			if (zendFormsMessages.length != 0) {

				// Percorrendo as mensagens zendFormsMessages
				for (form in zendFormsMessages)	{

					formulario = dijit.byId(form);
					class_form = formulario.declaredClass;					

					// Percorrendo os formulários com as mensagens
					for (nomeElementForm in zendFormsMessages[form]) {

						nomeElemento = form + '-' + nomeElementForm;
						elementoFormulario = dojo.byId(nomeElemento);

						// Percorrendo as mensagens do formulário
						for (mensagens in zendFormsMessages[form][nomeElementForm]) {

							mensagem = zendFormsMessages[form][nomeElementForm][mensagens];							
							elemento = dojo.byId(nomeElementForm);

							// Verificando se o elemento é hidden Csrf existe.;
							if (elemento != null && elemento.type == 'hidden' && strpos(elemento.name, 'Csrf', 0)) {
								adicionaElementoMensagemErro(formulario.id, mensagem, 'Atenção', true);
								continue;
							}

							// Setando a mensagem de erro no elemento.
							adicionaMensagemErroZendDojoFormElement('widget_' + nomeElementForm, mensagem);
						}
					}
				}
				
			}
		}

		// Parser dojo.
		dojo.parser.parse();

		// Percorrendo os dijits.
		dojo.forEach(jsonResponse.view.dijits, function(info, i) {

        	var n = dojo.byId(info.id);
        	if (null != n) {
        		// Setando os atributos do dijit
            	dojo.attr(n, dojo.mixin({ id: info.id }, info.params));
        	}
        });

		// Percorrendo os scripts
		scripts = jsonResponse.view.scripts;
		console.debug('iniciando scripts...');
		for (script in scripts)	{
			// Processando o script
			processaScript(scripts[script]);
			console.debug('script processado', scripts[script]);
		}
		console.debug('final scripts...');

		// Processando header
		header = jsonResponse.view.header;
		console.debug('iniciando header...');
		for (item in header) {
			// Processando o script	
			//eval(scripts[script]);
			switch(item) {
			
			case 'title':
				console.debug('head title nao implementado...');
				//processa title;
				// implementar...
				break;
				
			case 'script':
				console.debug('head script...');
				//processa script;
				if ((header[item] instanceof Array) === true) {
					for (script in header[item]) {
						if (header[item][script] != null) {
							processaScript(header[item][script]);
							console.debug('script processado', header[item][script]);
						}
					}
				} else {
					processaScript(header[item]);
					console.debug('script processado', header[item]);
				}
				break;
				
			case 'link' :
				//processa link;
				processaHeaderLink(header[item]);
				console.debug('link processado:', header[item]);
				break;
			}
		}
		console.debug('final header...');
	}	
}


/**
 * Função responsável por solicitar requisições dojo ajax, via GET ou POST
 * 
 * @param String method - Método de requisição. POST ou GET
 * @param Array arrayParametros - 
 * 			Parametros: 
 * 				urlCall				- URL a ser chamada.
 * 				form 				- formulário a ser enviado. Exe.: this.domNode 
 * 				content				- Variáveis que podem ser enviadas na requisição. Formato: {chave1: valor1, cheve2: valor2} .
 * 				handleAs			- Especifica como os dados da resposta do servidor são tratados. Tipos: 'json' , 'text', 'xml'.
 * 				timeOut
 * 				headers				- Cabeçalho a ser venviado na requisição. Formato: {chave1: valor1, cheve2: valor2} . 
 * 				loadFunction 		- Função a ser processada após a resposta, caso sucesso. Exe.: "alert('load function');" .
 * 				loadFunctionData 	- Função a ser processada após a resposta, caso sucesso, tendo como parametro, a resposta do servidor. 
 * 									  Exe.: 'nomeFuncaoProcessadaAposResposta' sem().
 * 				handleFunction 		- Função a ser processada sempre após a resposta do servidor. Exe.: "alert('handle function');" .
 * 				handleFunctionData 	- Função a ser processada sempre após a resposta do servidor. Exe.: 'nomeFuncaoProcessadaAposResposta' sem().
 * 				idLoadingLocation 	- Id do elemento onde o loading deverá aparecer. Caso este parametro não seja passado, o loading será exibido de forma modal.
 * 								 	  Exe.: 'idElementoLoading'.
 * @return dojo.Deferred - Este objeto permite definir callbacks adicionais para o sucesso e condições de erro.
 * 
 */
function dojoRequestAjaxAbstract(method, arrayParametros){
	
	var urlCall			   = arrayParametros['url'];
	var formContent		   = arrayParametros['form'];
	var contentValues	   = arrayParametros['content'];
	var handleAsValue	   = arrayParametros['handleAs'];
	var timeOut			   = arrayParametros['timeOut'];
	var headersValue	   = arrayParametros['headersValue'];
	var loadFunction       = arrayParametros['loadFunction'];
	var loadFunctionData   = arrayParametros['loadFunctionData'];
	var handleFunction     = arrayParametros['handleFunction'];
	var handleFunctionData = arrayParametros['handleFunctionData'];
	var errorFunction      = arrayParametros['errorFunction'];
	var errorFunctionData  = arrayParametros['errorFunctionData'];
	var idLoadingLocation  = arrayParametros['idLoadingLocation'];
	
	// Verificando se o Loading deve ser exibido de forma modal ou em um elemento específico.
	if (idLoadingLocation == undefined) {
		// processando o Loading de forma modal.
		loading();
	} else if (dojo.byId(idLoadingLocation)) {
		// processando o Loading no elemento passado como parametro.
		dojo.byId(idLoadingLocation).innerHTML = "<img src='/rochedo_project/public/images/loading.gif' style='width: 15px; height: 15px;'>";
	}

	if (handleAsValue == undefined) {
		handleAsValue = 'json';
	}
	var xhrArgs = {
			url: urlCall,
    		form: formContent,
    		content: contentValues,
			handleAs: handleAsValue,
			preventCache: true,			
			timeout: timeOut,
            headers: headersValue,

			load: function(data,args){
				console.debug('iniciando load function....');
	            if (loadFunction != undefined) {
					console.debug('load Function: ', loadFunction);
					var resultLoadFunction = eval(loadFunction);
				}
				if (loadFunctionData != undefined) {
					console.debug('load FunctionData: ', loadFunctionData + '(dataResponse)');
			    	var nomeFunctionLoadData = loadFunctionData + "(" + args.xhr.responseText + ")";
			    	console.debug('iniciando call function...');
			    	var resultLoadFunctionData = eval(nomeFunctionLoadData);
			    	console.debug('concluido call function...');
				}
				console.debug('Concluido load function....');
			},

			handle: function(error, ioargs) {
				console.debug('iniciando handle function....');
				var message = "";

			    switch (ioargs.xhr.status) {
			    	case 200:
			        	message = "Sucesso na resposta.";
			            break; 
			        case 404:
			        	message = "A página requisitada não pode ser encontrada";
			            break;
			        case 500:
			            message = "O servidor reportou um erro.";
			            break;   
			        case 407:
						message = "Você precisa se autenticar com um proxy.";
			            break;
			        default:
			            message = "Erro desconhecido.";
			    }
			    console.debug(message);
			    if (handleFunction != undefined) {
			    	console.debug('handle Function: ', handleFunction);
			    	var resultHandleFunction = eval(handleFunction);
				}
			    if (handleFunctionData != undefined) {
			    	console.debug('handle FunctionData: ', handleFunctionData +'(dataResponse)');
			    	var nomeFunctionHandleData = handleFunctionData + "(" + ioargs.xhr.responseText + ")";
			    	console.debug('iniciando handleFunctionData function...');
			    	var resultHandleFunctionData = eval(nomeFunctionHandleData);
			    	console.debug('concluido handleFunctionData function...');
				}

			    // Desligando Loading...
			    if (idLoadingLocation == undefined) {
			    	underlay.hide();
				} else {
					dojo.byId(idLoadingLocation).innerHTML = "";
				}

			    console.debug('Concluido handle function....');
			},
			
			error: function(error, ioargs) {
	            console.debug("Um erro inesperado ocorreu:");
	            if (errorFunction != undefined) {
			    	console.debug('error Function: ', errorFunction);
			    	var resultErrorFunction = eval(errorFunction);
				}
			    if (errorFunctionData != undefined) {
			    	var nomeFunctionErrorData = errorFunctionData + "(" + ioargs.xhr.responseText + ")";
			    	console.debug('iniciando errorFunctionData function...');
			    	var resultErrorFunctionData = eval(nomeFunctionErrorData);
			    	console.debug('concluido errorFunctionData function...');
				}
	        }
    };
	
	// chamando o loading...
	console.debug('Parametros xhrRequest: ', xhrArgs);

	method = method.toLowerCase();
	switch(method) {

	case 'post':
		return dojo.xhrPost(xhrArgs);
		break;

	case 'get':
		return dojo.xhrGet(xhrArgs);
		break;
	}
}


/**
 * função processa headerLink
 * @param String headerLink - link que será processado.
 */
function processaHeaderLink(headerLink){
	if (headerLink == null || headerLink == '')
		return;
	
	var ini, pos_href, fim, codigo, texto_pesquisa;
	var objScript = null;
	//Joga na variavel de pesquisa o texto todo em minusculo para na hora da pesquisa nao ter problema com case-sensitive
	texto_pesquisa = headerLink.toLowerCase();
	// Busca a primeira tag <script
	ini = texto_pesquisa.indexOf('<link', 0);
	// Executa o loop enquanto achar um <script
	
	var ii = 0;
	while (ini!=-1){
		//Inicia o objeto script
		var objLink = document.createElement("link");

		//Busca se tem algum src a partir do inicio do script
		pos_href = texto_pesquisa.indexOf(' href', ini);
		// Define o inicio para depois do fechamento dessa tag
		ini = texto_pesquisa.indexOf('>', ini) + 1;

		//Verifica se este e um bloco de script ou include para um arquivo de scripts
		if (pos_href >=0){//Se encontrou um "src" dentro da tag script, esta e um include de um arquivo script
			//Marca como sendo o inicio do nome do arquivo para depois do src
			ini = pos_href + 7;
			//Procura pelo ponto do nome da extencao do arquivo e marca para depois dele
			fim = texto_pesquisa.indexOf('.css', ini)+4;
			//Pega o nome do arquivo
			codigo = headerLink.substring(ini,fim);
			// Adiciona o arquivo de script ao objeto que sera adicionado ao documento
			objLink.href = codigo;
			
			var headID = document.getElementsByTagName("head")[0];
			objLink.type = 'text/css';
			objLink.rel = 'stylesheet';
			objLink.media = 'screen';
			
			//Adiciona o link ao documento
			headID.appendChild(objLink);
		}
		
		// Procura a proxima tag de <script
		ini = headerLink.indexOf('<link', fim);

		//Limpa o objeto de script
		objLink = null;
	}
}

/**
 * Função processa javacript
 * @param String texto - Texto contendo script que será processado.
 * @param Boolean processaScriptEvent - Se true, processa os scripts que estão relacionados a algum evento.  
 */
function processaScript(texto, processaScriptEvent){
	if (texto == null || texto == '')
		return;

	var ini, pos_src, fim, codigo, texto_pesquisa;
	var objScript = null;
	
	//Joga na variavel de pesquisa o texto todo em minusculo para na hora da pesquisa nao ter problema com case-sensitive
	texto_pesquisa = texto.toLowerCase();
	// Busca a primeira tag <script
	ini = texto_pesquisa.indexOf('<script', 0);
		
	// Executa o loop enquanto achar um <script
	while (ini!=-1){
				
		//Inicia o objeto script
		var objScript = document.createElement("script");
		
		//Busca se tem algum event a partir do inicio do script até >
		pos_event = texto_pesquisa.substring(ini, texto_pesquisa.indexOf('>', ini)).indexOf(' event');
				
		//Busca se tem algum src a partir do inicio do script ate >
		pos_src = texto_pesquisa.substring(ini, texto_pesquisa.indexOf('>', ini)).indexOf(' src');
		
		// Define o inicio para depois do fechamento dessa tag
		ini = texto_pesquisa.indexOf('>', ini) + 1;

		//Verifica se este e um bloco de script ou include para um arquivo de scripts
		if (pos_src < ini && pos_src >=0){//Se encontrou um "src" dentro da tag script, esta e um include de um arquivo script
			//Marca como sendo o inicio do nome do arquivo para depois do src
			ini = pos_src + 6;
			//Procura pelo ponto do nome da extencao do arquivo e marca para depois dele
			fim = texto_pesquisa.indexOf('.js', ini)+3;
			// Pega o nome do arquivo
			codigo = texto.substring(ini,fim);
			// Adiciona o arquivo de script ao objeto que sera adicionado ao documento
			objScript.src = codigo;
		}else{//Se nao encontrou um "src" dentro da tag script, esta e um bloco de codigo script
			// Procura o final do script
			fim = texto_pesquisa.indexOf('</script>', ini);
			// Extrai apenas o script
			codigo = texto.substring(ini,fim);
			// Adiciona o bloco de script ao objeto que sera adicionado ao documento
			objScript.text = codigo;
		}

		if (pos_event >=0 && !processaScriptEvent){
			pos_event = -1;
		} else {
			//Adiciona o script ao documento
			document.body.appendChild(objScript);
		}
				
		// Procura a proxima tag de <script
		ini = texto.indexOf('<script', fim);

		//Limpa o objeto de script
		objScript = null;
	}
}

/**
 * função que transporta o login escolhido, para o campo login do formulario de cadastro de usuario validado
 * @param String urlMetodo 
 */
function carregaSugestaoLogin(urlMetodo) {
	// recuperando o valor da opção de login escolhida pelo usuario
	for (var i=0; i < document.forms['BasicoSugestaoLogin'].BasicoSugestaoLoginSugestaoLogin.length; i++)
	{
	   if (document.forms['BasicoSugestaoLogin'].BasicoSugestaoLoginSugestaoLogin[i].checked)
       {
	      var radioValue = document.forms['BasicoSugestaoLogin'].BasicoSugestaoLoginSugestaoLogin[i].value;
	   }
	}
	
	// setando valor do campo login
	dijit.byId('BasicoCadastrarUsuarioValidadoLogin').setValue(radioValue);
	// escondendo o dialog de sugestao
	hideDialog('Basico_Form_SugestaoLogin');
	// executando funcao para verificar a disponibilidade do login escolhido
	verificaDisponibilidade('login', 'login', radioValue, dojo.byId('idPessoa').value, dojo.byId('BasicoCadastrarUsuarioValidadoNome').value, dojo.byId('BasicoCadastrarUsuarioValidadoDataNascimento').value, urlMetodo);
}

/**
 * Timer para executar funcoes
 *
 * @param interval Int
 * @param callBack String
 * 
 */
function timer(interval,callBack){
	if(!isNaN(interval)){
	   window.setInterval(callBack, interval);
	}else{
	
	}
}

/**
 * Adiciona um texto a um elemento html
 * 
 * @param String idElemento
 * @param String texto
 * @param String separador
 * 
 * @return void
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 27/05/2012
 */
function adicionaTextoElementoHtml(idElemento, texto, separador) {
	// recuperando o valor atual do elemento
	var valorAtual = $('#' + idElemento).val();

	// verificando se o valor atual é vazio
	if (valorAtual == '') {
		// setando o valor do elemento com o conteúdo do valor atual
		$('#' + idElemento).val(texto);
	} else {
		// setando o valor do elemento com o conteúdo do valor atual adicionado do novo valor
		$('#' + idElemento).val(valorAtual + separador + texto);
	}
}