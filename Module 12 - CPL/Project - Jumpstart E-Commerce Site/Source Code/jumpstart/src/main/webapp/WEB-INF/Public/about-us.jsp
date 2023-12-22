<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

		<sec:authorize access="!isAuthenticated()">
			<jsp:include page="../Components/header.jsp">
				<jsp:param value="About Us" name="HTMLtitle" />
			</jsp:include>
		</sec:authorize>

		<sec:authorize access="isAuthenticated()">
			<jsp:include page="../Components/nav-bar.jsp">
				<jsp:param value="About Us" name="HTMLtitle" />
			</jsp:include>
		</sec:authorize>

		<main>

			<div class="width-limiter justify-center">
				<div class="pub-card">
					<img src="graphics/about-us.png" alt="svg">
					<img src="graphics/about-us1.png" alt="svg">
					<img src="graphics/about-us2.png" alt="svg">

				</div>
			</div>

		</main>

		<jsp:include page="../Components/footer.jsp"></jsp:include>