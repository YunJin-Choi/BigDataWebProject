<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- boardUpdate CSS -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="css/board.css">

</head>

<body>
<br>
<form name="ofm" method="post">
<table class="boardTable" align="center" style="width: 70%">
	<tr><td class="boardtd" align="center">����
		<input id ="titleId" type="text" name="title"></td></tr>
	<tr style="font-size: 15px; width: 100%; align-items:center;">
				<td class="boardtd">���� : <select id="typeId" name="bizType">
						<option value="">������ �����ϼ���</option>
						<option value="�Ĵ�">�Ĵ�</option>
						<option value="ī��">ī��</option>
						<option value="�Ƿ�">�Ƿ�</option>
						<option value="�ｺ��">�ｺ��</option>
						<option value="����">����</option>
				</select></td>
				<td class="boardtd">���� : <select id="localId" name="bizLocal">
						<option value="">������ �����ϼ���</option>
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
	<td class="boardtd">�Ը� : <select id="sizeId" name="bizSize">
						<option value="">�Ը��� �����ϼ���</option>
						<option value="5õ">5õ</option>
						<option value="1��">1��</option>
						<option value="1��5õ">1��5õ</option>
						<option value="2��">2��</option>
				</select></td>
	</tr>
</table><br>
<table class="boardTable" align="center" style="width: 70%">
	<tr>
	<td class="boardtd" align="center" style="width: 100%; height: 200px;">
		<input id ="contentId" style="width: 100%; height: 100%" type="text" name="contents" >&nbsp;&nbsp;</td>
	</tr>
</table>
<br>
<table class="boardTable" align="center" style="width: 70%">
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">�̸�</td>
				<td width="90%">${Member.nickName}
				<input type="hidden" id="nickId" value="${Member.nickName}" maxlength="20"></td>
			</tr>
</table>
<center>
<table class="boardTable"style="width: 70%">
<tr>
		<td align="right"><button class="w3-button w3-black" onclick="return ownererrorCheck()">�۾���</button>
		<input class="w3-button w3-black" type="reset" value="�ٽ� ����">
		<input	class="w3-button w3-black" type="button" value="����Ʈ�� ���ư���" onclick="ownerboardList()"></td>
	</tr>
</table>
</center>
</form>
</body>
</html>