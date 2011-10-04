/**
* Inicializa array com os dados iniciais do form
*
*/
function initRascunho() 
{	
	// loop para carregar o array inicial de elemenstos 
	$(':input').each(function() {
		
		// verificando tipos e elementos 
		if($(this).attr("type") != 'submit' && $(this).attr("type") != 'button' && $(this).attr("id") != null){
			
			// verificano se e do tip radio
			if ($(this).attr("type") == 'radio') {
				// carregando valor inicial do elemento no array				
				if ($(this).attr("checked") != '')
					$(this).data('initialValue', $(this).attr("checked"));
				else
					$(this).data('initialValue', null);
			}else {
				// carregando valor inicial do elemento no array
				if ($(this).val() != '')
					$(this).data('initialValue', $(this).val());
				else
					$(this).data('initialValue', null);
			}
		}
    });
}

/**
 * Checa mudanças nos campos dos formularios
 * @returns Array
 */
function formChangesCheck() 
{
	
	var msg = 'There are unsaved changes:';
	var changed = false;
	var arrayChangedElements = new Array();
	var current = '';
	var i = 0;

	$(':input').each(function () {
		
		if ($(this).attr("type") != 'submit' && $(this).attr("type") != 'button' && $(this).attr("id") != null) {
		
			if ($(this).attr("type") == 'radio') {
				if ($(this).attr("checked") != '')
					current = $(this).attr("checked");
				else
					current = null;
			}
			else {
				if ($(this).val() != '')
					current = $(this).val();
				else
					current = null;
			}
			
			if (($(this).data('initialValue') != current)){
				changed = true;
				arrayChangedElements[i] = $(this).attr("id");

			}
		
		}
		i++;

	});

	return arrayChangedElements;
}



/**
 * Funcao que dispara uma requisicao ajax para salvar o rascunho de cada formulario que possue campos que foram modificados
 * @param arrayElementosValores
 * @param forceSave
 */
function salvarRascunho(urlPost,forceSave,nomeFormPai) 
{

	console.debug('salvar rascunho chamado.'+forceSave+'-'+nomeFormPai);
	// recuperando os ids dos elementos modificados	
	var arrayChangedElements = formChangesCheck();	
	
	// verificando se existem elementos modificados
	if (arrayChangedElements.length > 0 || forceSave == true) {
		// inicializando variaveis
		var arrayNomesFormsPais = new Array();	
		var i = 0;
		
		// verificando se formPai existe
		if(nomeFormPai){
		   // carregando form pai no caso de dialog
		   arrayNomesFormsPais[0] = nomeFormPai;	
		   i = 1;
		}

		// recuperando os nome dos forms pais 
		for (element in arrayChangedElements) {
			// carregando nome do form dos elementos
			var nomeFormPai = $("#" + arrayChangedElements[element]).closest("form").attr("id");
			// verificando se o form permite rascunho
			var permiteRascunho = ($("#" + nomeFormPai).attr("rascunho") == "true");
			// verificano se o forma ja existe no array
			if ((jQuery.inArray(nomeFormPai, arrayNomesFormsPais) == -1)) {
				// carregando o nome do  forme no array
				arrayNomesFormsPais[i] = nomeFormPai;
				i++;
			}
		}

		  

		// recuperando os elementos do tipo hashs 	
		var hashElements = $(":input[id$='Csrf']");
	
		//percorrendo os forms para montagem do post
		for (form in arrayNomesFormsPais) {
			// inicializando variavel do post
			var postData = "";
			// recuperando o nome do form
			var nomeForm =	arrayNomesFormsPais[form];		
			// recuperando o action do form 
			var acaoForm = $("#" + nomeForm).attr('action');

			if (!acaoForm) {
				alert('ERRO ao salvar rascunho: Form action não encontrado para o form: ' + nomeForm);
				return false;
			}

			// inicio montando do post
			postData += '{"formName": "' + nomeForm + '", "' + 'formAction": "' + acaoForm + '"';		
			
			// percorrendo elementos
			for (element in arrayChangedElements) {
				// recuperando o nome do elemento
				var nomeElemento  = arrayChangedElements[element];
				// verificando se elemento pertence ao form 
				if ($("#" + nomeElemento).closest("form").attr("id") == nomeForm) {
	 				// recuperando o valor do elemento
					var valorElemento = $("#" + nomeElemento).val();
					// inserindo elemento no post
					postData += ', "' + nomeElemento + '": "' + valorElemento + '"'; 
				}
			}

			// adicionando elemento hash no post do form corrente
			var hashAdicionado = false;
			for (hash in hashElements) {
				if (hashElements[hash].id != null) {
					elementHash = $("#" + hashElements[hash].id);
					if (elementHash.closest("form").attr("id") == nomeForm) {
						postData += ', "' + hashElements[hash].id + '": "' + elementHash.val() + '"';
						hashAdicionado = true;
					}
				}
			}

			if (hashAdicionado != true) {
				alert('ERRO: Form hash não encontrado para o form ' + nomeForm);
				return false;
			}			

			postData += "}";

			$.post(urlPost, jQuery.parseJSON(postData),
			  function (data) {
				processaResponseDojoFormRequest(data);
		
			  },
			  "json"
			);
	
		}		

	}else{
		return false;
	}
}

/**
 * Chamando funcoes do rascunho quando o documento estiver carregado
 */
$(document).ready(function() {
	// Handler for .ready() called.

	initRascunho();
	timer(10000,"salvarRascunho('http://localhost/rochedo_project/public/basico/rascunho/salvar',false,null)");
	

});
