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
			command: "QnA", boardCommand: "selectAllQnA"
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#boardView2").html(result);
		}	
	});	
}

function MrkboardMoveUpdate(num){
	$.ajax({
		url: "Controller",
		data: {
			command: "communityMkt", boardCommand: "moveUpdateCommunityMktById",
			boardNum: num
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#boardView").html(result);
		}	
	});
}

function QnAboardMoveUpdate(num){
	$.ajax({
		url: "Controller",
		data: {
			command: "QnA", boardCommand: "updateQnABoard", boardNum: num
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#boardView").html(result);
		}	
	});
}

function MrkboardView(num){
	$.ajax({
		url: "Controller",
		data: {
			command: "communityMkt", boardCommand: "selectCommunityMktById", boardNum: num
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#boardView").html(result);
		}	
	});
}

function QnAboardView(num){
	$.ajax({
		url: "Controller",
		data: {
			command: "QnA", boardCommand: "selectAllQnABoardOwner", boardNum: num
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#boardView2").html(result);
		}	
	});
}

function MrkboardDelete(num){
	$.ajax({
		url: "Controller",
		data: {
			command: "communityMkt", boardCommand: "deleteCommunityMkt", boardNum: num
		},
		method: "post",
		dataType: "html",
		success: function(result){
			alert("삭제되었습니다!");
			$("#boardView").html(result);
		}	
	});	
}

function MrkboardUpdate(num){
	var tValue = $("#titleId").val();
	var cValue = $("#contentId").val();
	$.ajax({
		url: "Controller",
		data: {
			command: "communityMkt", boardCommand: "updateCommunityMkt",
			boardNum: num, title: tValue, contents : cValue
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#boardView").html(result);
		}	
	});
}

function pageMove() {
	$.ajax({
		url:"boardwrite.jsp",
		success: function(result){
			$("#boardView").html(result);
		}
	})
}

function errorCheck() {
	if (document.ffm.title.value == "") {
		alert("제목을 입력하세요");
		ffm.title.focus();
		return false;
	}
	if (document.ffm.bizType.value == "") {
		alert("업종을 선택하세요");
		ffm.bizType.focus();
		return false;
	}
	if (document.ffm.bizLocal.value == "") {
		alert("지역을 선택하세요");
		ffm.bizLocal.focus();
		return false;
	}
	if (document.ffm.bizSize.value == "") {
		alert("규모를 입력하세요");
		ffm.bizSize.focus();
		return false;
	}
	if (document.ffm.contents.value == "") {
		alert("내용이 없습니다");
		ffm.contents.focus();
		return false;
	}
	else{
		insert();

	}
}

function insert() {
	var titleV = document.getElementById("titleId").value;
	var contentV = $("#contentId").val();
	var typeV = $("#typeId").val();
	var localV = $("#localId").val();
	var nicknameV = $("#nickId").val();
	var sizeV = $("#sizeId").val();
	var localV = $("#localId").val();
	
	$.ajax({
		url: "Controller",
		data : {
			command : "communityMkt",
			boardCommand : "createCommunityMkt",
			nickname : nicknameV,
			bizType : typeV,
			bizSize : sizeV,
			title : titleV,
			contents : contentV,
			bizLocal : localV
		},
		method: "post",
		dataType: "html",
		success: function(result){
			MrkboardList();
		}
	});
}

function commendInsert() {
	var commendContentsValue = $("#commendContents").val();
	var commentMemberValue = document.getElementById("commendMember").value;
	var writeNoValue = $("#writeNo").val();
	if(commendContents == ""){
		alert("댓글을 입력해주세요.");
	}else{
		$.ajax({
			url: "Controller",
			data : {
				command : "comment",
				comment : "createCommentMkt",
				writeNo : writeNoValue,
				commentMember : commentMemberValue,
				commendContents : commendContentsValue
			},
			method: "post",
			dataType: "html",
			success: function(result){
				$("#boardView").html(result);
			}
		});
	}
}

function recommendboardView(num){
	$.ajax({
		url: "Controller",
		data: {
			command: "communityMkt", boardCommand: "selectCommunityMktByIdRecommend", boardNum: num
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#recommendBoardView").html(result);
		}	
	});
}
	