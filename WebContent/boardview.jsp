<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- board CSS -->
<head>

<script src="./js/board.js"></script>
<link rel="stylesheet" href="css/board.css">
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
</head>

<html>
<body>
<br>

<table align="center"  class="boardTable" style="width: 70%">
	<tr><td class="boardtd" align="center">[${data.bizType}] ${data.title}</td></tr>
	<tr style="font-size: 15px; width: 100%; align-content: center;">
	<td class="boardtd">글쓴이 : ${data.nickname}</td>
	<td class="boardtd">분야 : ${data.bizType}</td>
	<td class="boardtd">지역 : ${data.bizLocal}</td>
	</tr>
</table><br><br><br>

<!-- 하단 버튼 -->
<table align="center" class="boardTable" align="center" style="width: 70%">
	<tr>
		<td class="boardtd" align="center" style="border: 1px solid #ddd; width: 100%; height: 200px;">${data.contents}</td>
	</tr>
	
	<tr align="right"  style="width: 70%">
	<td class="boardtd" align="right"><button onclick="MrkboardMoveUpdate(${data.num})">수정하기</button>
	<input type="hidden" name="command" value="MktBoard">
	<input type="button" name="boardCommand" value="deleteCommunityMkt"></td>
	</tr>
</table>

 <!-- 댓글 -->
 <table id="commentTable" class="table table-condensed">
<table class="table table-condensed">
                        <tr>
                            <td>
                                <span class="form-inline" role="form">
                                    <p>
                                        <div class="form-group">
                                            <input type="text" id="commentParentName" name="commentParentName" class="form-control col-lg-2" data-rule-required="true" placeholder="이름" maxlength="10">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" id="commentParentPassword" name="commentParentPassword" class="form-control col-lg-2" data-rule-required="true" placeholder="패스워드" maxlength="10">
                                        </div>
                                        <div class="form-group">
                                            <button type="button" id="commentParentSubmit" name="commentParentSubmit" class="btn btn-default">확인</button>
                                        </div>
                                    </p>
                                        <textarea id="commentParentText" class="form-control col-lg-12" style="width:100%" rows="4"></textarea>
                                </span>
                            </td>
                        </tr>
                    </table>
					<table class="table table-condensed">
                        <thead>
                            <tr>
                                <td>
                                    <span style='float:right'>
                                        <button type="button" id="list" class="btn btn-default">목록</button>
                                        <button type="button" id="modify" class="btn btn-default">수정</button>
                                        <button type="button" id="delete" class="btn btn-default">삭제</button>
                                        <button type="button" id="write" class="btn btn-default">글쓰기</button>
                                    </span>
                                </td>
                            </tr>
                        </thead>
                    </table>
</table>                  


</body>
</html>