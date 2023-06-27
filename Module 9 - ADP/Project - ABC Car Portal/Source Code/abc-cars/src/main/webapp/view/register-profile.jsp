<%@ include file="components/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="components/header.jsp"%>
<link rel="stylesheet" href="/css/regiprofile.css" />
</head>
<body style="background-color:#EAEDED">
	<!-- Navbar -->
	<%@ include file="components/navbar.jsp"%>

	<!-- Main -->
	<main>
		<div class="container d-flex justify-content-center">
			<div class="form-wrapper medium">
				
				<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
				<h2 class="form-header">Register</h2>
				<!-- FORM -->
				<form:form action="profileProcess" method="POST"
					modelAttribute="profile">
					<label class="form-label fs-6">First name</label>
					<div>
						<form:errors path="firstName" cssClass="error" />
					</div>
					<form:input class="form-control" type="text" path="firstName"
						cssErrorClass="form-control error-border" />

					<label class="form-label fs-6">Last name</label>
					<div>
						<form:errors path="lastName" cssClass="error" />
					</div>
					<form:input class="form-control" type="text" path="lastName"
						cssErrorClass="form-control error-border" />

					<label class="form-label fs-6">Phone number</label>
					<div>
						<form:errors path="phoneNumber" cssClass="error" />
					</div>
					<form:input class="form-control" type="text" path="phoneNumber"
						cssErrorClass="form-control error-border" />

					<label class="form-label fs-6">Address</label>
					<div>
						<form:errors path="address" cssClass="error" />
					</div>
					<form:input class="form-control" type="text" path="address"
						cssErrorClass="form-control error-border" />

					<label class="form-label fs-6">About</label>
					<form:input class="form-control" type="text" path="about" />

					<button class="btn btn-warning form-button mt-3" type="submit">Register</button>
						<img class="image-about" src="/images/all/register.jpg" alt=""
						style="position:absolute; top:135px; right:280px; width:560px;" />
					
				</form:form>
			</div>
		</div>
	</main>


	
</body>
</html>
