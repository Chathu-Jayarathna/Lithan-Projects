<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<script src="https://kit.fontawesome.com/848830b72b.js"crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<link href="css/style.css" rel="stylesheet" />
<link href="css/thank-you.css" rel="stylesheet" />
<link>
<head>
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
	  
        <section id="registration-confirmation" class="mt-6">
          <div class="container d-flex justify-content-center">
          
          <div class="confirmation d-flex flex-column text-center">
         
          <div class="wrappers">
              
              </div>
              <h2 class="fw-semibold">Thank You</h2>
               <img class="img-three" src="images/thanku.png" alt="imgthree" />
              <p class="text-secondary">Your account has been created successfully<br>
              A verification email has been send to your registered email address.<br>
               Please click on the verification link included in the email to activate your account</p>
             
                <a href="">
                  <button class="btn btn-success mt-3">CONTINUE</button>
                </a>
               
            </div>
          </div>
        </section>
      </main>
</body>
<footer class="text-center mt-2">
  <p>&copy; ABC JOBS. All right reserved</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</html>
