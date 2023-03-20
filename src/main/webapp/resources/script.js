$(document).ready(function() {

	$(".click").slideUp("fast");
    $("#tb2").css("display" , "inline").hide();
	$("#tb3").css("display" , "inline").hide();		
	$("#tb1").css("display" , "inline").hide();		
			
	$("#drop").click(function(){
         $(".click").animate({
			/* display :"toggle",*/
               width: "toggle",
			   height: "100vh"
          });
    });


	$("#id1").click(function(){
		$("#tb1").animate({
    
			 
		}).show();
	});
	$("#id2").click(function(){
		$("#tb1").css("display" , "none");
		$("#tb3").css("display" , "none");
		$("#tb2").animate({
    		 position :"relative",
    		 left :"40%",
			right : "40%",			
			 
		}).show();
	});
	$("#id3").click(function(){
		$("#tb1").css("display" , "none");
		$("#tb2").css("display" , "none");
		$("#tb3").animate({
    	
		}).show();
	});


	});
	
	
	
  /* function show1() {
	 document.getElementById("tb1").style.display = "block";
	 document.getElementById("tb2").style.display = "none";
	 document.getElementById("tb3").style.display = "none";

	 }
	 function show2() {
	 document.getElementById("tb2").style.display = "block";
	 document.getElementById("tb1").style.display = "none";
	 document.getElementById("tb3").style.display = "none";

	 location.href = '/fetch';

	 }
	 function show3() {
	 document.getElementById("tb3").style.display = "block";
	 document.getElementById("tb1").style.display = "none";
	 document.getElementById("tb2").style.display = "none";

	 } */


	/* $(document).ready(function(){
		$("#id1").click(function(){
			$("#tb1").css("display","block");
		});
		$("#id2").click(function(){
			$("#tb2").css("display","block");
	    	this.attr("href", "/fetch");
	    });
		$("#id3").click(function(){
			$("#tb3").css("display","block");
		});

	    }); */
	
	
	/*  $("#tb1").slideUp();
		$("#tb2").slideUp();
		$("#tb3").slideUp();
		$(".click").slideUp();

		$("#id1").click(function() {

			$("#tb1").slideDown();
		});
		$("#id2").click(function() {

			$("#tb2").slideDown();
		});
		$("#id3").click(function() {

			$("#tb3").slideDown();
		});*/
		
		
		
	/* $("#drop").click(function(){

		$(".click").css({"width":"20%","bottom-margin":"100px","heigth":"350px","font-style":"italic","border":"5px solid red"}).slideToggle();
			
		}); */