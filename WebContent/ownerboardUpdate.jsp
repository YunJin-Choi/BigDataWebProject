<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- boardUpdate CSS -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="./js/board.js"></script>
<link rel="stylesheet" href="css/board.css">

</head>

<body>
<br>
<form name="ffm" action="Controller" method="post">
<table class="boardTable" align="center" style="width: 70%">
	<tr><td class="boardtd" align="center">[${data.bizType}]    
		<input id ="titleId" type="text" name="title" value="${data.title}"></td></tr>
	<tr style="font-size: 15px; width: 100%; align-content: center;">
	<td class="boardtd">글쓴이 : ${data.nickname}</td>
	<td class="boardtd">분야 : ${data.bizType}</td>
	<td class="boardtd">지역 : ${data.bizLocal}</td>
	</tr>
</table><br><br><br>
<table class="boardTable" align="center" style="width: 70%">
	<tr>
	<td class="boardtd" align="center" style="width: 100%; height: 200px;">
		<input id ="contentId" style="width: 100%; height: 100%" type="text" name="contents" value="${data.contents}">&nbsp;&nbsp;</td>
	</tr>
	<tr style="width: 100%">
	<td align="center" >
		<input class="w3-button w3-black" type="button" value="수정하기" onclick="ownerboardUpdate(${data.num})"></td>
	</tr>
</table>
</form>
</body>
</html>