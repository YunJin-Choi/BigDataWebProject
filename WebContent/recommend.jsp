<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="js/recommend.js"></script>
<div style="height: 100px"></div>
<div style="width: 100%">
<div style="float: left; margin-left: 23%; margin-top: 80px">
	<div style="width: 240px">
		<select class="w3-select" id="bizType">
		    <option value="" disabled selected>Choose your business type</option>
		    <option value="1">�Ĵ�</option>
		</select>
	</div>
	<div style="width: 240px">
		<select class="w3-select" id="bizSize">
		    <option value="" disabled selected>Choose your business size</option>
		    <option value="5õ">5000����</option>
		    <option value="1��">1��</option>
		    <option value="1�� 5õ">1�� 5õ</option>
		    <option value="4">2��</option>
		    <option value="5">���</option>
		</select>
	</div>
	<div style="width: 240px">
		<select class="w3-select" id="bizlocal">
		    <option value="" disabled selected>Choose your business location</option>
		    <option value="1">����</option>
		    <option value="2">��õ</option>
		    <option value="3">��⵵</option>
		    <option value="4">��û��</option>
		    <option value="5">������</option>
		    <option value="6">����</option>
		    <option value="7">���</option>
		    <option value="8">����</option>
		    <option value="9">���</option>
		    <option value="10">�뱸</option>
		    <option value="11">�λ�</option>
		    <option value="12">���</option>
		</select>
	</div>
	<br>
	<button class="w3-button w3-light-grey w3-block" onclick="recommend()" style="width: 240px">�˻�</button>
</div>
<div id="chartView" style="float: right; margin-right: 7%"></div>
</div>
<div id="recommendBoardView"></div>