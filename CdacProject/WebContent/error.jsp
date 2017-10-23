<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Error</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">  
  </head>
  <body>
  <%
  response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader("Expires",0);
  %>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
    <div class="container">
  <div class="login">
  	<h1 class="login-heading">
      <strong>Error</strong></h1>
      <a href="index.jsp">Login</a>
  </div>
</div>
    <script src="js/index.js"></script>
<%}
  </body>
</html>