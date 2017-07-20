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
		    <option value="1">식당</option>
		</select>
	</div>
	<div style="width: 240px">
		<select class="w3-select" id="bizSize">
		    <option value="" disabled selected>Choose your business size</option>
		    <option value="5천">5천</option>
		    <option value="1억">1억</option>
		    <option value="1억 5천">1억 5천</option>
		    <option value="2억">2억</option>
		    <option value="0">모두</option>
		</select>
	</div>
	<div style="width: 240px">
		<select class="w3-select" id="bizlocal">
		    <option value="" disabled selected>Choose your business location</option>
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
		    <option value="0">모두</option>
		</select>
	</div>
	<br>
	<button class="w3-button w3-light-grey w3-block" onclick="recommend()" style="width: 240px">검색</button>
</div>
<div id="chartView" style="float: right; margin-right: 7%"></div>
</div>
<div id="recommendBoardView"></div>