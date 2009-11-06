$(document).ready(function(){
	$("#date").datepicker({
	showOn: "both",
 	dateFormat: "yy-mm-dd", 
    buttonImage: "/public/admin/img/calendar.gif", 
    buttonImageOnly: true});

	$("#date1").datepicker({
	showOn: "both",
 	dateFormat: "yy-mm-dd", 
  buttonImage: "/public/admin/img/calendar.gif", 
  buttonImageOnly: true});

$("#date2").datepicker({
	showOn: "both",
 	dateFormat: "yy-mm-dd", 
  buttonImage: "/public/admin/img/calendar.gif", 
  buttonImageOnly: true});
 });

function resize_centre_field() {
	var centrefield = $("#center_window").width();
   var header = $("#header").width();
   alert(header);
   if(centrefield > (header / 2)) {
	   $("#center_window").width((header/2));
   }
}