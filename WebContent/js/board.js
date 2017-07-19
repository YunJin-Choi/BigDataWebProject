function MktboardList(){
	$.ajax({
		url: "Controller",
		data: {
			command: "communityMkt", boardCommand: "selectAllCommunityMkt"
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#boardView").html(result);
		}	
	});	
}

function OwnerboardList(){
	$.ajax({
		url: "Controller",
		data: {
			command: "communityOwner", boardCommand: "selectAllCommunityOwner"
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#boardView").html(result);
		}	
	});	
}

function QnAboardList(){
	$.ajax({
		url: "Controller",
		data: {
			command: "communityQnA", boardCommand: "selectAllCommunityQnA"
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#boardView").html(result);
		}	
	});	
}

function boardView(boardName, num){
	$.ajax({
		url: "Controller",
		data: {
			command: boardName, boardName: selectCommunityMktById, boardNum: num
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#dataView").html(result);
		}	
	});
}