
$(document).ready(function(){
	
	$("#dota-panel").click(function(){
		
		$(".lol-section").css("display","none");
		$(".lom-section").css("display","none");
		$(".dota-section").css("display","block")
		
	});
	$("#lol-panel").click(function(){
		
		$(".dota-section").css("display","none");
		$(".lom-section").css("display","none");
		$(".lol-section").css("display","block");
		
	});
	$("#lom-panel").click(function(){
		
		$(".dota-section").css("display","none");
		$(".lol-section").css("display","none");
		$(".lom-section").css("display","block");
		
	});
});