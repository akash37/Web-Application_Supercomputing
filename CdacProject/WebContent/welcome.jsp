<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Welcome</title>
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
      <strong>Registration Successful.</strong>Please Login</h1>
      <a href="index.jsp">Login</a>
  </div>
</div>
        <script src="js/index.js"></script>
<%} 
else{%>
  <div class="container">
  <div class="login">
  	<h1 class="login-heading">
      <strong>Registration Success.</strong>Please Login Here.</h1>
      <a href="index.jsp">Go to Login</a>
  </div>
</div>
<script src="js/index.js"></script>
<%}%> 
  </body>
</html>
