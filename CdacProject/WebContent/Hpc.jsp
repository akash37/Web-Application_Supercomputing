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
	<title>Hpc</title>
		<link rel="stylesheet" type="text/css" href="css/main.css"/>
		<link rel="stylesheet" type="text/css" href="css/dropdown.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="http://code.jquery.com/jquery-1.4.min.js" type="text/javascript"></script>
      <script type="text/javascript">
         $(document).ready(function(){
            $("#next").click(function(){
                $('#content').load('htmlpages//hpc2.html');
            }); 
          });
      </script>
        <title>Introduction to Parallel Computing</title>
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
  <li>Serial Computating</li><br>
  <li>Parallel Computating</li><br>
  <li>Why Use Parallel Computing</li><br>
  <li>Who is Using Parallel Computing</li><br>
</ul>
</div>
</div>
    <div id="content">
    <p><b>Serial Computing:</b><br>
	Traditionally, software has been written for serial computation:<br>
	A problem is broken into a discrete series of instructions<br>
	Instructions are executed sequentially one after another<br>
	Executed on a single processor<br>
	Only one instruction may execute at any moment in time</p>
	<img src="images//serialProblem.gif"/>
	<br><br>
	<input type='button' value='Next' id="next">
</div>
</div>
</body>
</html>
<%
}
%>