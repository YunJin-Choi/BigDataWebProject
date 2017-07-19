<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MainUI 작업중</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
.mySlides {display:none}
.w3-tag, .fa {cursor:pointer}
.w3-tag {height:15px;width:15px;padding:0;margin-top:6px}
</style>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />
 	<meta name="Generator" content="EditPlus®">
 	<meta name="Author" content="">
	
<script>
// Slideshow
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demodots");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Owl Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- board JS -->
	<script src="js/board.js"></script>
	<!-- hotIssue JS -->
	<script src="js/hotIssue.js"></script>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Style -->
	<link rel="stylesheet" href="css/style.css">
	
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- board CSS -->
	<link rel="stylesheet" href="css/board.css">
	<!-- Hot Issue CSS -->
	<link rel="stylesheet" href="css/datalab.css">
	<!-- w3schools Icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	</head>
	<body>
	<header role="banner" id="fh5co-header">
		<div class="fluid-container">
			<nav class="navbar navbar-default">
				<div class="navbar-header">
					<!-- Mobile Toggle Menu Button -->
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
					<a class="navbar-brand" href="index.html"><span>M</span>arketing Community</a> 
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="#" id="homeMenu" onclick="homeMenu();"><span>Home</span></a></li>
						<li><a href="#" id="communityMktMenu" onclick="boardMenu('communityMkt');"><span>Marketing Board</span></a></li>
						<li><a href="#" id="communityOwnerMenu" onclick="boardMenu('communityOwner');"><span>Owner Board</span></a></li>
						<li><a href="#" id="QnAMenu" onclick="boardMenu('QnA');"><span>QnA Board</span></a></li>
						<li><a href="#" id="hotIssueMenu" onclick="hotIssueMenu();"><span>Hot Issue</span></a></li>
						<li class="call-to-action"><a href="#" onclick="document.getElementById('id01').style.display='block'" 
						style="width:auto;"><span>Login</span></a></li>
					</ul>
				</div>
			</nav>
	  </div>
	</header>
	<!-- Home Page -->
		<!-- Content -->
	<div class="menu" id="home" style="display: block;">

		<div class="w3-panel">
			<h1>
				<b>MARKETING</b>
			</h1>
		</div>

		<!-- Slideshow -->
		<div class="w3-container">
			<div class="w3-display-container mySlides">
				<img src="/w3images/coffee.jpg" style="width: 100%">
				<div class="w3-display-topleft w3-container w3-padding-32">
					<span class="w3-white w3-padding-large w3-animate-bottom">마케터
						카테고리</span>
				</div>
			</div>
			<div class="w3-display-container mySlides">
				<img src="/w3images/workbench.jpg" style="width: 100%">
				<div class="w3-display-middle w3-container w3-padding-32">
					<span class="w3-white w3-padding-large w3-animate-bottom">자영업자
						카테고리</span>
				</div>
			</div>
			<!-- Slideshow next/previous buttons -->
			<div class="w3-container w3-dark-grey w3-padding w3-xlarge">
				<div class="w3-left" onclick="plusDivs(-1)">
					<i class="fa fa-arrow-circle-left w3-hover-text-teal"></i>
				</div>
				<div class="w3-right" onclick="plusDivs(1)">
					<i class="fa fa-arrow-circle-right w3-hover-text-teal"></i>
				</div>

				<div class="w3-center">
					<span
						class="w3-tag demodots w3-border w3-transparent w3-hover-white"
						onclick="currentDiv(1)"></span> <span
						class="w3-tag demodots w3-border w3-transparent w3-hover-white"
						onclick="currentDiv(2)"></span>
				</div>
			</div>
		</div>

		<!-- Grid -->
		<div class="w3-row w3-container">
			<div class="w3-center w3-padding-64">
				<span
					class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">유용한페이지</span>
			</div>
			<iframe src="http://www.i-boss.co.kr/ab-74576" height="500"
				width="700" style="border: 5px solid grey;"> </iframe>
		</div>

		<!-- Contact -->
		<div class="w3-center w3-padding-64" id="contact">
			<span
				class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">
				홈페이지 담당자에게 연락하세요 </span>
		</div>

		<form class="w3-container" action="/action_page.php" target="_blank">

			<div class="w3-section">
				<label>Name</label> <input
					class="w3-input w3-border w3-hover-border-black"
					style="width: 100%;" type="text" name="Name" required>
			</div>

			<div class="w3-section">
				<label>Email</label> <input
					class="w3-input w3-border w3-hover-border-black"
					style="width: 100%;" type="text" name="Email" required>
			</div>

			<div class="w3-section">
				<label>Subject</label> <input
					class="w3-input w3-border w3-hover-border-black"
					style="width: 100%;" name="Subject" required>
			</div>

			<div class="w3-section">
				<label>Message</label> <input
					class="w3-input w3-border w3-hover-border-black"
					style="width: 100%;" name="Message" required>
			</div>

			<button type="submit" class="w3-button w3-block w3-black">Send</button>

		</form>

	</div>
	<!-- End Home -->
	<!-- Start Board -->
	<div class="menu" id="board" style="display: none;">
		<div style="height: 300px"></div>
		<div id="boardView" align="center"></div>
	</div>
	<!-- End Board -->
	
	<!-- Hot Issue -->
	<div class="menu" id="hotIssue" style="display: none;">
		<div style="height: 100px"></div>
		<div id="hotIssueView"></div>
	</div>
	<!-- End Hot Issue -->
	<!-- Start Login -->
	<div id="id01" class="modal">
		<form class="modal-content animate" name=login action="index.jsp">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span> 
				<img src="images/login.png" alt="Avatar" class="avatar">
			</div>
			<div class="containerLogin">
				<label><b>Email</b></label> 
				<input class="loginInput" type="text" placeholder="Enter Email" name="email" required> 
				<label><b>Password</b></label>
				<input class="loginInput" type="password" placeholder="Enter Password" name="password" required>
				<button class="loginButton" type="submit" onclick="loginCheck()">Login</button>
			</div>
		</form>
	</div>
	<!-- End Login -->
	<!-- Main JS (Do not remove) -->
	<script src="js/main.js" charset="utf-8"></script>
	</body>
</html>

