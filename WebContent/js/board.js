function boardList(boardName){
	$.ajax({
		url: "Controller",
		data: {
			command: boardName, boardCommand: "selectAllCommunityMkt"
		},
		method: "post",
		dataType: "html",
		success: function(result){
			alert(result);
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