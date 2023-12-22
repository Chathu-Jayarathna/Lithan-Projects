<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<jsp:include page="../Components/header.jsp">
		<jsp:param value="Thank You" name="HTMLtitle" />
	</jsp:include>


	<main class="public justify-center">

		<div class="width-limiter" style="margin-top: 2rem;">
			<div class="pub-card">
				<img src="graphics/registration-success.png" alt="svg">
				<h3 class="pub-heading confirmation">Thanks for Registration</h3>
				<p class="pub-paragraph text-align-center">Your account has been created enjoy your next activities</p>
				<br>
				<a href="/login" class="pub-link success btnAnimation">Login</a>
			</div>
		</div>

	</main>

	<jsp:include page="../Components/footer.jsp"></jsp:include>