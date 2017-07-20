window.onclick = function(event) {
	var modal = document.getElementById('id01');
    if (event.target == modal) {
        modal.style.display = "none";
    }
    var modal = document.getElementById('id02');
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

function loginCheck() {
	var email_pattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	if (document.getElementsByName("email")[0].value == "") {
		alert("email을 꼭 입력해주세요.");
		document.email.focus();
	} else if(email_pattern.test(document.getElementsByName("email")[0].value)==false){
		alert("정상적인 email이 아닙니다.");
		document.getElementsByName("email")[0].value="";
		document.getElementsByName("email")[0].focus();
	} else if (document.getElementsByName("password")[0].value == "") {
		alert("password을 꼭 입력해주세요.");
		document.getElementsByName("password")[0].focus();
	}else{
		$.ajax({
			url: "Controller",
			data: {
				command: "member", member: "loginMember",
				email: document.getElementsByName("email")[0].value,
				password: document.getElementsByName("password")[0].value
			},
			method: "post",
			dataType: "html",
			success: function(result){
				if(result == "fail"){
					alert("email 또는 password가 틀렸습니다.");
				}else{
					location.href = "index.jsp";
				}
			},
			error : function(msg){
				alert(msg);
			}
		});	
	}
}

function join() {
	document.getElementById('id02').style.display='block';
	document.getElementById('id01').style.display='none';
}

function joinCheck() {
	var email_pattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	var callnum_pattern=/\d{11}$/;

	if (document.getElementsByName("email")[1].value == "") {
		alert("email을 꼭 입력해주세요.");
		document.getElementsByName("email")[1].focus();
	} else if(email_pattern.test(document.getElementsByName("email")[1].value)==false){
		alert("정상적인 email이 아닙니다.");
		document.getElementsByName("email")[1].value="";
		document.getElementsByName("email")[1].focus();
	} else if (document.getElementsByName("password1")[0].value == "") {
		alert("password을 꼭 입력해주세요.");
		document.getElementsByName("password1")[0].focus();
	} else if (document.getElementsByName("password2")[0].value == "") {
		alert("password 확인을 꼭 입력해주세요.");
		document.getElementsByName("password2")[0].focus();
	} else if (document.getElementsByName("password1")[0].value != document.getElementsByName("password2")[0].value) {
		alert("password와 password 확인이 일치하지 않습니다.");
		document.getElementsByName("password1")[0].focus();
	} else if (document.getElementsByName("nickname")[0].value == "") {
		alert("닉네임을 꼭 입력해주세요.");
		document.getElementsByName("nickname")[0].focus();
	} else if (document.getElementsByName("callnumber")[0].value == "") {
		alert("휴대폰 번호를 꼭 입력해주세요.");
		document.getElementsByName("callnumber")[0].focus();
	}else if(callnum_pattern.test(document.getElementsByName("callnumber")[0].value)==false){
		alert("휴대폰 번호가 올바르지 않습니다.  하이픈을 제외한 숫자 11자리를 입력해주세요.");
		document.getElementsByName("callnumber")[0].value="";
		document.getElementsByName("callnumber")[0].focus();
	}else {
		$.ajax({
			url: "Controller",
			data: {
				command: "member", member: "selectMemberByEmail",
				email: document.getElementsByName("email")[1].value
			},
			method: "post",
			dataType: "html",
			success: function(result){
				if(result == "fail"){
					alert("email이 중복입니다.");
				}else{
					$.ajax({
						url: "Controller",
						data: {
							command: "member", member: "selectMemberByNickname",
							nickname: document.getElementsByName("nickname")[0].value
						},
						method: "post",
						dataType: "html",
						success: function(result){
							if(result == "fail"){
								alert("Nick Name이 중복입니다.");
							}else{
								var jobValue;
								var size = document.getElementsByName("job").length;
								for(var i = 0; i < size; i++) {
									if(document.getElementsByName("job")[i].checked) {
										jobValue = document.getElementsByName("job")[i].value;
										break;
									}
						        }
								$.ajax({
									url: "Controller",
									data: {
										command: "member", member: "insertMember",
										nickname: document.getElementsByName("nickname")[0].value,
										email: document.getElementsByName("email")[1].value,
										password: document.getElementsByName("password1")[0].value,
										callnum: document.getElementsByName("callnumber")[0].value,
										job: jobValue
									},
									method: "post",
									dataType: "html",
									success: function(result){
										if(result == "fail"){
											alert("회원가입에 실패했습니다.");
										}else{
											alert("회원가입에 성공하였습니다.");
											location.href = "index.jsp";
										}
									},
									error : function(msg){
										alert(msg);
									}
								});	
							}
						},
						error : function(msg){
							alert(msg);
						}
					});	
				}
			},
			error : function(msg){
				alert(msg);
			}
		});	
	}
}

function logout(){
	$.ajax({
		url: "logout.jsp",
		method: "post",
		dataType: "html",
		success: function(result){
			location.href="index.jsp";
		}
	});	
}