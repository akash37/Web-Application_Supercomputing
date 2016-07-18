<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
  response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader("Expires",0);
 %>
<%
if((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "") || (session.getAttribute("userid")!="admin")) {
%>
<%response.sendRedirect("logout.jsp");%>
<%} else {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete User</title>
<link rel="stylesheet" type="text/css" href="css/main.css"/>
</head>
<body>
<div id="container">
<div id="header">
<span style="font-size: 2.5em;color:white;position:relative;top:50px;left:80px;"><a href="index.jsp"  style="color: #ffffff;text-decoration:none">SUPERCOMPUTING</a></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:500px;">Welcome  <%=session.getAttribute("userid")%></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:550px;"><a href="profile.jsp" style="color: #ffffff;text-decoration:none">Profile</a></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:600px;"><a href="logout.jsp" style="color: #ffffff;text-decoration:none">Logout</a></span>
</div>
</div>
<%
String s1=(String)session.getAttribute("userid");
%>
<div id="content">
<form action="deleteuser">
<strong>Choose the user you want to delete :</strong><br><br>
 <%
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "akash");
    Statement st = con.createStatement();
    Statement stt = con.createStatement();
    ResultSet r1=st.executeQuery("select uname from members ");
    while(r1.next()){
    	if(!(r1.getString("uname").equals("admin")))
    	out.print("<input type='radio' name='uname' value='"+r1.getString("uname")+"' >"+r1.getString("uname")+"<br><br>");
    }
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}catch(Exception ex){
	ex.printStackTrace();
}		
%>
<input type="submit" name="up" value="Delete User" >
</form>
</div>
</body>
</html>
<%
}
%>