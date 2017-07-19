function hotIssueList(){
	$.ajax({
		url: "Controller",
		data: {
			command: "hotissue", "hotissueCommand": "selectHotIssueByDate"
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#hotIssueView").html(result);
			addDate();
		}	
	});	
}

function addDate(){
	var d = new Date();
	var n = d.toLocaleDateString();
	$(".date_txt").html(n);
	$(".rank_title,.rank_kr").html(n + "<em>Korea Hot Issue</em>");
}

$(".date_ico_box").click(function(){
	if($(".blind").parent().attr("class") == "on"){
		$(".blind").parent().removeClass("on").addClass("off");
		$(".layer_area").hide();
	}else{
		$(".blind").parent().removeClass("off").addClass("on");
		$(".layer_area").show();
	}
});