<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- board CSS -->
<head>
<script src="${pageContext.request.contextPath}/js/board.js"></script>
<link rel="stylesheet" href="css/board.css">
</head>
<html>
<body>
<br>

<table class="boardTable" align="center" style="width: 70%">
	<tr><td class="boardtd" align="center">[${data.bizType}] ${data.title}</td></tr>
	<tr style="font-size: 15px; width: 100%; align-content: center;">
	<td class="boardtd">�۾��� : ${data.nickname}</td>
	<td class="boardtd">�о� : ${data.bizType}</td>
	<td class="boardtd">���� : ${data.bizLocal}</td>
	</tr>
</table><br><br><br>
<!-- �ϴ� ��ư -->
<table class="boardTable" align="center" style="width: 70%">
	<tr>
		<td class="boardtd" align="center" style="border: 1px solid #ddd; width: 100%; height: 200px;">${data.content}</td>
	</tr>
	<tr style="width: 100%">
	<td align="right"><button onclick="boardView(${MktBoard}, ${data.num})">�����ϱ�</button>
	<input type="hidden" name="command" value="MktBoard"></td>
	<input type="button" name="boardCommand" value="deleteCommunityMkt"></td>
	</tr>
</table>

<!-- ��� �¶�� ���� -->
<c:forEach items="${data.comments}" var= "data">
<table class="boardTable" align="center" style="width: 50%">
	<tr><td class="boardtd" style="font-weight: bold;">${list.nickName}</td>
	<td align="right" ><input type="button" name="command" value="commentreWrite" ></td>
	<td align="right" ><input type="button" name="command" value="commentreDelete" ></td></tr>
	<tr><td class="boardtd">${list.contents}</td></tr>
</table>
</c:forEach>
<!-- ��� �ޱ� -->
<table class="boardTable" align="center" style="width: 50%">
	<tr><td class="boardtd" style="font-size: 13px">����� �Է��� �ּ���</td></tr>
	<tr><td class="boardtd">
		<input style="width: 100%; border: 1px solid #ddd; height: 50" type="text" name="data.comment">
	</td></tr>
	<tr><td align="left"><input type="button" name="command" value="commentInsert"></td>
</table>

</body>
</html>