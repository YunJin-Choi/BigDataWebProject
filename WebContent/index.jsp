<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Marketing Community</title>
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
	<!-- w3school css -->
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- board CSS -->
	<link rel="stylesheet" href="css/board.css">
	<!-- Hot Issue CSS -->
	<link rel="stylesheet" href="css/datalab.css">
	<!-- w3schools Icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>

	<body>
	<!--  �޴� -->
	<header role="banner" id="fh5co-header">
		<div class="fluid-container">
			<nav class="navbar navbar-default">
				<div class="navbar-header">
					<!-- Mobile Toggle Menu Button -->
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
					<a class="navbar-brand" href="index.jsp"><span><font face="verdana" >M</font></span><font face="verdana" >arketing Community</font></a> 
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="#" id="homeMenu" onclick="homeMenu()"><span><font face="verdana" >Home</font></span></a></li>
						<c:choose>
							<c:when test="${empty Member}"></c:when>
							<c:when test="${Member.job eq 'marketer'}">
								<li><a href="#" id="communityMktMenu" onclick="boardMenu('communityMkt')"><span><font face="verdana" >Marketing Board</font></span></a></li>
								<li><a href="#" id="QnAMenu" onclick="boardMenu('QnA')"><span>QnA Board</span></a></li>
							</c:when>
							<c:otherwise>
								<li><a href="#" id="communityOwnerMenu" onclick="boardMenu('communityOwner')"><span><font face="verdana" >Owner Board</font></span></a></li>
								<li><a href="#" id="QnAMenu" onclick="boardMenu('QnA')"><span><font face="verdana" >QnA Board</font></span></a></li>
								<li><a href="#" id="recommendMenu" onclick="recommendMenu()"><span><font face="verdana" >Recommend</font></span></a></li>
							</c:otherwise>
						</c:choose>
						<!-- <li><a href="#" id="hotIssueMenu" onclick="hotIssueMenu()"><span>Hot Issue</span></a></li> -->
						<li class="dropdown"><a href="#" id="trendMenu" class="dropbtn"><span><font face="verdana" >Trend</font></span></a>
					      	<div class="dropdown-content">
					        	<a href="#" onclick="trendMenu('korea')"><font face="verdana" >Korea</font></a>
					        	<a href="#" onclick="trendMenu('us')"><font face="verdana" >US</font></a>
					        	<a href="#" onclick="trendMenu('china')"><font face="verdana" >China</font></a>
					        	<a href="#" onclick="trendMenu('japan')"><font face="verdana" >Japan</font></a>
					      	</div>
					    </li>
						<c:choose>
							<c:when test="${empty Member}">
								<li class="call-to-action"><a href="#" onclick="document.getElementById('id01').style.display='block'" 
								style="width:auto;"><span><font face="verdana" >Login</font></span></a></li>
							</c:when>
							<c:otherwise>
								<li><a href="#" onclick="logout()"><span>${Member.nickName}</span></a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</nav>
	  </div>
	</header>
	<!-- �޴��� �� -->
	
	
	
	<!-- intro ���� -->
	
	
	<div class="w3-row w3-container">
			<div class="w3-center w3-padding-64">
				<span
					class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">What we offer</span>
			</div>
			

    <div class="w3-col l3 m6 w3-light-grey w3-container w3-padding-16" style="height: 200px">
      <h3>Marketer Board</h3><br>
      <p  >for active information exchange and communication among marketers</p>
    </div>

    <div class="w3-col l3 m6 w3-grey w3-container w3-padding-16" style="height: 200px">
      <h3>Owner Board</h3><br>
      <p >for active information exchange and communication among owners</p>
    </div>

    <div class="w3-col l3 m6 w3-dark-grey w3-container w3-padding-16" style="height: 200px">
      <h3 style="color:white">Trend Information</h3><br>
      <p  style="color:white" >for providing domestic and global marketing trend information</p>
    </div>

    <div class="w3-col l3 m6 w3-black w3-container w3-padding-16" style="height: 200px">
      <h3  style="color:white">Recommendation</h3><br>
      <p  style="color:white">for recommending the best marketing method based on our data</p>
    </div>
  </div>
	
	<!-- intro �� -->
	
	<!-- Home Page Start -->
	<div class="menu" id="home" style="display: block">
		<div class="w3-container">
			<div class="w3-display-container mySlides">
				<img src="" style="width: 100%">
				<div class="w3-display-topleft w3-container w3-padding-32">
					<span class="w3-white w3-padding-large w3-animate-bottom">������
						ī�װ�</span>
				</div>
			</div>
			<div class="w3-display-container mySlides">
				<img src="" style="width: 100%">
				<div class="w3-display-middle w3-container w3-padding-32">
					<span class="w3-white w3-padding-large w3-animate-bottom">�ڿ�����
						ī�װ�</span>
				</div>
			</div>
			
			</div>
		</div>
		
	
		
		 <!-- About Section -->
 	<div class="w3-row w3-container">
			<div class="w3-center w3-padding-64">
				<span
					class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">About Us</span>
			</div>

  <div class="w3-row-padding w3-grayscale" style="margin-left:1.5%">
  
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="images/p3.JPG" alt="Yunjin"  style="width:300px; height: 200px">
      <br><br>
      <h3><font face="verdana" >Choi Yunjin</font></h3><br>
      <p class="w3-opacity"><font face="verdana" >Computer Engineering</font></p>
      <p style="width:300px; height: 80px" ><font face="verdana" >I am a team leader of our project and I have professional skill in this field. </font></p>
      <p><a href="https://accounts.google.com"><button class="w3-button w3-light-grey w3-block" style="width:300px"><font face="verdana" >Contact</font></button></a></p>
    </div>
    
    
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="images/p4.JPG" alt="Eunyong"  style="width:300px; height: 200px">
      <br><br>
      <h3><font face="verdana" >Lee Eunyong</font></h3><br>
      <p class="w3-opacity"><font face="verdana" >Industrial engineering</font></p>
      <p style="width:300px; height: 80px" ><font face="verdana" >I have higher concentration when doing our project and I always smile:)</font></p>
      <p><a href="https://accounts.google.com"><button class="w3-button w3-light-grey w3-block" style="width:300px"><font face="verdana" >Contact</font></button></a></p>
    </div>
    
    
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="images/p2.JPG" alt="Miso" style="width:300px; height: 200px">
      <br><br>
      <h3><font face="verdana" >Kim Miso</font></h3><br>
      <p class="w3-opacity"><font face="verdana" >Statistics</font></p>
      <p  style="height: 80px"><font face="verdana" >I am only female in our team and I am good at designing web-site and have cooperation mind.</font></p>
      <p><a href="https://accounts.google.com"><button class="w3-button w3-light-grey w3-block" style="width:300px"><font face="verdana" >Contact</font></button></a></p>
    </div>
    
    
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="images/p1.JPG" alt="Jeon" style="width:300px; height: 200px">
      <br><br>
      <h3><font face="verdana" >Jeon hyunjun</font></h3><br>
      <p class="w3-opacity"><font face="verdana" >Environmental engineering</font></p>
      <p  style="height: 80px"><font face="verdana" >Although My major is environmental engineering, I am interested in IT and have various IT knowledge. </font></p>
      <p><a href="https://accounts.google.com"><button class="w3-button w3-light-grey w3-block" style="width:300px"><font face="verdana" >Contact</font></button></a></p>
      
    </div>
  </div>
  
  <!-- about �� -->
		
			<!--  ������ ������ Start -->
		<div class="w3-row w3-container">
			<div class="w3-center w3-padding-64">
				<span
					class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">Useful Page</span>
			</div>
			<center><iframe src="http://www.usmarketingcorp.com/" display:block margin:0 auto height="500"
				width="900" style="border: 5px solid grey;"> </iframe></center>
		</div>
		<!-- ������ ������ End -->
		
		<br><br>
		
	
		
		<!-- Footer start -->
		<div id="fh5co-footer" role="contentinfo">
			<div class="container">
				<div class="row">
					<div class="col-md-4 to-animate">
						<h3 class="section-title"><font face="verdana" >About Us</font></h3><br>
						<p>Kdata ������ û������ 1�� <br>3-days web-project</p>
						<p class="copy-right">&copy; 2017 Kdata <br> All Rights Reserved by my Team <br>
							Designed by <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a>
						</p>
					</div>
	
					<div class="col-md-4 to-animate">
						<h3 class="section-title">Our Address</h3><br>
						<ul class="contact-info">
							<li><i class="icon-map-marker"></i>����Ư���� �߱� �������9�� 42 �ο����� 7�� �ѱ� �����������</li>
							<li><i class="icon-phone"></i>+82 02 3708 5300</li>
							<li><i class="icon-envelope"></i><a href="https://www.google.com">info@gmail.com</a></li>
							<li><i class="icon-globe2"></i><a href="https://www.google.com">www.google.com</a></li>
						</ul>
						<h3 class="section-title">Connect with Us</h3>
						<ul class="social-media">
							<li><a href="https://www.facebook.com/" target="blank" class="facebook"><i class="icon-facebook"></i></a></li>
							<li><a href="https://www.github.com/" target="blank" class="github"><i class="icon-github-alt"></i></a></li>
						</ul>
					</div>
	
					<div class="col-md-4 to-animate">
						<h3 class="section-title">�� ����Ʈ�� ���� �����ϱ�</h3><br>
						<form class="contact-form">
							<div class="form-group">
								<label for="name" class="sr-only">Name</label>
								<input type="name" class="form-control" id="name" placeholder="Name">
							</div>
							<div class="form-group">
								<label for="email" class="sr-only">Email</label>
								<input type="email" class="form-control" id="email" placeholder="Email">
							</div>
							<div class="form-group">
								<label for="message" class="sr-only">Message</label>
								<textarea class="form-control" id="message" rows="7" placeholder="Message"></textarea>
							</div>
							<div class="form-group">
								<center><input type="submit" id="btn-submit" class="btn btn-send-message btn-md"  value="Send Message"></center>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer end -->	
	</div>
	<!-- End Home -->
	<!-- Start Board -->
	<div class="menu" id="board" style="display: none;">
		<div style="height: 150px"></div>
		<div id="boardView" align="center"></div>
	</div>
	<!-- End Board -->
	
	<!-- Trend Script -->
	<script type="text/javascript" src="js/trend.js"></script>
	<!-- Start Trend -->
	<div class="menu" id="trend" style="display: none;">
		<div style="height: 100px"></div>
		<div id="trendView"></div>
		<div style="height: 50px"></div>
	</div>
	<!-- End Trend -->
	
	<!-- Start Recommend -->
	<div class="menu" id="recommend" style="display: none;">
		<div style="height: 100px"></div>
		<div id="recommendView"></div>
		<div style="height: 50px"></div>
	</div>
	<!-- End Recommend -->
		
	<!-- Login AND Join JavaScript -->
	<script type="text/javascript" src="js/loginNjoin.js" charset="utf-8"></script>
	<!-- Start Login -->
	<div class="modal" id="id01">
		<div class="modal-content animate" id="login">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span> 
			</div>
			<div class="containerLogin">
				<label><b>Email</b></label> 
				<input class="inputForm" type="text" placeholder="Enter Email" name="email"> 
				<label><b>Password</b></label>
				<input class="inputForm" type="password" placeholder="Enter Password" name="password">
				<button class="buttonForm1" onclick="loginCheck()">Login</button>
				<button class="buttonForm2" onclick="join()">Join</button>
			</div>
		</div>
	</div>
	<!-- End Login -->
	
	<!-- Start Join -->
	<div class="modal" id="id02">
		<div class="modal-content animate" id="join">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id02').style.display='none'"
					class="close" title="Close Modal">&times;</span> 
			</div>
			<div class="containerLogin">
				<label><b>Email</b></label> 
				<input class="inputForm" type="text" placeholder="Enter Email" name="email"> 
				<label><b>Password</b></label>
				<input class="inputForm" type="password" placeholder="Enter Password" name="password1">
				<label><b>Password Confirm</b></label>
				<input class="inputForm" type="password" placeholder="Enter Password" name="password2">
				<label><b>Nick Name</b></label> 
				<input class="inputForm" type="text" placeholder="Enter Nick Name" name="nickname"> 
				<label><b>Call Number</b></label>
				<input class="inputForm" type="tel" placeholder="Enter Call Number" name="callnumber" maxlength="11">
				<center><input type="radio" name="job" value="marketer">Marketer
                <input type="radio" name="job" value="owner">Owner</center>
				<button class="buttonForm3" onclick="joinCheck()">Join</button>
			</div>
		</div>
	</div>
	<!-- End Join -->
	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>
	</body>
</html>

