<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

		<sec:authorize access="!isAuthenticated()">
			<jsp:include page="../Components/header.jsp">
				<jsp:param value="Privacy Policy" name="HTMLtitle" />
			</jsp:include>
		</sec:authorize>

		<sec:authorize access="isAuthenticated()">
			<jsp:include page="../Components/nav-bar.jsp">
				<jsp:param value="Privacy Policy" name="HTMLtitle" />
			</jsp:include>
		</sec:authorize>

		<main>

			<div class="width-limiter justify-center" style="margin-top: 3rem;">
				<div class="pub-card" style="align-items: start;">
					<span class="pub-date">Last Updated: December 12, 2023</span>
					<h4 class="pub-heading">Privacy Policy for Jumpstart</h4>

					<p class="pub-paragraph">Welcome to Jumpstart. We are committed to protecting the privacy and
						security of our
						users' personal information. This Privacy Policy outlines the types of information we collect,
						how we use
						and protect it, and your choices regarding the information.</p>
					<br>
					<hr class="divider" style="margin-bottom: 1rem;">
					<br>

					<h4 class="pub-subheading">Infotmation we collect</h4>
					<ul class="pub-paragraph">
						<li>Personal Information</li>
						<p class="pub-paragraph">We may collect personally identifiable information, such as your name,
							address, email address, and phone number,
							when you make a purchase or create an account on our site.</p><br>
						<li>Payment Information</li>
						<p class="pub-paragraph">We collect payment information when you make a purchase, including
							credit card details, billing address, and other
							necessary payment details.</p><br>
						<li>Device Information</li>
						<p class="pub-paragraph">We may collect information about the device you use to access our site,
							including IP address, browser type, and
							operating system.</p><br>
					</ul>

					<h4 class="pub-subheading">How We Use Your Information</h4>
					<ul class="pub-paragraph">
						<li>Order Processing</li>
						<p class="pub-paragraph">We use your personal information to process and fulfill your orders,
							including payment processing, shipping, and
							customer service.</p><br>
						<li>Communication</li>
						<p class="pub-paragraph">We may use your email address to send order updates, newsletters, and
							promotional materials. You can opt-out of these
							communications at any time.</p><br>
						<li>Improving Our Services</li>
						<p class="pub-paragraph">We use collected data to analyze and improve our website's
							functionality, user experience, and customer service.
						</p><br>
					</ul>

					<h4 class="pub-subheading">Information Sharing</h4>
					<ul class="pub-paragraph">
						<p class="pub-paragraph">We do not sell, trade, or rent your personal information to third
							parties. However, we may share your information with trusted third-party service providers
							who assist us in operating our website, conducting our business, or servicing you.
						</p>
					</ul>

					<h4 class="pub-subheading">Cookies and Tracking Technologies</h4>
					<ul class="pub-paragraph">
						<p class="pub-paragraph">We use cookies and similar technologies to enhance your user
							experience, analyze website usage, and customize content.
						</p>
					</ul>

					<h4 class="pub-subheading">Security Measures</h4>
					<ul class="pub-paragraph">
						<p class="pub-paragraph">We implement reasonable security measures to protect your personal
							information from unauthorized access, disclosure, alteration, and destruction.
						</p>
					</ul>

					<h4 class="pub-subheading">Your Choices</h4>
					<ul class="pub-paragraph">
						<p class="pub-paragraph">You have the right to access, update, or delete your personal
							information. You can also opt-out of marketing communications at any time.
						</p>
					</ul>

					<h4 class="pub-subheading">Changes to this Privacy Policy</h4>
					<ul class="pub-paragraph">
						<p class="pub-paragraph">We reserve the right to update our Privacy Policy. Please review this
							page periodically for any changes.
						</p>
					</ul>

					<h4 class="pub-subheading">Contact Information</h4>
					<ul class="pub-paragraph">
						<p class="pub-paragraph">If you have any questions or concerns about our Privacy Policy, please
							contact us at contact@jumpstart.com.</p>

					</ul>

				</div>
			</div>

		</main>

		<jsp:include page="../Components/footer.jsp"></jsp:include>