function trend(trendName, country) {
	$.ajax({
		url: "trend/"+country+"/"+trendName+".html",
		method: "post",
		dataType: "html",
		success: function(result){
			$("#trendView").html(result);
		}
	});	
}
