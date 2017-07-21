<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- board CSS -->
<head>
<link rel="stylesheet" href="css/board.css">
</head>
<html>
<body>
	<br>

	<table align="center" class="boardTable" style="width: 70%">
		<tr>
			<td class="boardtd" align="center" style="font-size: 13px; font-weight: bold; font-size: 15px">[${data.bizType}]
				${data.title}</td>
		</tr>
		<tr style="font-size: 13px; font-weight: bold; font-size: 15px; width: 100%; align-content: center;">
			<td class="boardtd">�۾��� : ${data.nickname}</td>
			<td class="boardtd">�о� : ${data.bizType}</td>
			<td class="boardtd">���� : ${data.bizLocal}</td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<!-- �ϴ� ��ư -->
	<table align="center" align="center" style="width: 70%">
		<tr>
			<td class="boardtd" align="center"
				style="border: 1px solid #ddd; width: 100%; height: 200px;">${data.contents}</td>
		</tr>
		<tr style="height: 10px"></tr>
		
		<tr align="right" style="width: 100%">
			<td>
		<c:if test="${Member.nickName eq data.nickname }">
			<button class="w3-button w3-black"
					onclick="MrkboardMoveUpdate(${data.num})">�����ϱ�</button>
				<button class="w3-button w3-black"
					onclick="MrkboardDelete(${data.num})">�����ϱ�</button>
		</c:if>
			<input class="w3-button w3-black" type="button" value="����Ʈ�� ���ư���" onclick="MktboardList()">		
					</td>
		</tr>
	</table>

	<!-- ��� �¶�� ���� -->
<table class="boardTable" align="center" style="width: 50%">
<c:forEach items="${data.comments}" var= "data2">
	<tr>
		<td class="boardtd" style="font-weight: bold;">${data2.nickName}</td>
	</tr>
	<tr>
		<td class="boardtd">${data2.contents}</td>
	</tr>
</c:forEach>
</table>

	<!-- ��� �ޱ� -->
<table class="boardTable" align="center" style="width: 50%">
	<tr><td class="boardtd" style="font-size: 13px">����� �Է��� �ּ���</td></tr>
	<tr><td class="boardtd">
		<input style="width: 100%; border: 1px solid #ddd; height: 50" type="text" id="commendContents">
		<input type="hidden" id="commendMember" value="${Member.nickName}">
		<input type="hidden" id="writeNo" value="${data.num}">
	</td></tr>
	<tr><td align="left"><input class="w3-button w3-black" type="button" value="��� �ޱ�" onclick="commendInsert()"></td>
</table> 
</body>
</html>