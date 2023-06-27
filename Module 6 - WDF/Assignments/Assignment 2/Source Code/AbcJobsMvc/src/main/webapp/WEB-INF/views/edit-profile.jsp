<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script src="https://kit.fontawesome.com/848830b72b.js"crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<link href="css/style.css" rel="stylesheet" />
<link href="css/user-profile.css" rel="stylesheet" /><link>

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
        <section id="user-profile">
          <div class="container">
            <div class="d-flex mt-5">
              <!-- profile -->
              <main class="me-3 main-profile">
                <div class="profile">
                  <div class="banner">
                  </div>
                  <div class="d-flex flex-column">
                        <a class="btn btn-success" href="edit-profile">Edit Cover Photo</a>
                      </div>
                 
                     <div class="p-4 pt-5 position-relative">
                     
                    <div class="profile-picture position-absolute">
                     <div class="d-flex flex-column">
                        <a class="btn btn-success" href="edit-profile">Edit Profile Photo</a>
                      </div>
                     <img class="img-three" src="images/proo.png" alt="imgthree" />
                    
                    </div>
                    
                    <div class="d-flex justify-content-between">
                      <h3 class="name"></h3>
                      <!-- Edit -->
                      <div class="d-flex flex-column">
                        <a class="btn btn-success" href="edit-profile">Edit Profile</a>
                      </div>
                    </div>
                    
                  
             <section class="section about-section gray-bg" id="about">
            <div class="container">
                <div class="row align-items-center flex-row-reverse">
                    <div class="col-lg-9">
                        <div class="about-text go-to">
                            <h3 class="dark-color">Full Name</h3>
                            
                   <section class="about" >
                   <form>
                  <div class="d-flex justify-content-between">
                    <h5>About</h5>
                    
                    
                  </div>
                  <h6 class="theme-color lead">Occupation &amp; Place</h6>
                  <div class="form-group">
                  
                    <input type="text" name="jjob" placeholder="" class="form-control" id="job" />
                  </div>
                  <p>Add Description about you</p>
                  <input type="text" name="about" placeholder="" class="form-control" id="about" />
                  </form>
                  </section>
                  
                     <br> 
                     
           <div class="container mt-5 mb-5">
          <form action="" method="post" id="form" onsubmit="return checkValidation()">
            <div class="row justify-content-center">
              <div class="col-lg-12 col-md-8">
                <div class="d-flex flex-column regis-wrapper">
                  <div class="heading">
                    <h2>Edit Profile</h2>
                  </div>

                  <!-- Email -->
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" name="email" placeholder="Enter Email Address" class="form-control" id="email" />
                  </div>
                  

                  <!-- Full Name -->
                  <div class="form-group">
                    <label for="first_name">Full Name</label>
                    <input type="text" name="full_name" placeholder="Enter Full Name" class="form-control" id="fname" />
                  </div>
                  

                  <!-- Birthday -->
                  <div class="form-group">
                    <label for="last_name">Birthday</label>
                    <input type="text" name="Birthday" placeholder="DD/MM/YYYY" class="form-control" id="bday" />
                  </div>
                  
                  <!-- Mobile -->
                  <div class="form-group">
                    <label for="country">Mobile</label>
                    <input type="text" name="mobile" placeholder="Enter Mobile Number" class="form-control" id="country" />
                  </div>
                  

                  <!-- Address -->
                  <div class="form-group">
                    <label for="city">Address</label>
                    <input type="text" name="address" placeholder="Enter your Address" class="form-control" id="city" />
                  </div>
                 
                  <!-- Address -->
                 <div class="form-group">
                    <label for="city">Other</label>
                    <input type="text" name="other" placeholder="Education, Work, Skills" class="form-control" id="city" />
                  </div>

                  <button type="submit" class="btn btn-success mt-4">Edit Profile</button>
                </div>
              </div>
            </div>
          </form>
        </div>     
      </main>
</div>

<footer class="text-center mt-2">
  <p>&copy; ABC JOBS. All right reserved</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>