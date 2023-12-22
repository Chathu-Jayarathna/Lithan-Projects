<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

		<sec:authorize access="!isAuthenticated()">
			<jsp:include page="../Components/header.jsp">
				<jsp:param value="Terms and Conditions" name="HTMLtitle" />
			</jsp:include>
		</sec:authorize>

		<sec:authorize access="isAuthenticated()">
			<jsp:include page="../Components/nav-bar.jsp">
				<jsp:param value="Terms and Conditions" name="HTMLtitle" />
			</jsp:include>
		</sec:authorize>

		<main>

			<div class="width-limiter justify-center" style="margin-top: 3rem;">
				<div class="pub-card" style="align-items: start;">
					<span class="pub-date">Last Updated: Devember 12, 2023</span>
					<h3 class="pub-heading">Terms and Conditions</h3>
					<p class="pub-paragraph">By accessing or using Jumpstart, you agree to comply with and be bound by
						these Terms and
						Conditions. If you do not agree to these terms, please do not use our services.
					</p>

					<br>
					<hr class="divider" style="margin-bottom: 1rem;">
					<br>

					<h4 class="pub-subheading">User Accounts</h4>
					<ul class="pub-paragraph">
						<li>You must be at least 18 years old to create an account on Jumpstart.</li>
						<li>You are responsible for maintaining the confidentiality of your account information and
							password. You agree to accept responsibility for all activities that occur under your
							account.</li>
					</ul>

					<h4 class="pub-subheading">Product Information</h4>
					<ul class="pub-paragraph">
						<li>Jumpstart strives to provide accurate and up-to-date information regarding products and
							services. However, we do not warrant the accuracy, completeness, or reliability of any
							product descriptions or information.
						</li>
						<li>Prices are subject to change without notice. [Your Ecommerce Site] reserves the right to
							modify or discontinue any product or service without prior notice.
						</li>
					</ul>

					<h4 class="pub-subheading">Ordering and Payment</h4>
					<ul class="pub-paragraph">
						<li>When you place an order on [Your Ecommerce Site], you agree to provide accurate and complete
							information.</li>
						<li>Jumpstart various payment methods. Payment details are handled securely, and your financial
							information is not stored on our servers.
						</li>
					</ul>

					<h4 class="pub-subheading">Shipping and Delivery</h4>
					<ul class="pub-paragraph">
						<li>Jumpstart will make reasonable efforts to fulfill orders promptly. However, delivery times
							may vary, and we are not responsible for delays beyond our control.
						</li>
						<li>Shipping costs and estimated delivery times are provided during the checkout process.</li>
					</ul>

					<h4 class="pub-subheading">Returns and Refunds</h4>
					<ul class="pub-paragraph">
						<li>Jumpstart a return and refund policy, which is available on our website. By making a
							purchase, you agree to abide by these policies.
						</li>

					</ul>

					<h4 class="pub-subheading">User Conduct</h4>
					<ul class="pub-paragraph">
						<li>You agree not to use [Your Ecommerce Site] for any unlawful or prohibited purposes.</li>
						<li>You are responsible for all content posted and activity that occurs under your account.</li>
					</ul>

					<h4 class="pub-subheading">Intellectual Property</h4>
					<ul class="pub-paragraph">
						<li>All content and materials on [Your Ecommerce Site] are the property of [Your Company] and
							are protected by copyright, trademark, and other intellectual property laws.
						</li>

					</ul>

					<h4 class="pub-subheading">Privacy Policy</h4>
					<ul class="pub-paragraph">
						<li>Our Privacy Policy governs the collection, use, and disclosure of personal information. By
							using [Your Ecommerce Site], you consent to the terms of our Privacy Policy.
						</li>

					</ul>

					<h4 class="pub-subheading">Limitation of Liability</h4>
					<ul class="pub-paragraph">
						<li>Jumpstart is not liable for any direct, indirect, incidental, consequential, or punitive
							damages arising out of your access to or use of our services.
						</li>

					</ul>

					<h4 class="pub-subheading">Governing Law</h4>
					<ul class="pub-paragraph">
						<li>These Terms and Conditions are governed by and construed in accordance with the laws of
							[Your Jurisdiction].
						</li>

					</ul>

					<h4 class="pub-subheading">Changes to Terms and Conditions</h4>
					<ul class="pub-paragraph">
						<li>Jumpstart reserves the right to update or modify these Terms and Conditions at any time
							without prior notice. It is your responsibility to review these terms periodically.
						</li>
						<li>By using Jumpstart, you agree to be bound by the most current version of these Terms and
							Conditions. If you have any questions or concerns, please contact us at [Your Contact
							Information].
						</li>
					</ul>


				</div>
			</div>

		</main>

		<jsp:include page="../Components/footer.jsp"></jsp:include>