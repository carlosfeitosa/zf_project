var v_obj;
var v_fun;

function mascara(element,arrayFunctionsNames){
    
	v_obj = dijit.byId(element.id);
	
	for (functionName in arrayFunctionsNames) {
    	v_fun = arrayFunctionsNames[functionName];
        setTimeout("execmascara()",1);
    }
    
}

function execmascara(){
	dojo.byId(v_obj.id).value = v_fun(dojo.byId(v_obj.id).value);
}

function m_leech(v){
    v=v.replace(/o/gi,"0");
    v=v.replace(/i/gi,"1");
    v=v.replace(/z/gi,"2");
    v=v.replace(/e/gi,"3");
    v=v.replace(/a/gi,"4");
    v=v.replace(/s/gi,"5");
    v=v.replace(/t/gi,"7");
    return v;
}

function m_data(v){
    v=v.replace(/\D/g,""); 
    v=v.replace(/(\d{2})(\d)/,"$1/$2"); 
    v=v.replace(/(\d{2})(\d)/,"$1/$2"); 
    return v;
}

function m_soNumeros(v){
	return v.replace(/\D/g,"");
}

function m_telefone(v){
    v=v.replace(/\D/g,"");                 //Remove tudo o que não é dígito
    v=v.replace(/^(\d\d)(\d)/g,"($1) $2"); //Coloca parênteses em volta dos dois primeiros dígitos
    v=v.replace(/(\d{4})(\d)/,"$1-$2");    //Coloca hífen entre o quarto e o quinto dígitos
    return v;
}

function m_cpf(v){
    v=v.replace(/\D/g,"");                    //Remove tudo o que não é dígito
    v=v.replace(/(\d{3})(\d)/,"$1.$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
    v=v.replace(/(\d{3})(\d)/,"$1.$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
                                             //de novo (para o segundo bloco de números)
    v=v.replace(/(\d{3})(\d{1,2})$/,"$1-$2"); //Coloca um hífen entre o terceiro e o quarto dígitos
    return v;
}

function m_cep(v){
    v=v.replace(/\D/g,"");                //Remove tudo o que não é dígito
    v=v.replace(/^(\d{5})(\d)/,"$1-$2"); //Esse é tão fácil que não merece explicações
    return v;
}

function m_decimal_1_2(v){
    v=v.replace(/\D/g,",");
    v=v.replace(/^(\d{1}(\d{0}$))/,"0,0$1");
    v=v.replace(/^(0{1}),(0{1})(\d{1}$)/,"0,$2$3");
    v=v.replace(/^(0{1}),(\d{1})(\d{1})(\d{1}$)/,"$2,$3$4");
    v=v.replace(/^(0{1}),(\d{1})(\d{1})(\d{1})(\d{1}$)/,"$2,$3$4");
    v=v.replace(/^(\d{1}),(\d{1})(\d{1})(\d{1}$)/,"$1,$2$3");
    v=v.replace(/^(\d{1}),(\d{1})(\d{1})(\D$)/,"$1,$2$3");
    return v;
}

function m_completa_decimal_1_2(v) {
	v=v.replace(/^(\d{1})(\d{0}$)/,"$1,00");
    v=v.replace(/^(\d{1})(\d{1}$)/,"$1,$20");
    v=v.replace(/^(\d{1},)(\d{1}$)/,"$1$20");
    v=v.replace(/^(\d{1},)(\d{2}$)/,"$1$2");
	return v;
}

function m_decimal_3_3(v){
	v=v.replace(/\D/g,"");  //permite digitar apenas números
    v=v.replace(/[0-9]{7}/,"");   //limita pra máximo 999,999
    v=v.replace(/(\d{2})(\d{0})$/,"$1,");  //coloca ponto antes dos últimos 8 digitos
    v=v.replace(/(\d{2},)(\d{1})(\d{0})$/,"$1$2");  //coloca ponto antes dos últimos 8 digitos
    v=v.replace(/(\d{2},)(\d{2})(\d{0})$/,"$1$2");  //coloca ponto antes dos últimos 8 digitos
    v=v.replace(/(\d{2},)(\d{3})(\d{0})$/,"$1$2");  //coloca ponto antes dos últimos 8 digitos
    v=v.replace(/(\d{2}),(\d{1})(\d{2})(\d{1})$/,"$1$2,$3$4");  //coloca ponto antes dos últimos 5 digitos
    
    return v;
}

function m_completa_decimal_3_3(v) {
	v=v.replace(/^(\d{1})(\d{0}$)/,"$1,000");
    v=v.replace(/^(\d{1},)(\d{1}$)/,"$1$200");
    v=v.replace(/^(\d{1},)(\d{2}$)/,"$1$20");
    v=v.replace(/^(\d{2})(\d{0}$)/,"$1,000");
    v=v.replace(/^(\d{2},)(\d{0}$)/,"$1000");
    v=v.replace(/^(\d{2},)(\d{1}$)/,"$1$200");
    v=v.replace(/^(\d{2},)(\d{2}$)/,"$1$20");
    v=v.replace(/^(\d{2})(\d{3}$)/,"$1,$2");
    v=v.replace(/^(\d{3})(\d{0}$)/,"$1,000");
    v=v.replace(/^(\d{3}),(\d{0}$)/,"$1,000");
    v=v.replace(/^(\d{3}),(\d{1}$)/,"$1,$200");
    v=v.replace(/^(\d{3},)(\d{2}$)/,"$1$20");
    v=v.replace(/^(\d{3})(\d{3}$)/,"$1,$2");
	return v;
}

function m_cnpj(v){
    v=v.replace(/\D/g,"");                           //Remove tudo o que não é dígito
    v=v.replace(/^(\d{2})(\d)/,"$1.$2");             //Coloca ponto entre o segundo e o terceiro dígitos
    v=v.replace(/^(\d{2})\.(\d{3})(\d)/,"$1.$2.$3"); //Coloca ponto entre o quinto e o sexto dígitos
    v=v.replace(/\.(\d{3})(\d)/,".$1/$2");           //Coloca uma barra entre o oitavo e o nono dígitos
    v=v.replace(/(\d{4})(\d)/,"$1-$2");              //Coloca um hífen depois do bloco de quatro dígitos
    return v;
}

function m_romanos(v){
    v=v.toUpperCase();             //Maiúsculas
    v=v.replace(/[^IVXLCDM]/g,""); //Remove tudo o que não for I, V, X, L, C, D ou M
    //Essa é complicada! Copiei daqui: http://www.diveintopython.org/refactoring/refactoring.html
    while(v.replace(/^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/,"")!="")
        v=v.replace(/.$/,"");
    return v;
}