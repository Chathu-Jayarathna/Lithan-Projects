<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script src="https://kit.fontawesome.com/848830b72b.js"crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<link href="css/style.css" rel="stylesheet" />
<link href="css/login.css" rel="stylesheet" /><link>

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

        <section id="login">
        
            <div class="hero-image mt-5 mt-md-5 d-flex justify-content-center col-sm-10">
               
             
          <div class="container mt-5">
          
            <div class="d-flex justify-content-end ">
          <img class="img-three" src="images/login.png" alt="imgthree" />
            <div class="col-lg-6 col-md-8">
              <div class="login-form">
                <h2 class="fw-semibold">Login</h2>
                <br>
                <!-- Login Form -->
                <form action="user-profile" method="get" class="mt-4 d-flex flex-column" id="form">
                  <div class="form-group">
                    <input id="loginEmail" class="form-control mb-3" type="text" placeholder="Email or phone" required/>
                  </div>
                  
                  <div class="form-group">
                    <input id="loginPassword" class="form-control" type="password" placeholder="Password" required/>
                  </div>
                   <br>
                  <div class="forgot-password mt-3 mb-3 text-end">
                    <a class="text-decoration-none" href="forgot-password">Forgot Password?</a>
                  </div>
                   
                  <button class="btn btn-success" type="submit">Login</button>
                </form>
                   <br> <br>
                <p class="p-0 mt-3">
                  Don't have an account?
                  <a class="text-primary text-decoration-none" href="register"> Register </a>
                </p>
              </div>
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