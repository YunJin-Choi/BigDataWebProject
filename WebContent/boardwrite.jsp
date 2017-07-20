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
				<td width="10%" align="center">글제목</td>
				<td width="90%"><input type="text" name="title" maxlength="20"
					size="40"></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">업종</td>
				<td width="90%"><select name="bizType">
						<option value="">업종을 선택하세요</option>
						<option value="volvo">식당</option>
						<option value="volvo">식당</option>
						<option value="saab">의류</option>
						<option value="opel">헬스장</option>
						<option value="audi">병원</option>
				</select></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">지역</td>
				<td width="90%"><select name="bizLocal">
						<option value="volvo">서울</option>
						<option value="saab">인천</option>
						<option value="opel">경기도</option>
						<option value="audi">충청도</option>
						<option value="audi">강원도</option>
						<option value="audi">전라도</option>
						<option value="audi">경상도</option>
						<option value="audi">광주</option>
						<option value="audi">울산</option>
						<option value="audi">대구</option>
						<option value="audi">부산</option>
				</select></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">규모</td>
				<td width="90%"><input type="text" name="bizSize" maxlength="20"
					size="40"></td>
			</tr>
			<tr bgColor="#ffffff" height="50">
				<td width="10%" align="center">글 내용</td>
				<td width="90%"><textarea cols="100" rows="20" name="contents"></textarea></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">암호</td>
				<td width="90%"><input type="password" name="pwd"
					maxlength="20"></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">이름</td>
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
							<input type="button" value="글쓰기" onclick="errorCheck()" style="height: 22; border: 1 solid">&nbsp;&nbsp;
								<input type="reset" value="다시 쓰기"
								style="height: 22; border: 1 solid">
								</td>
							<td width="30%"><a href ="index.jsp">
							     <input	type="button" value="리스트로 돌아가기"></a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>