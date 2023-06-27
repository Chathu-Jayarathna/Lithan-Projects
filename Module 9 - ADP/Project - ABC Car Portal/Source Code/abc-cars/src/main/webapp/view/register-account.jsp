<%@ include file="components/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@ include file="components/header.jsp" %>
    <link rel="stylesheet" href="/css/register.css" />
  </head>
  <body style="background-color:#EAEDED">
    <!-- Navbar -->
    <%@ include file="components/navbar.jsp" %>

    <!-- Main -->
    <main>
      <div class="container d-flex justify-content-center">
        <div class="form-wrapper small">
                <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1" >
          <div class="col-md-8 col-lg-7 col-xl-6" >
								<img class="image-about" src="/images/all/register (2).jpg" alt=""
								 style="position:absolute; top:150px; right:370px; width:410px;"/>
						</div>
          <h2 class="form-header">Register</h2>
          <form:form action="accountProcess" method="POST" modelAttribute="account">
            <label class="form-label fs-6">Username</label>
            <div>
              <form:errors path="username" cssClass="error" />
            </div>
            <form:input class="form-control" type="text" path="username" cssErrorClass="form-control error-border" />

            <label class="form-label fs-6">Password</label>
            <div>
              <form:errors path="password" cssClass="error" />
            </div>
            <form:input class="form-control" type="password" path="password" cssErrorClass="form-control error-border" />

            <button class="btn btn-warning mt-3 form-button" type="submit">Register</button>
          </form:form>
        </div>
      </div>
    </main>

  
  </body>
</html>
