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
	<form name="ffm" method="post">
		<table align="center" border="0">
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">������</td>
				<td width="90%"><input id="titleId" type="text" name="title" maxlength="20"
					size="40"></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">����</td>
				<td width="90%"><select id="typeId" name="bizType">
						<option value="">������ �����ϼ���</option>
						<option value="�Ĵ�">�Ĵ�</option>
				</select></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">����</td>
				<td width="90%"><select id="localId" name="bizLocal">
					<option value="����">����</option>
					<option value="��õ">��õ</option>
					<option value="��⵵">��⵵</option>
					<option value="��û��">��û��</option>
					<option value="������">������</option>
					<option value="����">����</option>
					<option value="���">���</option>
					<option value="����">����</option>
					<option value="���">���</option>
					<option value="�뱸">�뱸</option>
					<option value="�λ�">�λ�</option>
				</select></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">�Ը�</td>
				<td width="90%"><select id="sizeId" name="bizSize">
					<option value="5õ">5õ</option>
				    <option value="1��">1��</option>
				    <option value="1�� 5õ">1�� 5õ</option>
				    <option value="2��">2��</option>
				</select></td>
			</tr>
			<tr bgColor="#ffffff" height="50">
				<td width="10%" align="center">�� ����</td>
				<td width="90%"><textarea cols="100" rows="20" id="contentId" name="contents"></textarea></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">�̸�</td>
				<td width="90%">${Member.nickName}
				<input type="hidden" id="nickId" value="${Member.nickName}" maxlength="20"></td>
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
							<button onclick="return errorCheck()">�۾���</button>
							<!-- <input type="button" value="�۾���" onclick="errorCheck()" style="height: 22; border: 1 solid">
							-->&nbsp;&nbsp;
								<input type="reset" value="�ٽ� ����"
								style="height: 22; border: 1 solid">
								</td>
							<td width="30%"><a href ="#">
							     <input	type="button" value="����Ʈ�� ���ư���" onclick="MktboardList()"></a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>