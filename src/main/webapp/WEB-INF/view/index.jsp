<%@ page language="java" contentType="text/html; utf-8"
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
			
<link rel="stylesheet" href="resources/css/linearicons.css" type="text/css" />
<link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css" />
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="resources/css/nice-select.css" type="text/css" />
<link rel="stylesheet" href="resources/css/animate.min.css" type="text/css" />
<link rel="stylesheet" href="resources/css/owl.carousel.css" type="text/css" />
<link rel="stylesheet" href="resources/css/main.css" type="text/css" />

<fmt:setLocale value="${sessionScope.local}" />
<fmt:setBundle basename="localization.local" var="loc" />
<fmt:message bundle="${loc}" key="local.line.flights" var="flights" />
<fmt:message bundle="${loc}" key="local.line.hotels" var="hotels" />
<fmt:message bundle="${loc}" key="local.line.origin" var="origin" />
<fmt:message bundle="${loc}" key="local.line.destination" var="destination" />
<fmt:message bundle="${loc}" key="local.line.departure" var="departure" />
<fmt:message bundle="${loc}" key="local.button.search" var="search" />

</head>

<body>

	<!-- start header Area -->
	<jsp:include page="header_for_web_inf.jsp">
		<jsp:param name="pageName" value="index" />
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
					<h1 class="text-white">LowКостик</h1>

				</div>
				<div class="col-lg-4 col-md-6 banner-right">
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							id="flight-tab" data-toggle="tab" href="#flight" role="tab"
							aria-controls="flight" aria-selected="true">${flights}</a></li>
						<li class="nav-item"><a class="nav-link" id="hotel-tab"
							data-toggle="tab" href="#hotel" role="tab" aria-controls="hotel"
							aria-selected="false">${hotels}</a></li>
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="flight" role="tabpanel"
							aria-labelledby="flight-tab">
							<div class="form-wrap">
							 	<form:form action="search" modelAttribute="cityData">
									<p><form:select class="form-select" path="origin" placeholder="From ">
										<form:option value="Berlin">Berlin</form:option>
										<form:option value="London">London</form:option>
										<form:option value="Minsk">Minsk</form:option>
										<form:option value="Moscow">Moscow</form:option>
										<form:option value="New York">New York</form:option>
										<form:option value="Paris">Paris</form:option>
										<form:option value="Pinsk">Pinsk</form:option>
									</form:select></p>
									<p><form:select class="form-select" path="destination" placeholder="To ">
										<form:option value="Berlin">Berlin</form:option>
										<form:option value="London">London</form:option>
										<form:option value="Minsk">Minsk</form:option>
										<form:option value="Moscow">Moscow</form:option>
										<form:option value="New York">New York</form:option>
										<form:option value="Paris">Paris</form:option>
										<form:option value="Pinsk">Pinsk</form:option>
									</form:select></p>
									<p><input type="text" class="form-control date-picker" name="departure"
									placeholder="Start " onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Start '"></p>
									<input type="submit" class="primary-btn text-uppercase" value="${search}" /> 
								</form:form>
								
								<%-- <input type="text" class="form-control" name="name"
									placeholder="From " onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'From '">
								<input type="text" class="form-control" name="to"
									placeholder="To " onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'To '">
								<input type="text" class="form-control date-picker" name="start"
									placeholder="Start " onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Start '">
									<a href="#" class="primary-btn text-uppercase">${search}</a>
									 --%>
							</div>
							</div>
							<!--
							 
							  <div class="tab-pane fade" id="hotel" role="tabpanel" aria-labelledby="hotel-tab">
								<form class="form-wrap">
									<input type="text" class="form-control" name="name" placeholder="From " onfocus="this.placeholder = ''" onblur="this.placeholder = 'From '">									
									<input type="text" class="form-control" name="to" placeholder="To " onfocus="this.placeholder = ''" onblur="this.placeholder = 'To '">
									<input type="text" class="form-control date-picker" name="start" placeholder="Start " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Start '">
									<input type="text" class="form-control date-picker" name="return" placeholder="Return " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Return '">
									<input type="number" min="1" max="20" class="form-control" name="adults" placeholder="Adults " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Adults '">
									<input type="number" min="1" max="20" class="form-control" name="child" placeholder="Child " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Child '">						
									<a href="#" class="primary-btn text-uppercase">Search Hotels</a>									
								</form>							  	
							  </div>
							  -->
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- End banner Area -->

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