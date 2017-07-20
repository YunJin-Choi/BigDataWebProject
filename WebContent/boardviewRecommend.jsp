<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- board CSS -->
<head>

<script src="./js/board.js"></script>
<link rel="stylesheet" href="css/board.css">
</head>

<html>
<body>
<br>

<table align="center"  class="boardTable" style="width: 70%">
	<tr><td class="boardtd" align="center">[${data.bizType}] ${data.title}</td></tr>
	<tr style="font-size: 15px; width: 100%; align-content: center;">
	<td class="boardtd">글쓴이 : ${data.nickname}</td>
	<td class="boardtd">분야 : ${data.bizType}</td>
	<td class="boardtd">지역 : ${data.bizLocal}</td>
	</tr>
</table><br><br><br>
<table align="center" class="boardTable" align="center" style="width: 70%">
	<tr>
		<td class="boardtd" align="center" style="border: 1px solid #ddd; width: 100%; height: 200px;">${data.contents}</td>
	</tr>
</table>

<!-- 댓글 좌라락 보기 -->
<c:forEach items="${data.comments}" var= "data">
<table class="boardTable" align="center" style="width: 50%">
	<tr><td class="boardtd" style="font-weight: bold;">${list.nickName}</td>
	<td align="right" ><input type="button" name="command" value="commentreWrite" ></td>
	<td align="right" ><input type="button" name="command" value="commentreDelete" ></td></tr>
	<tr><td class="boardtd">${list.contents}</td></tr>
</table>
</c:forEach>

</body>
</html>