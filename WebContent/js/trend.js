function trendChina(trendChinaName) {
	$.ajax({
		url: "trend/china/"+trendChinaName+".html",
		method: "post",
		dataType: "html",
		success: function(result){
			$("#trendView").html(result);
		}
	});	
}