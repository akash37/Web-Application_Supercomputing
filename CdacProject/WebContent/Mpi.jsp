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
%>
<!doctype html>
<head>
<link rel="stylesheet" type="text/css" href="css/main.css"/>
<link rel="stylesheet" type="text/css" href="css/dropdown.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MPI</title>
<script src="http://code.jquery.com/jquery-1.4.min.js" type="text/javascript"></script>
      <script type="text/javascript">
         $(document).ready(function(){
            $("#next").click(function(){
                $('#content').load('htmlpages//mpi2.html');
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
  <li>What is MPI?</li><br>
  <li>Programming Model</li><br>
  <li>Reasons for using MPI</li><br>
  <li>Environment Management Routines</li><br>
  <li>Point to Point Management Routines</li><br>
  <li>Message Passing Routine Arguments</li><br>
  <li>Collective Communication Routines</li><br>
  <li><a href="mpi_programs.jsp" style="color:#000000;text-decoration:none"><b>MPI Programs</b></a></li><br>
</ul>
</div>
</div>
<div id="content">
<p><b>What is MPI?</b><br>
a)M P I = Message Passing Interface<br>
b)MPI is a specification for the developers and users of message passing libraries. 
By itself, it is NOT a library - but rather the specification of what such a library should be.<br>
c)MPI primarily addresses the message-passing parallel programming model: data is moved from the
 address space of one process to that of another process through cooperative operations on each process.<br>
d)Simply stated, the goal of the Message Passing Interface is to provide a widely used standard for writing message passing programs.
The interface attempts to be:<br>
	Practical<br>
	Portable<br>
	Efficient<br>
	Flexible<br>
e)The MPI standard has gone through a number of revisions, with the most recent version being MPI-3.x <br>
f)Interface specifications have been defined for C and Fortran90 language bindings:<br>
	C++ bindings from MPI-1 are removed in MPI-3<br>
	MPI-3 also provides support for Fortran 2003 and 2008 features<br>
g)Actual MPI library implementations differ in which version and features of the MPI standard they support. Developers/users will need to be aware of this.<br>
</p>
<input type='button' value='Next' id="next">
</div>
</div>
</body>
</html>
<%
    }
%>