<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader("Expires",0);
 %>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<%response.sendRedirect("index.jsp");%>
<%} else {
%><!doctype html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/main.css"/>
<link rel="stylesheet" type="text/css" href="css/dropdown.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OpenMP</title>
<script src="http://code.jquery.com/jquery-1.4.min.js" type="text/javascript"></script>
      <script type="text/javascript">
         $(document).ready(function(){
            $("#page2").click(function(){
                $('#content').load('htmlpages//openmp2.html');
            }); 
          });
      </script>
</head>
<body>
<div id="container">
<div id="header">
<span style="font-size: 2.5em;color:white;position:relative;top:50px;left:80px;"><a href="index.jsp" style="color: #ffffff;text-decoration:none">SUPERCOMPUTING</a></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:500px;">Welcome  <%=session.getAttribute("userid")%></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:550px;"><a href="profile.jsp" style="color: #ffffff;text-decoration:none">Profile</a></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:600px;"><a href="logout.jsp" style="color: #ffffff;text-decoration:none">Logout</a></span>
</div>
<div id="sidebar">
<div style="position:relative;Top:45px;left:45px;">
<ul style="list-style-type:disc">
  <li>What is OpenMP?</li><br>
  <li>Goals of OpenMP</li><br>
  <li>OpenMP Programming Model
  <ul>
      <li>Shared Memory Model</li>
      <li>Thread Based Parallelism</li>
      <li>Explicit Parallelism</li>
      <li>Compiler Directive Based</li>
      <li>Fork - Join Model</li>
      </ul>
  </li><br>
  <li>Methods to create threads</li><br>
  <li>Some Basic Commands</li><br>
  <li>Synchronization Constructs</li><br>
  <li><a href="openmp_programs.jsp" style="color:#000000;text-decoration:none"><b>OpenMP Programs</b></a></li><br>
</ul>
</div>
</div>
<div id="content">
<p><b>What is OpenMP?</b><br>
An abbreviation for: Open Multi-Processing<br>
An Application Program Interface (API) that may be used to explicitly direct multi-threaded, shared memory parallelism<br>
Comprised of three primary API components:<br>
Compiler Directives<br>
Runtime Library Routines<br>
Environment Variables<br></p>
<input type='button' value='Next' id="page2">
</div>
</div>
</body>
</html>
<%
}
%>