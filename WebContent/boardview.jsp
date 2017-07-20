<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- board CSS -->
<head>

<script src="./js/board.js"></script>
<script src="./js/comment.js"></script>
<link rel="stylesheet" href="css/board.css">
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (��Ʈ��Ʈ���� �ڹٽ�ũ��Ʈ �÷������� ���� �ʿ���) -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
</head>

<html>
<body>
<br>

<table align="center"  class="boardTable" style="width: 70%">
	<tr><td class="boardtd" align="center">[${data.bizType}] ${data.title}</td></tr>
	<tr style="font-size: 15px; width: 100%; align-content: center;">
	<td class="boardtd">�۾��� : ${data.nickname}</td>
	<td class="boardtd">�о� : ${data.bizType}</td>
	<td class="boardtd">���� : ${data.bizLocal}</td>
	</tr>
</table><br><br><br>

<!-- �ϴ� ��ư -->
<table align="center" class="boardTable" align="center" style="width: 70%">
	<tr>
		<td class="boardtd" align="center" style="border: 1px solid #ddd; width: 100%; height: 200px;">${data.contents}</td>
	</tr>
	
	<tr align="right"  style="width: 70%">
	<td class="boardtd" align="right"><button onclick="MrkboardMoveUpdate(${data.num})">�����ϱ�</button>
	<input type="hidden" name="command" value="MktBoard">
	<input type="button" name="boardCommand" value="deleteCommunityMkt"></td>
	</tr>
</table>

 <!-- ��� -->
 <table id="commentTable" class="table table-condensed">
 		<!-- ��� �Է����̺� �κ� -->
	    <c:if test="${!empty cList}">
    			<c:forEach var="list" items="${cList}" varStatus="status">
     			<tr class="r1" name="commentCode">
	      			<td colspan=2>
		       			<strong>������</strong> 
		       			<a style="cursor:pointer;" name="pDel">����</a>
		      			 <p>${list.cmttext}</p>
	      			</td>
     			</tr>
    			</c:forEach>
    		</c:if>
          <!-- ���� ���� ��۾��� ��ư --> 
		 <table class="table table-condensed">
         	<thead>
             	<tr>
                 	<td>
                     	<span style='float:right'>
                     		<button type="button" id="list" class="btn btn-default">���</button>
                         	 <button type="button" id="modify" class="btn btn-default">����</button>
                              <button type="button" id="delete" class="btn btn-default">����</button>
                              <button type="button" id="write" class="btn btn-default">��۾���</button>
                         </span>
                 	</td>
             	</tr>
          	</thead>
          </table>
          
</table>
    


</body>
</html>