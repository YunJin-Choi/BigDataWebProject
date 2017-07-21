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


function ownerboardView(num){
	$.ajax({
		url: "Controller",
		data: {
			command: "communityOwner", boardCommand: "selectCommunityOwnerById", boardNum: num
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#boardView").html(result);
		}	
	});
}

function  ownerboardDelete(num){
	$.ajax({
		url: "Controller",
		data: {
			command: "communityOwner", boardCommand: "deleteCommunityOwner", boardNum: num
		},
		method: "post",
		dataType: "html",
		success: function(result){
			alert("삭제되었습니다!");
			$("#boardView").html(result);
		}	
	});	
}

function ownerboardMoveUpdate(num){
	$.ajax({
		url: "Controller",
		data: {
			command: "communityOwner", boardCommand: "moveUpdateCommunityOwnerById",
			boardNum: num
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#boardView").html(result);
		}	
	});
}

function  ownerboardUpdate(num){
	var tValue = $("#titleId").val();
	var cValue = $("#contentId").val();
	$.ajax({
		url: "Controller",
		data: {
			command: "communityOwner", boardCommand: "updateCommunityOwner",
			boardNum: num, title: tValue, contents : cValue
		},
		method: "post",
		dataType: "html",
		success: function(result){
			$("#boardView").html(result);
		}	
	});
}

function ownerpageMove() {
	$.ajax({
		url:"ownerboardwrite.jsp",
		success: function(result){
			$("#boardView").html(result);
		}
	})
}

function ownererrorCheck() {
	if (document.ofm.title.value == "") {
		alert("input title");
		ffm.title.focus();
		return false;
	}
	if (document.ofm.typeId.value == "") {
		alert("업종을 선택하세요");
		ffm.bizType.focus();
		return false;
	}
	if (document.ofm.localId.value == "") {
		alert("지역을 선택하세요");
		ffm.localId.focus();
		return false;
	}
	if (document.ofm.sizeId.value == "") {
		alert("규모를 입력하세요");
		ffm.sizeId.focus();
		return false;
	}
	if (document.ofm.contents.value == "") {
		alert("내용이 없습니다");
		ffm.contents.focus();
		return false;
	}
	else{
		owninsert();

	}
}

function owninsert() {
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
			command : "communityOwner",
			boardCommand : "createCommunityOwner",
			nickname : nicknameV,
			bizType : typeV,
			bizSize : sizeV,
			title : titleV,
			contents : contentV,
			bizLocal : localV
		},
		method: "get",
		dataType: "html",
		success: function(result){
			ownerboardList();
		}
	});
}
	