<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOWКОСТИК</title>

<fmt:setLocale value="${sessionScope.local}" />
<fmt:setBundle basename="localization.local" var="loc" />
<fmt:message bundle="${loc}" key="local.button.main" var="main_button" />
<fmt:message bundle="${loc}" key="local.button.contact" var="contact_button" />
<fmt:message bundle="${loc}" key="local.button.about" var="about_button" />

</head>
<body>

<footer class="footer-area section-gap">
		<div class="container">

			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About Agency</h6>
						<p>Hi! My name is Sergei! Nice to meet you!</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Navigation Links</h6>
						<div class="row">
							<div class="col">
								<ul>
									<li><a href="index">${main_button }</a></li>
								</ul>
							</div>
							<div class="col">
								<ul>
									<li><a href="about">${about_button }</a></li>
								</ul>
							</div>
							<div class="col">
								<ul>
									<li><a href="contact">${contact_button }</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div
				class="row footer-bottom d-flex justify-content-between align-items-center">
				<p class="col-lg-8 col-sm-12 footer-text m-0">
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					Rights Not Protected | This template was stolen with <i
						class="fa fa-heart-o" aria-hidden="true"></i> by Sergei Oskerko.
					I'm sorry.
				</p>
			</div>
		</div>
	</footer>

</body>
</html>