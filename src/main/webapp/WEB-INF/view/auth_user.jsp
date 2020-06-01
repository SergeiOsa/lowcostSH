<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
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

<fmt:setLocale value="${sessionScope.local}" />
<fmt:setBundle basename="localization.local" var="loc" />
<fmt:message bundle="${loc}" key="local.button.main" var="main" />
<fmt:message bundle="${loc}" key="local.line.id" var="id" />
<fmt:message bundle="${loc}" key="local.line.name" var="name" />
<fmt:message bundle="${loc}" key="local.line.surname" var="surname" />
<fmt:message bundle="${loc}" key="local.line.email" var="email" />
<fmt:message bundle="${loc}" key="local.line.role" var="role" />
<fmt:message bundle="${loc}" key="local.messege.hello" var="hello" />
<fmt:message bundle="${loc}" key="local.button.findYourFlights"
	var="findYourFlights_button" />
<fmt:message bundle="${loc}" key="local.button.editProfile"
	var="editProfile_button" />
<fmt:message bundle="${loc}" key="local.button.yourOrders"
	var="yourOrders_button" />
<fmt:message bundle="${loc}" key="local.button.getAllUsers"
	var="getAllUsers_button" />
<fmt:message bundle="${loc}" key="local.button.getAllFlights"
	var="getAllFlights_button" />
<fmt:message bundle="${loc}" key="local.button.getOrders"
	var="getOrders_button" />
<fmt:message bundle="${loc}" key="local.button.addNewFlight"
	var="addNewFlight_button" />
<fmt:message bundle="${loc}" key="local.button.deleteFlight"
	var="deleteFlight_button" />
	
</head>

<body>

	<!-- start header Area -->
	<jsp:include page="/WEB-INF/view/header_for_web_inf.jsp">
		<jsp:param name="pageName" value="auth_user" />
	</jsp:include>
	<!-- end header Area -->

	<!-- start banner Area -->
	<section class="about-banner relative">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1 class="text-white">${hello }, ${user.name}</h1>
					<p class="text-white link-nav">
						<a href="index">${main} </a> <span class="lnr lnr-arrow-right"></span>
						<a> User Page</a>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->

			<!-- Start home-about Area -->
			<section class="home-about-area">
				<div class="container-fluid">
					<div class="row align-items-center justify-content-end">
						<div class="col-lg-6 col-md-12 home-about-left">
							<h1>
								Выберите действие:
							</h1>
														
							<form:form action="find_flight">
									<input type="submit" class="primary-btn text-uppercase"
										value="${findYourFlights_button }" />
									<br />
								</form:form>
								<form:form action="go_to_edit_user_profile" >
									<input type="submit" class="primary-btn text-uppercase"
										value="${editProfile_button }" />
									<br />
								</form:form>
								<form:form action="get_report" >
									<input type="submit" class="primary-btn text-uppercase"
										value="${yourOrders_button}" />
									<br />
								</form:form>

								<c:if test="${user.role eq 'admin' }">
									<form:form action="get_all_users" >
										<input type="submit" class="primary-btn text-uppercase"
											value="${getAllUsers_button}" />
										<br />
									</form:form>
									<form:form action="go_to_get_all_flights" >
										<input type="submit" class="primary-btn text-uppercase"
											value="${getAllFlights_button }" />
										<br />
									</form:form>
									<form:form action="go_to_get_all_orders" >
										<input type="submit" class="primary-btn text-uppercase"
											value="${getOrders_button }" />
										<br />
									</form:form>
									<form:form action="go_to_add_new_flight" >
										<input type="submit" class="primary-btn text-uppercase"
											value="${addNewFlight_button}" />
										<br />
									</form:form>
									<form:form action="go_to_delete_flight" >
										<input type="submit" class="primary-btn text-uppercase"
											value="${deleteFlight_button}" />
										<br />
									</form:form>
							</c:if>
							
						</div>
						<div class="col-lg-6 col-md-12 home-about-right no-padding">
							<img class="img-fluid" src="resources/img/hotels/about-img.jpg" alt="">
						</div>
					</div>
				</div>	
			</section>
			<!-- End home-about Area -->
	
	<!-- Start user-two Area -->
	<section class="insurence-two-area pb-120">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 insurence-left">
					<h1>User info:</h1>
					<div class="list-wrap">
						<ul>
							<li>${id}: ${user.id}</li>
							<li>${name}: ${user.name}</li>
							<li>${surname }: ${user.surname}</li>
							<li>${email }: ${user.email}</li>
							<li>${role }: ${user.role}</li>
							
						</ul>
					</div>
				</div>
				<div class="col-lg-6 insurence-right">
					<img class="img-fluid img-two" src="resources/img/insurence/i2.jpg" alt="">
				</div>
			</div>
		</div>
	</section>
	<!-- End user-two Area -->
	
	<!-- start footer Area -->
	<jsp:include page="/WEB-INF/view/footer_for_web_inf.jsp">
		<jsp:param name="pageName" value="/WEB-INF/view/auth_user.jsp" />
	</jsp:include>
	<!-- End footer Area -->

	<script src="resources/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/vendor/bootstrap.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
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