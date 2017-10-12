
$(document).ready(function(){
	
	var winwidth = $(window).width();
	if(winwidth < 760){
		$(".maximize-nav").hide();
		$(".minimize-nav").show();
	}
	else{
		$(".maximize-nav").show();
		$(".minimize-nav").hide();
	}
	//responsible nav
	$(window).resize(function(){
		var width = $(window).width();
		if(width < 760){
			$(".maximize-nav").hide();
			$(".minimize-nav").show();
		}
		else{
			$(".maximize-nav").show();
			$(".minimize-nav").hide();
		}
	});

});