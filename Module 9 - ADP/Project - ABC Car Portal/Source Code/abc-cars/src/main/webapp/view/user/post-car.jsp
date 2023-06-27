<%@ include file="../components/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@ include file="../components/header.jsp" %>
    <link rel="stylesheet" href="/css/post-car.css" />
  </head>
  <body>
    <!-- Navbar -->
    <%@ include file="../components/navbar.jsp" %>

    <!-- Main -->
    <main>
      <div class="container d-flex justify-content-center">
        <div class="form-wrapper medium">
        <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1" >
          <h2 class="form-header">Post Car</h2>
          <!-- FORM -->
          <form:form action="postCarProcess" method="POST" enctype="multipart/form-data" modelAttribute="car">
            <label class="form-label">Make</label>
            <div>
              <form:errors path="make" cssClass="error" />
            </div>
            <form:input class="form-control" type="text" path="make" cssErrorClass="form-control error-border" />

            <label class="form-label">Model</label>
            <div>
              <form:errors path="model" cssClass="error" />
            </div>
            <form:input class="form-control" type="text" path="model" cssErrorClass="form-control error-border" />

            <label class="form-label">Year</label>
            <div>
              <form:errors path="year" cssClass="error" />
            </div>
            <form:input class="form-control" type="text" path="year" cssErrorClass="form-control error-border" />

            <label class="form-label">Price</label>
            <div>
              <form:errors path="price" cssClass="error" />
            </div>
            <form:input class="form-control" type="number" path="price" cssErrorClass="form-control error-border" />

            <label class="form-label">Car Picture</label>
            <div>
              <span class="error">${fileError}</span>
            </div>
            <input class="form-control" type="file" name="imageFile" />

            <button class="btn btn-warning form-button mt-3" type="submit">Post Car</button>
                       <img class="image-about" src="/images/all/post-car.jpg" alt=""
								 style="position:absolute; top:220px; right:370px; width:410px;"/>
          </form:form>
        </div>
      </div>
    </main><br><br><br>

    <!-- Footer -->
    <%@ include file="../components/footer.jsp" %>
  </body>
</html>
