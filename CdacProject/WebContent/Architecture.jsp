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
<title>Architecture</title>
 <script src="http://code.jquery.com/jquery-1.4.min.js" type="text/javascript"></script>
      <script type="text/javascript">
         $(document).ready(function(){
            $("#next").click(function(){
                $('#content').load('htmlpages//arch2.html');
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
  <li>Shared Memory
  <ul>
      <li>General Characterstics</li>
      <li>Uniform Memory Access</li>
      <li>Non-Uniform Memory Access</li>
      <li>Advantages</li>
      <li>Disadvantages</li>
      </ul>
  </li><br>
  <li>Disributed Memory
  <ul>
      <li>General Characterstics</li>
      <li>Advantages</li>
      <li>Disadvantages</li>
      </ul>
  </li><br>
 
</ul>
</div>
</div>
<div id="content">
 <p><b>Shared Memory</b>
Shared memory parallel computers vary widely, but generally have in common 
the ability for all processors to access all memory as global address space. 
Multiple processors can operate independently but share the same memory 
resources.
Changes in a memory location effected by one processor are visible to all
other processors.
Historically, shared memory machines have been classified as  
and, based upon memory access times.<br> <br>
<strong>Uniform Memory Access (UMA):</strong>
  <UL>
   <LI>Most commonly represented today by Symmetric Multiprocessor 
       machines
  <LI>Identical processors 
    <LI>Equal access and access times to memory 
   <LI>Sometimes called CC-UMA - Cache Coherent UMA.
        Cache coherent means if one processor updates a location in shared 
        memory, all 
        the other processors know about the update.  Cache coherency is 
        accomplished at the hardware level. 
</UL>
<img src="images//shared_mem.gif"/><br>
</p>
<input type='button' value='Next' id="next">
</div>
</div>
</body>
</html>
<%
}
%>