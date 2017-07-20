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
				<td width="10%" align="center">글제목</td>
				<td width="90%"><input id="titleId" type="text" name="title" maxlength="20"
					size="40"></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">업종</td>
				<td width="90%"><select id="typeId" name="bizType">
						<option value="">업종을 선택하세요</option>
						<option value="식당">식당</option>
				</select></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">지역</td>
				<td width="90%"><select id="localId" name="bizLocal">
					<option value="서울">서울</option>
					<option value="인천">인천</option>
					<option value="경기도">경기도</option>
					<option value="충청도">충청도</option>
					<option value="강원도">강원도</option>
					<option value="전라도">전라도</option>
					<option value="경상도">경상도</option>
					<option value="광주">광주</option>
					<option value="울산">울산</option>
					<option value="대구">대구</option>
					<option value="부산">부산</option>
				</select></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">규모</td>
				<td width="90%"><select id="sizeId" name="bizSize">
					<option value="5천">5천</option>
				    <option value="1억">1억</option>
				    <option value="1억 5천">1억 5천</option>
				    <option value="2억">2억</option>
				</select></td>
			</tr>
			<tr bgColor="#ffffff" height="50">
				<td width="10%" align="center">글 내용</td>
				<td width="90%"><textarea cols="100" rows="20" id="contentId" name="contents"></textarea></td>
			</tr>
			<tr bgColor="#ffffff" height="25">
				<td width="10%" align="center">이름</td>
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
							<button onclick="return errorCheck()">글쓰기</button>
							<!-- <input type="button" value="글쓰기" onclick="errorCheck()" style="height: 22; border: 1 solid">
							-->&nbsp;&nbsp;
								<input type="reset" value="다시 쓰기"
								style="height: 22; border: 1 solid">
								</td>
							<td width="30%"><a href ="#">
							     <input	type="button" value="리스트로 돌아가기" onclick="MktboardList()"></a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>