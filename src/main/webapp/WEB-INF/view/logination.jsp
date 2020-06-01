<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
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

<title>Logination</title>

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
<fmt:message bundle="${loc}" key="local.button.login" var="login_button" />
<fmt:message bundle="${loc}" key="local.messege.enter" var="enter" />
<fmt:message bundle="${loc}" key="local.messege.dontaccount" var="dont_account" />

</head>

<body>

	<!-- start header Area -->
	<jsp:include page="/WEB-INF/view/header_for_web_inf.jsp">
		<jsp:param name="pageName" value="logination" />
	</jsp:include>
	<!-- end header Area -->

	<!-- start banner Area -->
	<section class="banner-area relative">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div
				class="row fullscreen align-items-center justify-content-between">
				<div class="col-lg-6 col-md-6 banner-left">
					<h6 class="text-white">Away from monotonous life</h6>
					<h1 class="text-white">${enter }</h1>
					<h6 class="text-white"><a href="/lowcoastM/registration.jsp">${dont_account}</a></h6>
					<!--
							<a href="#" class="primary-btn text-uppercase">Get Started</a>
							-->
				</div>
				<div class="col-lg-4 col-md-6 banner-right">
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="flight" role="tabpanel"
							aria-labelledby="flight-tab">
							<div class="form-wrap">
							
								<form:form action="logination" modelAttribute="loginData">
									<p><form:input class="form-control" placeholder="Login" path="login" /></p>
									<p><form:input class="form-control" type="password" placeholder="Password" path="password" /></p>
								 	<input type="submit" class="primary-btn text-uppercase" value="${login_button}" /><br/> 
									<c:if test="${user eq null }">
										<c:out value="${loginErrorMessege }" />
									</c:if>
								</form:form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->

	<!-- start footer Area -->
	<jsp:include page="/WEB-INF/view/footer_for_web_inf.jsp">
		<jsp:param name="pageName" value="/WEB-INF/view/logination.jsp" />
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