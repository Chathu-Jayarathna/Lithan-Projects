<%@ include file="components/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@ include file="components/header.jsp" %>
    <link rel="stylesheet" href="/css/error.css" />
  </head>
  <body>
    <!-- Navbar -->
    <%@ include file="components/navbar.jsp" %>

    <!-- Main -->
    <main>
    <div class="img" style=" display: flex; justify-content: center; width:40px;">
     <img class="image-about"  style="width:300px; position:absolute; left:650px;"  src="/images/all/error.png"/>
    </div><br><br><br><br><br><br><br><br><br><br>
      <div class="container error-404 mt-5 text-center fw-bold" style="color:#fff">
        <h1 style="color:#fff">404</h1>
        <h2 style="color:#fff">OPSS!! PAGE NOT FOUND</h2>
        <p style="color:#fff">We're sorry, the page you requested could not be found. Please go back and try again</p>
      </div>
    </main>
    <!-- Footer -->
    <%@ include file="components/footer.jsp" %>
  </body>
</html>
