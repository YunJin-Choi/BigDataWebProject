<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Union &mdash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />
 	<meta name="Generator" content="EditPlus®">
 	<meta name="Author" content="">


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
					<a class="navbar-brand" href="index.html"><span>U</span>nion</a> 
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="#" id="homeMenu" onclick="homeMenu();"><span>Home</span></a></li>
						<li><a href="#" id="communityMktMenu" onclick="boardMenu('communityMkt');"><span>Marketing Board</span></a></li>
						<li><a href="#" id="communityOwnerMenu" onclick="boardMenu('communityOwner');"><span>Owner Board</span></a></li>
						<li><a href="#" id="QnAMenu" onclick="boardMenu('QnA');"><span>QnA Board</span></a></li>
						<li><a href="#" id="hotIssueMenu" onclick="hotIssueMenu();"><span>Hot Issue</span></a></li>
						<li class="call-to-action"><a href="#"><span>Login</span></a></li>
					</ul>
				</div>
			</nav>
	  </div>
	</header>
	<!-- Home Page -->
	
	<div class="menu" id="home" style="display: block;">
		<section id="fh5co-home" data-section="home" style="background-image: url(images/full_image_3.jpg);" data-stellar-background-ratio="0.5">
			<div class="gradient"></div>
			<div class="container">
				<div class="text-wrap">
					<div class="text-inner">
						<div class="row">
							<div class="col-md-8 col-md-offset-2">
								<h1 class="to-animate">커뮤니티 인기글 목록</h1>
								<div class="call-to-action">
									<a href="#" class="demo to-animate">Demo</a>
									<a href="#" class="download to-animate">Download</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
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
	
	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>
	</body>
</html>

