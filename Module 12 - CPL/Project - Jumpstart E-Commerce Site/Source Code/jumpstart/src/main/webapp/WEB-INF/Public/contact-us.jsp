<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

		<sec:authorize access="!isAuthenticated()">
			<jsp:include page="../Components/header.jsp">
				<jsp:param value="Contact Us" name="HTMLtitle" />
			</jsp:include>
		</sec:authorize>

		<sec:authorize access="isAuthenticated()">
			<jsp:include page="../Components/nav-bar.jsp">
				<jsp:param value="Contact Us" name="HTMLtitle" />
			</jsp:include>
		</sec:authorize>

		<main>

			<div class="width-limiter justify-center" style="margin-top: 3rem;">
				<div class="pub-card">
					<img src="graphics/contact-us.png" alt="svg">
					<img src="graphics/contact-us1.png" alt="svg">

			

						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126743.58638742074!2d79.77380298678992!3d6.922001981419139!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae253d10f7a7003%3A0x320b2e4d32d3838d!2sColombo!5e0!3m2!1sen!2slk!4v1695552406397!5m2!1sen!2slk"
							width="100%" height="350" style="border-radius: 20px;margin-top: 40px;" allowfullscreen=""
							loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				
				</div>
			</div>

		</main>

		<jsp:include page="../Components/footer.jsp"></jsp:include>