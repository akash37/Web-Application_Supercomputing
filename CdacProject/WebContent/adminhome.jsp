<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader("Expires",0);
  %>
<%
    if((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "") || (session.getAttribute("userid")!="admin")) {
%>
<%response.sendRedirect("logout.jsp");%>
<%}
else {
%>
		<title>Admin Home</title>
 		<link rel="stylesheet" type="text/css" href="css/main.css"/>
        <link rel="stylesheet" type="text/css" href="css/dropdown.css"/>
<div id="container">
<div id="header">
<span style="font-size: 2.5em;color:white;position:relative;top:50px;left:80px;"><a href="index.jsp" style="color: #ffffff;text-decoration:none">SUPERCOMPUTING</a></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:500px;">Welcome  <%=session.getAttribute("userid")%></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:550px;"><a href="profile.jsp" style="color: #ffffff;text-decoration:none">Profile</a></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:600px;"><a href="logout.jsp" style="color: #ffffff;text-decoration:none">Logout</a></span>
</div>
<div id="sidebar">
		<form action=adminchoice>
		<div style="position:relative;Top:45px;left:45px;">
			<input type="radio" name="select" value="programs" >Add Programs<br><br>
			<input type="radio" name="select" value="conference" >Update Conferences<br><br>
			<input type="radio" name="select" value="deleteprogram" >Delete Programs<br><br>
			<input type="radio" name="select" value="deleteuser" >Delete Registered User<br><br>
			<input type="radio" name="select" value="view" >User View<br><br>
			<input type="submit" value="Go">
			</div>
		</form>
</div>

<div id="content">
<br><strong><font size="3.0">Welcome Admin</font></strong><br><br>

You are provided with the functionalities like:<br>
<ul>
<li>Adding Programs</li><br>
<li>Deleting Programs</li><br>
<li>Deleting Registered User</li><br>
<li>Updating the latest conferences</li><br>
<li>User View will take you to the user pages</li></ul>
<b>You can select your appropriate choice</b>
</div>
</div>
<%
}
%>