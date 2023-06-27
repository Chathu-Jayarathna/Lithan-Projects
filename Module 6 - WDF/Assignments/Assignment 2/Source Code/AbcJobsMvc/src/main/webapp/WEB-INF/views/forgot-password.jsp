<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script src="https://kit.fontawesome.com/848830b72b.js"crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<link href="css/style.css" rel="stylesheet" />
<link href="css/forgot-password.css" rel="stylesheet" />
<head>


<link>

<nav class="navbar navbar-expand-lg text-bg-light sticky-top">
    <div class="container">
      <a class="navbar-brand fw-bold fs-3" href="<%= request.getContextPath() %>">ABC Jobs</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="nav navbar-nav navbar-right" id="navbarNav">
        <ul class="navbar-nav ms-auto me-0 me-lg-auto fw-semibold text-uppercase">
          <li class="nav-item me-0 me-lg-3">
            <a class="nav-link" href="<%= request.getContextPath() %>"> Home</a>
          </li>
          <li class="nav-item me-0 me-lg-3">
            <a class="nav-link" href="search-user"> People</a>
          </li>
          <li class="nav-item me-0 me-lg-3">
            <a class="nav-link" href="jobs"> Jobs</a>
          </li>
        </ul>
        <div class="nav-button d-flex flex-column flex-lg-row">
          <a href="login" class="btn btn-outline-secondary me-0 me-lg-3 mb-3 mb-lg-0">Login</a>
          <a href="register" class="btn btn-success mb-3 mb-lg-0">Register</a>
        </div>
      </div>
    </div>
  </nav>
</head>

<body>
	

      <main>
        <section id="forgot-password">
          <div class="container mt-5">
            <div class="d-flex justify-content-center">
              <div class="forgot-password-form d-flex flex-column text-center">
                
                <h2 class="fw-semibold">Forgot Password</h2>
                
                 <img class="img-three" src="images/forgot.png" alt="imgthree" />
                <p class="mb-3 text-secondary">Enter the email address associated with your account.<br>
                 We will email you a link to reset your password</p>
                <!-- Form -->
                <form action="forgot-password-confirmation" method="post" id="form" onsubmit="return checkValidation()" class="d-flex flex-column">
                  <div class="form-group">
                    <input id="email" class="form-control" type="text" placeholder="Enter your email" />
                    <!-- Error Message -->
                    <p class="error errorEmail text-start">Email is required</p>
                    <p class="error invalidEmail text-start">Invalid email</p>
                  </div>
                  <button type="submit" class="btn btn-success mt-3">Submit</button>
                </form>
              </div>
            </div>
          </div>
        </section>
      </main>

   	</div>
   	<script src="js/forgot-password.js"></script>
</body>
<footer class="text-center mt-2">
  <p>&copy; ABC JOBS. All right reserved</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</html>