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
<title>Cuda</title>
<script src="http://code.jquery.com/jquery-1.4.min.js" type="text/javascript"></script>
      <script type="text/javascript">
         $(document).ready(function(){
            $("#page2").click(function(){
                $('#content').load('htmlpages//cuda2.html');
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
  <li>Introduction</li><br>
  <li>Advantages</li><br>
  <li>Limitations</li><br>
</ul>
</div>
</div>
<div id="content">
				CUDA
				<p>
CUDA is a parallel computing platform and application programming interface (API)
 model created by NVIDIA
It allows software developers to use a CUDA-enabled graphics processing unit
 (GPU) for general purpose processing-an approach known as GPGPU
 The CUDA platform is a software layer that gives direct access to the GPU's
 virtual instruction set and parallel computational elements, for the execution
 of compute kernels.</p>
<p>
The CUDA platform is designed to work with programming languages such as C,
 C++ and Fortran. This accessibility makes it easier for specialists in 
parallel programming to utilize GPU resources, as opposed to previous API
 solutions like Direct3D and OpenGL, which required advanced skills in graphics
 programming. Also, CUDA supports programming frameworks such as OpenACC and
 OpenCL. When it was first introduced by NVIDIA, the name CUDA
 was an acronym for Compute Unified Device Architecture,
 but NVIDIA subsequently dropped the use of the acronym</p>
<input type='button' value='Next' id="page2">
</div>
</div>
</body>
</html>
<%
}
%>