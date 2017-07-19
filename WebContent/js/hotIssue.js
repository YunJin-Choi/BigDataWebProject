function hotIssueList(date){
	$.ajax({
		url: "Controller",
		data: {
			command: "hotissue",
			"hotissue": "selectHotIssueByDate", 
			"date": date
		},
		method: "post",
		dataType: "html",
		success: function(result){
			setCookie("hotIssueDate", date);
			$("#hotIssueView").html(result);
			addDate(date);
			cnfPost(date);
		}	
	});	
}

function preHotIssueList(date){
	$.ajax({
		url: "Controller",
		data: {
			command: "hotissue",
			"hotissue": "selectHotIssuePreDate", 
			"date": date
		},
		method: "post",
		dataType: "html",
		success: function(result){
			date = $(hotIssueKoreaList[0]);
			setCookie("hotIssueDate", date);
			$("#hotIssueView").html(result);
			addDate(date);
			cnfPost(date);
		}	
	});	
}

function postHotIssueList(date){
	$.ajax({
		url: "Controller",
		data: {
			command: "hotissue",
			"hotissue": "selectHotIssuePostDate", 
			"date": date
		},
		method: "post",
		dataType: "html",
		success: function(result){
			setCookie("hotIssueDate", date+1);
			$("#hotIssueView").html(result);
			addDate(date+1);
			cnfPost(date+1);
		}	
	});	
}

function cnfPost(date){
	var cutDate = getCookie("currentDate");
	if( cutDate == date ){
		document.getElementById("post").disabled = true;
	}
}

function addDate(date){
	$(".date_txt").html(date);
	$(".rank_kr").html(date + "<em>Korea Hot Issue</em>");
	$(".rank_fr").html(date + "<em>Foreign Hot Issue</em>");
}

$("#pre").click(function(){
	if(!document.getElementById("pre").disabled){
		date = getCookie("hotIssueDate");
		preHotIssueList(date);
	}
});

$("#post").click(function(){
	if(document.getElementById("post").disabled){
		date = getCookie("hotIssueDate");
		postHotIssueList(date);
	}
});

$(".date_ico_box").click(function(){
	if($(".blind").parent().attr("class") == "on"){
		$(".blind").parent().removeClass("on").addClass("off");
		$(".layer_area").hide();
	}else{
		$(".blind").parent().removeClass("off").addClass("on");
		$(".layer_area").show();
	}
});