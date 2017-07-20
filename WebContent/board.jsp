<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>Marketer free board</title>
<link rel="stylesheet" href="css/board.css">

<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/board.js"></script>
</head>

<body>
<input type="hidden" name="boardName" value="communityMkt">
<table class="boardTable" align="center" style="width: 80%">
	<tr class="boardtr">
		<td class="boardtd" width="10%" align="center">글번호</td>
		<td class="boardtd" width="10%" align="center">업종</td>
		<td class="boardtd" width="50%" align="center"><center>제목</center></td>
		<td class="boardtd" width="10%" align="center">작성자</td>
		<td class="boardtd" width="10%" align="center">작성일시</td>
		<td class="boardtd" width="10%" align="center">조회수</td>
	</tr>
	<c:choose>
		<c:when test="${not empty list}">
			<c:forEach items="${list}" var="data">
				<tr class="boardtr effect" onclick="MrkboardView(${data.num})">
					<td class="boardtd" align="center">${data.num}</td>
					<td class="boardtd" align="center">${data.bizType}</td>
					<td class="boardtd" align="center">${data.title}[${data.comNum}]</td>
					<td class="boardtd" align="center">${data.nickname}</td>
					<td class="boardtd" align="center">${data.date}</td>
					<td class="boardtd" align="center">${data.viewNum}</td>
				</tr>
			</c:forEach>
		</c:when>
	</c:choose>
</table>
<br><br>
<center><a href="boardwrite.jsp"><input type="button" value="글쓰기"></a></center>
<body>