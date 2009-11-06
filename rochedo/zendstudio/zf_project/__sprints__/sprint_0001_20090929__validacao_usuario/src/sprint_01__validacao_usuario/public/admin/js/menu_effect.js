$(document).ready(function(){		   	

	//hide the menus
	$("#hide_menu").click(function () {
      $("#left_region").hide("slide");
	  $("#content").fadeOut(250);
	  $("#content").attr("id", 'content2');
	  $("#content2").fadeIn(250);
	  $("#showing_menu_bar").fadeIn(200);
	  $.ajax({
		  type: "POST",
		  url: "/admin/index/setsession/showing/0/"
		});
	});


	$("#show_menu").click(function () {
      $("#left_region").show("slide");
	  $("#content2").fadeOut(250);
	  $("#content2").attr("id", 'content');
	  $("#content").fadeIn(250);
	  $("#showing_menu_bar").fadeOut(200);
	  $.ajax({
		  type: "POST",
		  url: "/admin/index/setsession/showing/1/"
		});
	});
});
