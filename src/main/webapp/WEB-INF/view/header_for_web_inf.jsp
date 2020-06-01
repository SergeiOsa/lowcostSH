<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>LOWКОСТИК</title>

<fmt:setLocale value="${sessionScope.local}" />
<fmt:setBundle basename="localization.local" var="loc" />
<fmt:message bundle="${loc}" key="local.locbutton.lang" var="lang_button" />
<fmt:message bundle="${loc}" key="local.button.main" var="main_button" />
<fmt:message bundle="${loc}" key="local.button.login" var="login_button" />
<fmt:message bundle="${loc}" key="local.button.logout" var="logout_button" />
<fmt:message bundle="${loc}" key="local.button.contact" var="contact_button" />
<fmt:message bundle="${loc}" key="local.button.about" var="about_button" />
</head>
<body>

<header id="header">
		<div class="container main-menu">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a href="index"><img src="resources/img/logo.png" alt=""
						title="" /></a>
				</div>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li><a href="index">${main_button}</a></li>
						<c:if test="${user eq null }">
							<li><a href="goToLogination">${login_button }</a></li>
						</c:if>
						<c:if test="${user ne null }" >
							<li>	
								<a href="auth_user">${user.name } ${user.surname}</a>
							</li>
						<li><a href="logout">${logout_button }</a></li>
						</c:if>
											
						<li><a href="contact">${contact_button}</a></li>
						<li><a href="about">${about_button}</a></li>
						
						<li>
						 <form action="localization" method="get">
							<input type="hidden" name="command" value="localization"/>
							<c:if test="${local eq ru or local eq null}">
								<input type="hidden" name="local" value="en"/>	
							</c:if>
							<c:if test="${local eq en}">
								<input type="hidden" name="local" value="ru"/>	
							</c:if>
							<input type="hidden" name="path" value="${param.pageName }"/>
 							<input type="submit" class="genric-btn primary small" value="${lang_button}" />
						</form> 	
						</li>
					</ul>
						
				</nav>
				<!-- #nav-menu-container -->
			</div>
		</div>
</header>
</body>
</html>