<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="js/statistics.js"></script>
<div style="height: 100px"></div>
<div align="center">
	<div style="width: 20%">
		<select class="w3-select" id="bizType">
		    <option value="" disabled selected>Choose your business type</option>
		    <option value="1">식당</option>
		</select>
	</div>
	<div style="width: 20%">
		<select class="w3-select" id="bizSize">
		    <option value="" disabled selected>Choose your business size</option>
		    <option value="5천">5000만원</option>
		    <option value="1억">1억</option>
		    <option value="1억 5천">1억 5천</option>
		    <option value="4">2억</option>
		    <option value="5">모두</option>
		</select>
	</div>
	<div style="width: 20%">
		<select class="w3-select" id="bizlocal">
		    <option value="" disabled selected>Choose your business location</option>
		    <option value="1">서울</option>
		    <option value="2">인천</option>
		    <option value="3">경기도</option>
		    <option value="4">충청도</option>
		    <option value="5">강원도</option>
		    <option value="6">전라도</option>
		    <option value="7">경상도</option>
		    <option value="8">광주</option>
		    <option value="9">울산</option>
		    <option value="10">대구</option>
		    <option value="11">부산</option>
		    <option value="12">모두</option>
		</select>
	</div>
	<br>
	<button class="w3-button w3-light-grey w3-block" onclick="statistics()" style="width: 20%">검색</button>
</div>
<!-- <div id="chartView" align="center"></div> -->
<div id="chartView" align="center"></div>
<div id="boardView"></div>