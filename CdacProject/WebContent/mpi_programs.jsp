<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
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
		<title>MPI Programs</title>
 		<link rel="stylesheet" type="text/css" href="css/main.css"/>
        <link rel="stylesheet" type="text/css" href="css/dropdown.css"/>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
function load(select)
{
	var xmlhttp;
	xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		if((xmlhttp.readyState==4)&&(xmlhttp.status==200))
		{
				document.getElementById("area").innerHTML =xmlhttp.responseText;
				
		}
	}
	xmlhttp.open("GET","mpi?mpi="+select);
	xmlhttp.send();
}
</script>
<div id="container">
<div id="header">
<span style="font-size: 2.5em;color:white;position:relative;top:50px;left:80px;"><a href="index.jsp" style="color: #ffffff;text-decoration:none">SUPERCOMPUTING</a></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:500px;">Welcome  <%=session.getAttribute("userid")%></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:550px;"><a href="profile.jsp" style="color: #ffffff;text-decoration:none">Profile</a></span>
<span style="font-size:1.0em;color:white;position:relative;top:50px;left:600px;"><a href="logout.jsp" style="color: #ffffff;text-decoration:none">Logout</a></span>
</div>

<div id="sidebar">
		<form action=mpi>
		<div style="position:relative;Top:45px;left:45px;">
<%
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "akash");
    Statement st = con.createStatement();
    ResultSet rs=st.executeQuery("select mid,mprogname from mpi");
    while(rs.next()){
    	out.print("<input type='radio' name='mpi' value='"+rs.getInt("mid")+"' onclick='load(this.value)'>"+rs.getString("mprogname")+"<br><br>"); 
    			}
%>
			</div>
		</form>
</div>

<div id="content">
	<form>
		<textarea id="area" style="width:600px;height:500px;">${result}</textarea>
	</form>
</div>
</div>
<%
}
%>