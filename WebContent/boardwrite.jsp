<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>boardwrite</title>
<script src="${pageContext.request.contextPath}/js/board.js"></script>

</head>
<body>
	<br>
	<br>
	<form name="ffm" action="Controller" method="post">
		<table align="center" border="0">
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">������</td>
				<td width="90%"><input type="text" name="title" maxlength="20"
					size="40"></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">����</td>
				<td width="90%"><select name="bizType">
						<option value="">������ �����ϼ���</option>
						<option value="volvo">�Ĵ�</option>
						<option value="volvo">�Ĵ�</option>
						<option value="saab">�Ƿ�</option>
						<option value="opel">�ｺ��</option>
						<option value="audi">����</option>
				</select></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">����</td>
				<td width="90%"><select name="bizLocal">
						<option value="volvo">����</option>
						<option value="saab">��õ</option>
						<option value="opel">��⵵</option>
						<option value="audi">��û��</option>
						<option value="audi">������</option>
						<option value="audi">����</option>
						<option value="audi">���</option>
						<option value="audi">����</option>
						<option value="audi">���</option>
						<option value="audi">�뱸</option>
						<option value="audi">�λ�</option>
				</select></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">�Ը�</td>
				<td width="90%"><input type="text" name="bizSize" maxlength="20"
					size="40"></td>
			</tr>
			<tr bgColor="#ffffff" height="50">
				<td width="10%" align="center">�� ����</td>
				<td width="90%"><textarea cols="100" rows="20" name="contents"></textarea></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">��ȣ</td>
				<td width="90%"><input type="password" name="pwd"
					maxlength="20"></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">�̸�</td>
				<td width="90%"><input type="text" name="nickname" maxlength="20"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr bgColor="#ffffff" height="2">
				<td>&nbsp;</td>
				<td>
					<table width="100%">
						<tr>
							<td width="70%">
							<input type="hidden" name="command" value="communityMkt">
							<input type="hidden" name="boardCommand" value="createCommunityMkt">
							<input type="button" value="�۾���" onclick="errorCheck()" style="height: 22; border: 1 solid">&nbsp;&nbsp;
								<input type="reset" value="�ٽ� ����"
								style="height: 22; border: 1 solid">
								</td>
							<td width="30%"><a href ="index.jsp">
							     <input	type="button" value="����Ʈ�� ���ư���"></a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>