<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="css/board.css">
<title>Mktboardwrite</title>

</head>
<body>
	<br>
	<br>
	<form name="ffm" method="post">
		<table class="boardTable" align="center" style="width: 70%">
			<tr>
				<td class="boardtd" align="center">제목 <input id="titleId"
					type="text" name="title"></td>
			</tr>
			<tr style="font-size: 15px; width: 100%; align-items: center;">
				<td class="boardtd">업종 : <select id="typeId" name="bizType">
						<option value="">업종을 선택하세요</option>
						<option value="식당">식당</option>
						<option value="카페">카페</option>
						<option value="의류">의류</option>
						<option value="헬스장">헬스장</option>
						<option value="병원">병원</option>
				</select></td>
				<td class="boardtd">지역 : <select id="localId" name="bizLocal">
						<option value="">지역을 선택하세요</option>
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
				<td class="boardtd">규모 : <select id="sizeId" name="bizSize">
						<option value="">규모을 선택하세요</option>
						<option value="5천">5천</option>
						<option value="1억">1억</option>
						<option value="1억5천">1억5천</option>
						<option value="2억">2억</option>
				</select></td>
			</tr>
		</table>
		<br>
		<table class="boardTable" align="center" style="width: 70%">
			<tr>
				<td class="boardtd" align="center"
					style="width: 100%; height: 200px;"><input id="contentId"
					style="width: 100%; height: 100%" type="text" name="contents">&nbsp;&nbsp;</td>
			</tr>
		</table>
		<br>
		<table class="boardTable" align="center" style="width: 70%">
			<tr height="25">
				<td width="10%" align="center">이름</td>
				<td width="90%">${Member.nickName}<input type="hidden"
					id="nickId" value="${Member.nickName}" maxlength="20"></td>
			</tr>
		</table>
		<center>
			<table class="boardTable" style="width: 70%">
				<tr>
					<td align="right"><button class="w3-button w3-black"
							onclick="return errorCheck()">글쓰기</button> <input
						class="w3-button w3-black" type="reset" value="다시 쓰기"> <input
						class="w3-button w3-black" type="button" value="리스트로 돌아가기"
						onclick="MktboardList()"></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>