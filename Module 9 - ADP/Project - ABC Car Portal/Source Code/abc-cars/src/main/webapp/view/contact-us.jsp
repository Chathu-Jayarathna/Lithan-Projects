<%@ include file="components/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="components/header.jsp"%>
<link rel="stylesheet" href="/css/contact-us.css" />
</head>
<body style="background-color: #000">
	<!-- Navbar -->
	<%@ include file="components/navbar.jsp"%>

	<!-- Main -->
	<main>
		<!-- Hero banner -->
		<div class="container-fluid jumbotron">
			<div class="container">
				<h2 class="pt-5 fw-bolder ">Contact Us</h2>
				<p align="center">
					Check out our FAQs and Stay Safe sections to see if your question
					has already been answered. If not, please get in touch with us and
					we will get back to you as soon as possible.<br> <br> <i
						class="fa-solid fa-phone" style="color: #F1C40F"></i>
					+9471098765432 <br> <i class="fa-solid fa-envelope"
						style="color: #F1C40F"></i> abccars@email.com <br> <i
						class="fa fa-map-marker" aria-hidden="true" style="color: #F1C40F"></i>
					07/C Mount Lv. Road, Colombo 7


				</p>


			</div>
		</div>

		<!-- Contact -->
		<div
			class="container mt-4 d-flex justify-content-center flex-column flex-lg-row">
			<div class="contact mb-3">
				<h3 class="text-center" style="color: #fff">MESSAGE US</h3>
				<h5 class="text-center" style="color: #fff">Let us know your
					questions. We're here to help</h5>
				<form action="">
					<label class="form-label" style="color: #fff">Your name</label> <input
						type="text" class="form-control mb-2" name="name" /> <label
						class="form-label" style="color: #fff">Email</label> <input
						type="text" class="form-control mb-2" name="email" /> <label
						class="form-label" style="color: #fff">Message</label>
					<textarea class="form-control" name="message"></textarea>

					<button class="btn btn-warning mt-4" type="submit"
						style="width: 938px">SEND</button>
				</form>
			</div>
		</div>

		</div>
		<div
			class="container mt-4 d-flex justify-content-center flex-column flex-lg-row">
			<div class="mapouter">
				<div class="gmap_canvas">
					<iframe class="gmap_iframe" frameborder="0" scrolling="no"
						marginheight="0" marginwidth="0"
						src="https://maps.google.com/maps?width=932&amp;height=273&amp;hl=en&amp;q=colombo 7&amp;t=&amp;z=15&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">
					</iframe>
				</div>
<style>
.mapouter {
	position: relative;
	text-align: right;
	width: 932px;
	height: 273px;
}

.gmap_canvas {
	overflow: hidden;
	background: none !important;
	width: 932px;
	height: 273px;
}

.gmap_iframe {
	width: 932px !important;
	height: 273px !important;
	position: absolute;
	right: 20px;
}
</style>
			</div>
		</div>
	</main>
<br><br><br>
	<!-- Footer -->
	<%@ include file="components/footer.jsp"%>
</body>
</html>
