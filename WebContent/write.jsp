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
			<td width="20%">����</td>
			<td width="80%"><input type="text" name="bizType"></td>
		</tr>
		<tr>
			<td width="20%">����</td>
			<td width="80%"><input type="text" name="bizLocal"></td>
		</tr>
		<tr>
			<td width="20%">�Ը�</td>
			<td width="80%"><input type="text" name="bizSize"></td>
		</tr>
		<tr>
			<td width="20%">�ۼ���</td>
			<td width="80%"><input type="text" name="nickname"></td>
		</tr>
		<tr>
			<td width="20%">����</td>
			<td width="80%"><input type="text" name="title"></td>
		</tr>
		<tr>
			<td colspan="2">����</td>
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