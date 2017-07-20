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
  //x[slideIndex-1].style.display = "block";  
  //dots[slideIndex-1].className += " w3-white";
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
	<!--  메뉴 -->
	<header role="banner" id="fh5co-header">
		<div class="fluid-container">
			<nav class="navbar navbar-default">
				<div class="navbar-header">
					<!-- Mobile Toggle Menu Button -->
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
					<a class="navbar-brand" href="index.jsp"><span>M</span>arketing Community</a> 
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="#" id="homeMenu" onclick="homeMenu()"><span>Home</span></a></li>
						<c:choose>
							<c:when test="${empty Member}"></c:when>
							<c:when test="${Member.job eq 'marketer'}">
								<li><a href="#" id="communityMktMenu" onclick="boardMenu('communityMkt')"><span>Marketing Board</span></a></li>
								<li><a href="#" id="QnAMenu" onclick="boardMenu('QnA')"><span>QnA Board</span></a></li>
							</c:when>
							<c:otherwise>
								<li><a href="#" id="communityOwnerMenu" onclick="boardMenu('communityOwner')"><span>Owner Board</span></a></li>
								<li><a href="#" id="QnAMenu" onclick="boardMenu('QnA')"><span>QnA Board</span></a></li>
								<li><a href="#" id="recommendMenu" onclick="recommendMenu()"><span>Recommend</span></a></li>
							</c:otherwise>
						</c:choose>
						<!-- <li><a href="#" id="hotIssueMenu" onclick="hotIssueMenu()"><span>Hot Issue</span></a></li> -->
						<li class="dropdown"><a href="#" id="trendMenu" class="dropbtn"><span>Trend</span></a>
					      	<div class="dropdown-content">
					        	<a href="#" onclick="trendMenu('us')">US</a>
					        	<a href="#" onclick="trendMenu('china')">China</a>
					        	<a href="#" onclick="trendMenu('japan')">Japan</a>
					      	</div>
					    </li>
						<c:choose>
							<c:when test="${empty Member}">
								<li class="call-to-action"><a href="#" onclick="document.getElementById('id01').style.display='block'" 
								style="width:auto;"><span>Login</span></a></li>
							</c:when>
							<c:otherwise>
								<li><a><span>${Member.nickName}</span></a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</nav>
	  </div>
	</header>
	<!-- 메뉴바 끝 -->
	
	<!-- Home Page Start -->
	<div class="menu" id="home" style="display: block">
		<div class="w3-container">
			<div class="w3-display-container mySlides">
				<img src="" style="width: 100%">
				<div class="w3-display-topleft w3-container w3-padding-32">
					<span class="w3-white w3-padding-large w3-animate-bottom">마케터
						카테고리</span>
				</div>
			</div>
			<div class="w3-display-container mySlides">
				<img src="" style="width: 100%">
				<div class="w3-display-middle w3-container w3-padding-32">
					<span class="w3-white w3-padding-large w3-animate-bottom">자영업자
						카테고리</span>
				</div>
			</div>
			<!-- Slide show next/previous buttons -->
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
		
		<!--  유용한 페이지 Start -->
		<div class="w3-row w3-container">
			<div class="w3-center w3-padding-64">
				<span
					class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">유용한페이지</span>
			</div>
			<center><iframe src="http://www.i-boss.co.kr/ab-74576" display:block margin:0 auto height="500"
				width="700" style="border: 5px solid grey;"> </iframe></center>
		</div>
		<!-- 유용한 페이지 End -->
			<!-- 만든 사람들 시작 -->
		<section id="fh5co-team" data-section="team">
		<div class="fh5co-team">
			<div class="container">
				<div class="row">
					<div class="col-md-12 section-heading text-center">
						<h2 class="to-animate">우리팀을 소개합니다</h2>
						<div class="row">
							<div class="col-md-8 col-md-offset-2 subtext">
								<h3 class="to-animate">Far far away, behind the word mountains, far from the countries Vokalia and 
								Consonantia, there live the blind texts. Separated they live in Bookmarksgrove. </h3>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="team-box text-center to-animate-2">
							<div class="user"><img class="img-reponsive" src="images/person4.jpg" alt="Roger Garfield"></div>
								<h3>Roger Garfield</h3>
								<span class="position">Co-Founder, Lead Developer</span>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, 
								there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
								<ul class="social-media">
									<li><a href="https://www.facebook.com/" target="blank" class="facebook"><i class="icon-facebook"></i></a></li>
									<li><a href="https://www.github.com/" target="blank" class="github"><i class="icon-github-alt"></i></a></li>
								</ul>
							</div>
						</div>
						
						<div class="row">
						<div class="col-md-4">
							<div class="team-box text-center to-animate-2">
								<div class="user"><img class="img-reponsive" src="images/person4.jpg" alt="Roger Garfield"></div>
								<h3>Roger Garfield</h3>
								<span class="position">Co-Founder, Lead Developer</span>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, 
								there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
								<ul class="social-media">
									<li><a href="https://www.facebook.com/" target="blank" class="facebook"><i class="icon-facebook"></i></a></li>
									<li><a href="https://www.github.com/" target="blank" class="github"><i class="icon-github-alt"></i></a></li>
								</ul>
							</div>
						</div>
	
						<div class="col-md-4">
							<div class="team-box text-center to-animate-2">
								<div class="user"><img class="img-reponsive" src="images/person2.jpg" alt="Roger Garfield"></div>
								<h3>Kevin Steve</h3>
								<span class="position">Co-Founder, Product Designer</span>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, 
								there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
								<ul class="social-media">
									<li><a href="https://www.facebook.com/" target="blank" class="facebook"><i class="icon-facebook"></i></a></li>
									<li><a href="https://www.github.com/" target="blank" class="github"><i class="icon-github-alt"></i></a></li>
								</ul>
							</div>
						</div>
	
						<div class="col-md-4">
							<div class="team-box text-center to-animate-2">
								<div class="user"><img class="img-reponsive" src="images/person3.jpg" alt="Roger Garfield"></div>
								<h3>Ross Standford</h3>
								<span class="position">Full Stack Developer</span>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
								 there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
								<ul class="social-media">
									<li><a href="https://www.facebook.com/" target="blank" class="facebook"><i class="icon-facebook"></i></a></li>
									<li><a href="https://www.github.com/" target="blank" class="github"><i class="icon-github-alt"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<!-- 만든 사람들 끝 -->
		
		<!-- sign up free start-->
		<div class="getting-started getting-started-2">
			<div class="container">
				<div class="row">
					<div class="col-md-6 to-animate">
						<h3>커뮤니티 시작하기</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
					</div>
					<div class="col-md-6 to-animate-2">
						<div class="call-to-action text-right">
							<a href="#" onclick="document.getElementById('id01').style.display='block'" 
							style="width:auto;" class="sign-up">회 원 가 입</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- sign up free end-->
		
		<!-- Footer start -->
		<div id="fh5co-footer" role="contentinfo">
			<div class="container">
				<div class="row">
					<div class="col-md-4 to-animate">
						<h3 class="section-title">About Us</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
						 there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics.</p>
						<p class="copy-right">&copy; 2015 Union Free Template. <br>All Rights Reserved. <br>
							Designed by <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a>
							Demo Images: <a href="http://unsplash.com/" target="_blank">Unsplash</a> &amp; Dribbble Image by <a href="https://dribbble.com/tibi_neamu" target="_blank">Tiberiu</a>
						</p>
					</div>
	
					<div class="col-md-4 to-animate">
						<h3 class="section-title">Our Address</h3>
						<ul class="contact-info">
							<li><i class="icon-map-marker"></i>198 West 21th Street, Suite 721 New York NY 10016</li>
							<li><i class="icon-phone"></i>+ 1235 2355 98</li>
							<li><i class="icon-envelope"></i><a href="#">info@yoursite.com</a></li>
							<li><i class="icon-globe2"></i><a href="#">www.yoursite.com</a></li>
						</ul>
						<h3 class="section-title">Connect with Us</h3>
						<ul class="social-media">
							<li><a href="https://www.facebook.com/" target="blank" class="facebook"><i class="icon-facebook"></i></a></li>
							<li><a href="https://www.github.com/" target="blank" class="github"><i class="icon-github-alt"></i></a></li>
						</ul>
					</div>
	
					<div class="col-md-4 to-animate">
						<h3 class="section-title">Drop us a line</h3>
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
								<input type="submit" id="btn-submit" class="btn btn-send-message btn-md" value="Send Message">
							</div>
						</form>
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
	
	<!-- Hot Issue -->
	<div class="menu" id="hotIssue" style="display: none;">
		<div style="height: 100px"></div>
		<div id="hotIssueView"></div>
	</div>
	<!-- End Hot Issue -->
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
				<center><input type="radio" name="job" value="mkt">Marketer
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

