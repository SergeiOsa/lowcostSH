<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html lang="zxx" class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

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

<!-- CSS============================================= -->

<link rel="stylesheet" href="resources/css/linearicons.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/bootstrap.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/magnific-popup.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/jquery-ui.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/nice-select.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/animate.min.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/owl.carousel.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/main.css" type="text/css" />

<fmt:setLocale value="${sessionScope.local}" />
<fmt:setBundle basename="localization.local" var="loc" />
<fmt:message bundle="${loc}" key="local.button.main" var="main" />
<fmt:message bundle="${loc}" key="local.line.flights" var="flights" />
<fmt:message bundle="${loc}" key="local.line.origin" var="origin" />
<fmt:message bundle="${loc}" key="local.line.destination"
	var="destination" />
<fmt:message bundle="${loc}" key="local.line.departure" var="departure" />
<fmt:message bundle="${loc}" key="local.line.arrival" var="arrival" />
<fmt:message bundle="${loc}" key="local.line.price" var="price" />
<fmt:message bundle="${loc}" key="local.line.emptySeats"
	var="emptySeats" />
<fmt:message bundle="${loc}" key="local.line.chooseAFlight"
	var="chooseAFlight" />
<fmt:message bundle="${loc}" key="local.messege.needLogIn"
	var="needLogIn" />

</head>
<body>

	<!-- start header Area -->
	<jsp:include page="header_for_web_inf.jsp">
		<jsp:param name="pageName" value="index" />
	</jsp:include>
	<!-- end header Area -->

	<!-- start banner Area -->

	<section class="about-banner relative">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1 class="text-white">${flights}</h1>
					<p class="text-white link-nav">
						<a href="index">${main} </a> <span class="lnr lnr-arrow-right"></span>
						<a> ${flights}</a>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->

	<!-- Start table Area -->
	<section class="hot-deal-area section-gap">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-70 col-lg-8">
					<div class="title text-center">
						<h1 class="mb-10">Today’s Deals</h1>
						<p>We all live in an age that belongs to the young at heart.
							Life that is becoming extremely fast, day to.</p>
						<c:if test="${user eq null }">
							<a href="goToLogination">${needLogIn}.</a>
						</c:if>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="progress-table-wrap">
					<div class="progress-table">
						<c:if test="${user eq null }">
							<div class="table-head">
								<div class="origin">${origin}</div>
								<div class="destination">${destination}</div>
								<div class="departure">${departure}</div>
								<div class="arrival">${arrival}</div>
								<div class="emptySeats">${emptySeats}</div>
								<div class="price">${price}</div>
							</div>
							<c:forEach var="preOrder" items="${preOrdersSet}">
								<div class="table-row">
									<div class="origin">
										<c:out value="${preOrder.flight.origin}" />
									</div>
									<div class="destination">
										<c:out value="${preOrder.flight.destination}" />
									</div>
									<div class="departure">
										<c:out value="${preOrder.flight.departure}" />
									</div>
									<div class="arrival">
										<c:out value="${preOrder.flight.arrival}" />
									</div>
									<div class="emptySeats">
										<c:out value="${preOrder.flight.emptySeats}" />
									</div>
									<div class="price">
										<form:form action="chooseFlight" modelAttribute="preOrderSimple" >
											<form:input type="hidden" path="flightNumber" value="${preOrder.flight.flightNumber}" />
											<form:input type="hidden" path="price" value="${preOrder.price}" />
											<input type="submit" class="primary-btn text-uppercase"
												value="${preOrder.price} $" />
										</form:form>
									</div>
								</div>
							</c:forEach>
						</c:if>

						<c:if test="${user ne null }">
							<div class="table-head">
								<div class="origin">${origin}</div>
								<div class="destination">${destination}</div>
								<div class="departure">${departure}</div>
								<div class="arrival">${arrival}</div>
								<div class="emptySeats">${emptySeats}</div>
								<div class="price">${price}</div>
							</div>
							<c:forEach var="preOrder" items="${preOrdersSet}">
								<div class="table-row">
									<div class="origin">
										<c:out value="${preOrder.flight.origin}" />
									</div>
									<div class="destination">
										<c:out value="${preOrder.flight.destination}" />
									</div>
									<div class="departure">
										<c:out value="${preOrder.flight.departure}" />
									</div>
									<div class="arrival">
										<c:out value="${preOrder.flight.arrival}" />
									</div>
									<div class="emptySeats">
										<c:out value="${preOrder.flight.emptySeats}" />
									</div>
									<div class="price">
										<c:out value="${preOrder.price} $" />
									</div>
								</div>
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End table Area -->

	<!-- start footer Area -->
	<jsp:include page="footer_for_web_inf.jsp">
		<jsp:param name="pageName" value="index.jsp" />
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