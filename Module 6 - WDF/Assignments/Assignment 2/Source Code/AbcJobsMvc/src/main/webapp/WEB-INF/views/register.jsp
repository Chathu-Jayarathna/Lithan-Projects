<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script src="https://kit.fontawesome.com/848830b72b.js"crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<link href="css/style.css" rel="stylesheet" />
<link href="css/register.css" rel="stylesheet" />
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
        
       <div class="container mt-5 mb-5">
       <form action="thank-you" method="post" id="form" onsubmit="return checkValidation()">
      <div class="row justify-content-left">
            <div class="col-lg-5 col-md-8">
                <div class="d-flex flex-column regis-wrapper">
                  <div class="heading">
                    <h2>Register</h2>
                  </div>
                  
                    
                   <!-- First Name -->
                  <div class="form-group">
                    <label for="first_name">First Name</label>
                    <input type="text" name="first_name"class="form-control" id="fname" required/>
                  </div>
                  <p class="error errorFname">First Name is required</p>

                  <!-- Last Name -->
                  <div class="form-group">
                    <label for="last_name">Last Name</label>
                    <input type="text" name="last_name" class="form-control" id="lname" required/>
                  </div>
                  <p class="error errorLname">Last Name is required</p>

                  <!-- Email -->
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" name="email"class="form-control" id="email" required/>
                  </div>
                  <p class="error errorEmail">Email is required</p>

                  <!-- Password -->
                  <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password"class="form-control" id="password" required/>
                  </div>
                  <p class="error errorPassword">Password is required</p>
                  
                  <!-- Password -->
                  <div class="form-group">
                    <label for="password">Repeat Password</label>
                    <input type="password" name="password"  class="form-control" id="password" required/>
                  </div>
                  <p class="error errorPassword">Password is required</p>
                  

                  <button type="submit" class="btn btn-success mt-4">Register</button>
                
                 <div class="wrapper">
            <div class="hero-image mt-5 mt-md-5 d-flex justify-content-center col-sm-20">
               <img class="img-three" src="images/sing-up.png" alt="imgthree" />
              </div>
    </div>    
                </div>
              </div>
            </div>
          </form>
        </div>
      </main>
      
        
	

	<script src="js/validator.js"></script>
	
</body>

<footer class="text-center mt-2">
  <p>&copy; ABC JOBS. All right reserved</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

</html>