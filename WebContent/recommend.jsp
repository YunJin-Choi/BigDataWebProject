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
		    <option value="5õ">5õ</option>
		    <option value="1��">1��</option>
		    <option value="1�� 5õ">1�� 5õ</option>
		    <option value="2��">2��</option>
		    <option value="0">���</option>
		</select>
	</div>
	<div style="width: 240px">
		<select class="w3-select" id="bizlocal">
		    <option value="" disabled selected>Choose your business location</option>
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
		    <option value="0">���</option>
		</select>
	</div>
	<br>
	<button class="w3-button w3-light-grey w3-block" onclick="recommend()" style="width: 240px">�˻�</button>
</div>
<div id="chartView" style="float: right; margin-right: 7%"></div>
</div>
<div id="recommendBoardView"></div>