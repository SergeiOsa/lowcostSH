<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>LOWКОСТИК</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="resources/css/linearicons.css">
			<link rel="stylesheet" href="resources/css/font-awesome.min.css">
			<link rel="stylesheet" href="resources/css/bootstrap.css">
			<link rel="stylesheet" href="resources/css/magnific-popup.css">
			<link rel="stylesheet" href="resources/css/jquery-ui.css">				
			<link rel="stylesheet" href="resources/css/nice-select.css">							
			<link rel="stylesheet" href="resources/css/animate.min.css">
			<link rel="stylesheet" href="resources/css/owl.carousel.css">				
			<link rel="stylesheet" href="resources/css/main.css">
		</head>
		<body>	
			<!-- start header Area -->
			<jsp:include page="/WEB-INF/view/header_for_web_inf.jsp">
				<jsp:param name="pageName" value="/WEB-INF/view/contact.jsp" />
			</jsp:include>
			<!-- end header Area -->
			  
			<!-- start banner Area -->
			<section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								About Us				
							</h1>	
							<p class="text-white link-nav"><a href="index">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a> About Us</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

			<!-- Start about-info Area -->
			<section class="about-info-area section-gap">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-6 info-left">
							<img class="img-fluid" src="resources/img/about/cats.jpg" alt="">
						</div>
						<div class="col-lg-6 info-right">
							<h6>About Us</h6>
							<h1>Who We Are?</h1>
							<h1>We are CATS!!! AHAHAHAHAHa</h1>	
						</div>
					</div>
				</div>	
			</section>
			<!-- End about-info Area -->
		    
			<!-- start footer Area -->		
			<jsp:include page="/WEB-INF/view/footer_for_web_inf.jsp">
					<jsp:param name="pageName" value="/WEB-INF/view/contact.jsp" />
			</jsp:include>
			<!-- End footer Area -->	

			<script src="resources/js/vendor/jquery-2.2.4.min.js"></script>
			<script src="resources/js/popper.min.js"></script>
			<script src="resources/js/vendor/bootstrap.min.js"></script>			
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>		
 			<script src="resources/js/jquery-ui.js"></script>					
  			<script src="resources/js/easing.min.js"></script>			
			<script src="resources/js/hoverIntent.js"></script>
			<script src="resources/js/superfish.min.js"></script>	
			<script src="resources/js/jquery.ajaxchimp.min.js"></script>
			<script src="resources/js/jquery.magnific-popup.min.js"></script>						
			<script src="resources/js/jquery.nice-select.min.js"></script>					
			<script src="resources/js/owl.carousel.min.js"></script>							
			<script src="resources/js/mail-script.js"></script>	
			<script src="resources/js/main.js"></script>	
		</body>
	</html>