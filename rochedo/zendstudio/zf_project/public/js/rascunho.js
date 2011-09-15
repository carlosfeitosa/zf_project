/**
* Inicializa array com os dados iniciais do form
*
*/
function initRascunho() 
{
	$(':input').each(function() {
		
		if($(this).attr("type") != 'submit' && $(this).attr("type") != 'button' && $(this).attr("id") != null){

			if ($(this).attr("type") == 'radio') {
				if ($(this).attr("checked") != '')
					$(this).data('initialValue', $(this).attr("checked"));
				else
					$(this).data('initialValue', null);
			}
			else {
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
 */
function salvarRascunho(urlPost) 
{
	console.debug('salvar rascunho chamado.');

	// recuperando os ids dos elementos modificados	
	var arrayChangedElements = formChangesCheck();	

	// verificando se existem elementos modificados
	if (arrayChangedElements.length > 0) {
		// inicializando variaveis
		var arrayNomesFormsPais = new Array();	
		var i = 0;
	
		// recuperando os nome dos forms pais 
		for (element in arrayChangedElements) {
			
			var nomeFormPai = $("#" + arrayChangedElements[element]).closest("form").attr("id");
			
			var permiteRascunho = ($("#" + nomeFormPai).attr("rascunho") == "true");

			if ((jQuery.inArray(nomeFormPai, arrayNomesFormsPais) == -1) && (permiteRascunho)) {
				arrayNomesFormsPais[i] = nomeFormPai;
				i++;
			}
		}

		//percorrendo os forms para montagem do post
		for (form in arrayNomesFormsPais) {
			// inicializando variavel do post
			var postData = "";
			// recuperando o nome do form
			var nomeForm =	arrayNomesFormsPais[form];
			// inicio montando do post
			postData += '{"formName": "' + nomeForm + '"';		
			
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

			postData += "}";

			$.post(urlPost, jQuery.parseJSON(postData));
	
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
	timer(10000,"salvarRascunho('http://localhost/rochedo_project/public/basico/rascunho/salvar')");
	

});
