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

function MrkboardMoveUpdate(num){
	$.ajax({
		url: "Controller",
		data: {
			command: "communityMkt", boardCommand: "moveUpdateCommunityMktById", boardNum: num
		},
		method: "post",
		dataType: "html",
		success: function(result){
			alert(result);
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
			alert(result);
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
			alert(result);
			$("#boardView").html(result);
		}	
	});
}

function errorCheck() {
	if (document.ffm.title.value == "") {
		alert("input title");
		ffm.title.focus();
		return;
	}
	if (document.ffm.bizType.value == "") {
		alert("업종을 선택하세요");
		ffm.bizType.focus();
		return;
	}
	if (document.ffm.bizLocal.value == "") {
		alert("지역을 선택하세요");
		ffm.bizLocal.focus();
		return;
	}
	if (document.ffm.bizSize.value == "") {
		alert("규모를 입력하세요");
		ffm.bizSize.focus();
		return;
	}
	if (document.ffm.contents.value == "") {
		alert("내용이 없습니다");
		ffm.contents.focus();
		return;
	}
	if (document.ffm.pwd.value == "") {
		alert("비밀번호를 입력하세요");
		ffm.pwd.focus();
		return;
	}
	ffm.submit();
}