
$(document).ready(function(){
	
	$("#btn-category").click(function(){
		
		var cat = $("#select-cat").val();
		
		if(cat == "Agility"){
			$(".agility-hero").css("display","block");
			$(".int-hero").css("display","none");
			$(".str-hero").css("display","none");
		}
		else if(cat == "Intelligence"){
			$(".agility-hero").css("display","none");
			$(".int-hero").css("display","block");
			$(".str-hero").css("display","none");
		}
		else if(cat == "Strength"){
			$(".agility-hero").css("display","none");
			$(".int-hero").css("display","none");
			$(".str-hero").css("display","block");
		}
	});
	
	$("#mininav-dota").click(function(){
		$("#mu-products").hide();
		$("#lol-products").hide();
		$("#dota-products").show();
	});
	$("#mininav-mu").click(function(){
		$("#mu-products").show();
		$("#lol-products").hide();
		$("#dota-products").hide();
	});
	$("#mininav-lol").click(function(){
		$("#mu-products").hide();
		$("#lol-products").show();
		$("#dota-products").hide();
	});
	
});