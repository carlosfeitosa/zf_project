function validateForm(formid) {
var form = dijit.byId(formid);
if (!form.validate()) {
alert("Verifique os campos marcados antes de continuar.");
return false;
}

return true;
}


