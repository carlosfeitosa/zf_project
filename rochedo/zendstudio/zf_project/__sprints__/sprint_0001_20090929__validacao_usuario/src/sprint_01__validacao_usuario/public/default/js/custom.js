function setUpFCK() 
{
	var elements = getElementsByAttribute(document, 'textarea', 'label', 'fckeditor');
	for(i = 0; i<elements.length; i++)
	{
		var oFCKeditor = new FCKeditor(elements[i].name);
		oFCKeditor.BasePath = "/js/fckeditor/" ;
		oFCKeditor.Height = 400;
		oFCKeditor.ReplaceTextarea();
	}
}

/*
Copyright Robert Nyman, http://www.robertnyman.com
Free to use if this text is included
*/
function getElementsByAttribute(oElm, strTagName, strAttributeName, strAttributeValue){
var arrElements = (strTagName == "*" && oElm.all)? oElm.all : oElm.getElementsByTagName(strTagName);
var arrReturnElements = new Array();
var oAttributeValue = (typeof strAttributeValue != "undefined")? new RegExp("(^|\\s)" + strAttributeValue + "(\\s|$)") : null;
var oCurrent;
var oAttribute;
for(var i=0; i<arrElements.length; i++){
	oCurrent = arrElements[i];
	oAttribute = oCurrent.getAttribute && oCurrent.getAttribute(strAttributeName);
	if(typeof oAttribute == "string" && oAttribute.length > 0){
		if(typeof strAttributeValue == "undefined" || (oAttributeValue && oAttributeValue.test(oAttribute))){
			arrReturnElements.push(oCurrent);
		}
	}
}
return arrReturnElements;
}