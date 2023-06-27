<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<script src="https://kit.fontawesome.com/848830b72b.js"crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<link href="css/style.css" rel="stylesheet" />
<link href="css/search-user.css" rel="stylesheet" />
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
	<section id="search-users">
  <div class="container d-flex flex-column">
    <div class="heading mt-4">
      <h2 class="fw-semibold">Search User</h2>
    </div>
    <form class="search-user-form d-flex">
      <input type="text" id="search-user" placeholder="Search" />
      <button type="button" class="btn btn-outline-secondary btn-search">
        <i class="fa-solid fa-magnifying-glass"></i>
      </button>
    </form>
     
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
             
            </li>
          </ul>
        </div>
   
              <form id="form1" runat="server">
      <table id="example" class="display" style="width:100%">
              <thead>
                  <tr>
                      <th>Name</th>
                      <th>Position</th>
                      <th>Place</th>
                      <th>Age</th>
                     <th>Connect</th>
                  </tr>
              </thead>
              <tbody>
                  <tr>
                      <td>Tiger Nixon</td>
                      <td>System Architect</td>
                      <td>London</td>
                      <td>25</td>
                     <td><button id="btnMyTest001" type="button" class="btn btn-success" data-toggle="modal" data-target="#my_modal" data-age="61">Connect</button></td>
                      
                  </tr>
                  <tr>
                      <td>Garrett Winters</td>
                      <td>Accountant</td>
                      <td>Sri Lanka</td>
                      <td>46</td>
                      <td><button id="btnMyTest001" type="button" class="btn btn-success" data-toggle="modal" data-target="#my_modal" data-age="61">Connect</button></td>
                      
                  </tr>
                  <tr>
                      <td>Ashton Cox</td>
                      <td>Junior Technical Author</td>
                      <td>Tokyo</td>
                      <td>45</td>
                    <td><button id="btnMyTest001" type="button" class="btn btn-success" data-toggle="modal" data-target="#my_modal" data-age="61">Connect</button></td>
                      
                  </tr>
                  <tr>
                      <td>Cedric Kelly</td>
                      <td>Senior Javascript Developer</td>
                      <td>Edinburgh</td>
                      <td>30</td>
                      <td><button id="btnMyTest001" type="button" class="btn btn-success" data-toggle="modal" data-target="#my_modal" data-age="61">Connect</button></td>
                      
                  </tr>
                  <tr>
                      <td>Airi Satou</td>
                      <td>Accountant</td>
                      <td>Tokyo</td>
                      <td>28</td>
                     <td><button id="btnMyTest001" type="button" class="btn btn-success" data-toggle="modal" data-target="#my_modal" data-age="61">Connect</button></td>
                      
                  </tr>
                  <tr>
                      <td>Brielle Williamson</td>
                      <td>Integration Specialist</td>
                      <td>New York</td>
                      <td>22</td>
                      <td><button id="btnMyTest001" type="button" class="btn btn-success" data-toggle="modal" data-target="#my_modal" data-age="61">Connect</button></td>
                      
                  </tr>
                 
          </table>
      </form>
      
      <div class="modal fade" id="my_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                      <h4 class="modal-title" id="myModalLabel">Sample Modal</h4>
                  </div>
                  <div class="modal-body">
      
                      <div class="form-group">
                          
                          <!--<input type="text" id="username" placeholder="User Name" class="form-control"/>-->
                          <!-- <div id="confirmdetails">Confirmation details go here...</div>-->
                          <label for="age">Age</label>
                          <input type="text" id="age" class="form-control"/>
      
                          
                      </div>
      
      
                  </div>
                  <div class="modal-footer">
                      <!-- onclick="cancelRecord()" -->
                      <button type="button" class="btn btn-default" data-dismiss="modal" >OK</button>
                      
                  </div>
              </div>
          </div>
      </div>
      
      
</body>
<footer class="text-center mt-2">
  <p>&copy; ABC JOBS. All right reserved</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</html>