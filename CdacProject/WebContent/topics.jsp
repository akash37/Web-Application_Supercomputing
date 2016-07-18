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
<html>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/main.css"/>
        <link rel="stylesheet" type="text/css" href="css/dropdown.css"/>
        <title>Contents</title>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </head>
<body>
<div id="container">
<div id="header" class="row">
<div class="col-xs-12">
<span style="font-size: 2.5em;color:white;position:relative;top:50px;left:80px;"><a href="index.jsp" style="color: #ffffff;text-decoration:none">SUPERCOMPUTING</a></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:500px;">Welcome  <%=session.getAttribute("userid")%></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:550px;"><a href="profile.jsp" style="color: #ffffff;text-decoration:none">Profile</a></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:600px;"><a href="logout.jsp" style="color: #ffffff;text-decoration:none">Logout</a></span>
</div>
</div>
<div id="sidebar">
<form action=choice>
    <div style="position:relative;Top:45px;left:45px;font-size:1.1em;">
	 <a href="Hpc.jsp" style="color: #ffffff;text-decoration:none"><strong>High Performance Computing</strong></a><br><br>
	 <a href="Architecture.jsp" style="color: #ffffff;text-decoration:none"><strong>Architecture</strong></a><br><br>
	 <a href="Openmp.jsp" style="color: #ffffff;text-decoration:none"><strong>OpenMP</strong></a><br><br>
	 <a href="Mpi.jsp" style="color: #ffffff;text-decoration:none"><strong>MPI</strong></a><br><br>
	 <a href="cuda.jsp" style="color: #ffffff;text-decoration:none"><strong>Cuda</strong></a><br><br>
	 <a href="Profiling.jsp" style="color: #ffffff;text-decoration:none"><strong>Profiling</strong></a><br><br>
	 <a href="Compilers.jsp" style="color:#ffffff;text-decoration:none"><strong>Compilers</strong></a><br><br>
	 <a href="Conferenceuser.jsp" style="color: #ffffff;text-decoration:none"><strong>Conferences</strong></a><br>
    </div>
</div>
<div id="content">
<strong><font size="3.0">Overview</font></strong><br><br>
High-performance computing (HPC) is the use of parallel processing for running advanced application programs efficiently, reliably and quickly. 
The term applies especially to systems that function above a teraflop or 10^12 floating-point operations per second. 
The term HPC is occasionally used as a synonym for supercomputing, although technically a supercomputer is a system that performs at or near the currently highest operational rate for computers.
Some supercomputers work at more than a petaflop or 10^15 floating-point operations per second.<br><br>
<strong><font size="3.0">Applications of HPC</font></strong><br><br>
 The most common users of HPC systems are scientific researchers, engineers and academic institutions. 
 Some government agencies, particularly the military, also rely on HPC for complex applications. 
 High-performance systems often use custom-made components in addition to so-called commodity components. 
 As demand for processing power and speed grows, HPC will likely interest businesses of all sizes, particularly for transaction processing and data warehouses.
 An occasional techno-fiends might use an HPC system to satisfy an exceptional desire for advanced technology.<br><br>
</div>
</body>
</html>
<%
    }
%>
