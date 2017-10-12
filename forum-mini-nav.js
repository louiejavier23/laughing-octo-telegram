$(document).ready(function(){
	
	$("#f-dota-btn").click(function(){
		$("#forum-dota").show();
		$("#forum-lol").hide();
		$("#forum-mu").hide();
	});
	
	$("#f-lol-btn").click(function(){
		$("#forum-dota").hide();
		$("#forum-lol").show();
		$("#forum-mu").hide();
	});
	
	$("#f-mu-btn").click(function(){
		$("#forum-dota").hide();
		$("#forum-lol").hide();
		$("#forum-mu").show();
	});
});