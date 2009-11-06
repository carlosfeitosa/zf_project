$(document).ready(function(){
   //$('#center_window').tabs();
   //alert(document.ge()tElementById('header').offsetWidth);
  // resize_centre_field() ;
	$("#date").datepicker({
	showOn: "both",
 	dateFormat: "d-m-yy", 
  buttonImage: "/img/calendar.gif", 
  buttonImageOnly: true});

	$("#date1").datepicker({
	showOn: "both",
 	dateFormat: "d-m-yy", 
  buttonImage: "/img/calendar.gif", 
  buttonImageOnly: true});

$("#date2").datepicker({
	showOn: "both",
 	dateFormat: "d-m-yy", 
  buttonImage: "/img/calendar.gif", 
  buttonImageOnly: true});

	//$('#center_window > ul').tabs();
	$("#graph_show").click(function() {
			$("#graph_data").css('display', 'none');
			$("#graph_graph").css('display', '' );
			$(this).parents('span').removeClass('graph_link');
			$(this).parents('span').addClass('graph_link_active');
			$("#data_show2").parents('span').removeClass();
			$("#data_show2").parents('span').addClass('graph_link');
			
	});
	
	$("#data_show2").click(function() {
			$("#graph_data").css('display', '');
			$("#graph_graph").css('display', 'none' );
			$(this).parents('span').removeClass('graph_link');
			$(this).parents('span').addClass('graph_link_active');
			$("#graph_show").parents('span').removeClass();
			$("#graph_show").parents('span').addClass('graph_link');
	});
	
	$("#data_show").click(function() {
			$("#graph_data").css('display', '');
			$("#linechart").css('display', 'none' );
			$("#barchart").css('display', 'none' );
			$(this).parents('span').removeClass('graph_link');
			$(this).parents('span').addClass('graph_link_active');
			$("#bar_chart").parents('span').removeClass();
			$("#bar_chart").parents('span').addClass('graph_link');
			$("#line_chart").parents('span').removeClass();
			$("#line_chart").parents('span').addClass('graph_link');
	});
	
	
	$("#bar_chart").click(function() {
			$("#linechart").css('display', 'none');
			$("#graph_data").css('display', 'none');
			$("#barchart").css('display', '' );
			$(this).parents('span').removeClass('graph_link');
			$(this).parents('span').addClass('graph_link_active');
			$("#line_chart").parents('span').removeClass();
			$("#line_chart").parents('span').addClass('graph_link');
			$("#data_show").parents('span').removeClass();
			$("#data_show").parents('span').addClass('graph_link');
			
	});
	
	$("#line_chart").click(function() {
			$("#linechart").css('display', '');
			$("#barchart").css('display', 'none');
			$("#graph_data").css('display', 'none');
			$(this).parents('span').removeClass('graph_link');
			$(this).parents('span').addClass('graph_link_active');
			$("#bar_chart").parents('span').removeClass();
			$("#bar_chart").parents('span').addClass('graph_link');
			$("#data_show").parents('span').removeClass();
			$("#data_show").parents('span').addClass('graph_link');
	});
	
	//$('#compare_start').datepicker();
	$('#showing_compare').click(function() {
			$('#comparing').toggle();							 
	});


   //alert(centrefield);
   $(window).resize(function(){
  	//resize_centre_field() ;
	});

   $('#time_set').change(function() {
					$('#custom_time').css('display', '');
					$('#comparing_period').html('custom period');
				
	});
   
   /*$('#sensortype').change(function() {
		if($(this).val() == 1) {
			$('#sensorunit').val('m3');			
		} else if($(this).val() == 2) {
			$('#sensorunit').val('m3');			
		} else {
			$('#sensorunit').val('kW/h');
		}
	});*/


  $("a.details").bind('click', function () {
			var day = $(this).attr('id');
		$("tr.times" + day).css('display', '');	
		$(this).parents('tr.dates').insertBefore("tr.times" + day + ':first');
		$(this).html('Hide details');
		$(this).unbind();	
		$(this).bind('click', hide_details);
	});
  

  $("#copy_address").click(function() {
		$('#street').val('test');
   });
  
  $("input[name=check_all]").change(function() {
		if($(this).attr('checked')) {
			$("input.inputs").attr('checked', "checked");
		} else {
			$("input.inputs").attr('checked', "");
		}
											 
  });
  
  $("input[name=check_all_building]").change(function() {
		if($(this).attr('checked')) {
			$("input.inputs_building").attr('checked', "checked");
		} else {
			$("input.inputs_building").attr('checked', "");
		}
											 
  });
  
  $("input.inputs").change(function() {
										
		if($(this).attr('checked')) {	
			//$("input[name=check_all]").attr('checked', "");
		} else {
			$("input[name=check_all]").attr('checked', "");
		}
	});
  
  $("input.inputs_building").change(function() {
										
		if($(this).attr('checked')) {	
			//$("input[name=check_all]").attr('checked', "");
		} else {
			$("input[name=check_all_building]").attr('checked', "");
		}
	});
  
  
  
 });

function resize_centre_field() {
	var centrefield = $("#center_window").width();
   var header = $("#header").width();
   alert(header);
   if(centrefield > (header / 2)) {
	   $("#center_window").width((header/2));
   }
}

function hide_details() {
	var day = $(this).attr('id');		
	$("tr.times" + day).css('display', 'none');						
	$(this).html('More details');	
	//$("td.change").html('More info');
	$(this).unbind('click', hide_details);
	$(this).bind('click', show_details);
}

function show_details() {
	var day = $(this).attr('id');	
	$("tr.times" + day).css('display', '');						
	$(this).html('Hide details');
	$(this).parents('tr.dates').insertBefore("tr.times" + day + ':first');
	//$("td.change").html('Time');
	$(this).unbind('click', show_details);	
	$(this).bind('click', hide_details);
	
}