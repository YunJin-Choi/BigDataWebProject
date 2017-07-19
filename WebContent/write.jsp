<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Write</title>
</head>
<body>
<form action="Controller">
	<table align="center" border="0">
		<tr>
			<td width="20%">업종</td>
			<td width="80%"><input type="text" name="bizType"></td>
		</tr>
		<tr>
			<td width="20%">지역</td>
			<td width="80%"><input type="text" name="bizLocal"></td>
		</tr>
		<tr>
			<td width="20%">규모</td>
			<td width="80%"><input type="text" name="bizSize"></td>
		</tr>
		<tr>
			<td width="20%">작성자</td>
			<td width="80%"><input type="text" name="nickname"></td>
		</tr>
		<tr>
			<td width="20%">제목</td>
			<td width="80%"><input type="text" name="title"></td>
		</tr>
		<tr>
			<td colspan="2">내용</td>
		</tr>
		<tr>
			<td colspan="2"><input type="text" name="contents" size="100"></td>
		</tr>
	</table>
	<input type="hidden" name="communityMktCommand" value="createCommunityMkt">
	<center><input type="submit" name="command" value="communityMkt"></center>
</form>
</body>
</html>