<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader("Expires",0);
 %>
<%
    if((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<%response.sendRedirect("index.jsp");%>
<%} else {
%>
<!doctype html>
<head>
<link rel="stylesheet" type="text/css" href="css/main.css"/>
<link rel="stylesheet" type="text/css" href="css/dropdown.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profiling</title>
<script src="http://code.jquery.com/jquery-1.4.min.js" type="text/javascript"></script>
      <script type="text/javascript">
         $(document).ready(function(){
            $("#next").click(function(){
                $('#content').load('htmlpages//profiling2.html');
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
  <li>The Problem</li><br>
  <li>Extreme Optimization Pitfalls</li><br>
  <li>The Benchmark</li><br>
  <li>Attributes of good benchmark</li><br>
  <li>How to find performance bottlenecks</li><br>
  <li>Performance Tools Overview</li><br>
  <li>Using Optimizing Compilers</li><br>
  <li>Profilers
  <ul>
  <li>GNU gprof</li>
  <li>Using gprof GNU profiler</li>
  <li>Understanding Flat Profile</li>
  <li>How gprof works</li>
  </ul><br>
  <li>Vtune Profiler</li><br>
  </li>
</ul>
</div>
</div>
<div id="content">
<p><b>The Problem</b><br>
        PC speed increased 500 times since 1981, but today’s software is more complex and still hungry for more resources<br>
        How to run faster on same hardware and OS architecture?<br>
        Highly optimized applications run tens times faster than poorly written ones.<br>
        Using efficient algorithms and well-designed implementations  leads to high performance applications</p>
<p><b>Extreme Optimization Pitfalls</b><br>
        Large application’s performance cannot be improved before it runs<br>
        Build the application then see what machine it runs on<br>
        Runs great on my computer…<br>
        Debug versus release builds<br>
        Performance requires assembly language programming<br>
        Code features first then optimize if there is time leftover<br>
        Note:Software optimization doesn’t begin where coding ends –
        It is ongoing process that starts at design stage and continues all the way through development
</p>
<p><b>The Benchmark</b>
    The benchmark is program that used to:<br>
        Objectively evaluate performance of an application<br>
        Provide repeatable application behavior for use with performance analysis tools<br>
    Industry standard benchmarks:<br>
      TPC-C 3D-Winbench <br>
      http://www.specbench.com/<br> 
      Enterprise Services <br>
      Graphics/Applications <br>
      HPC/OMP <br>
      Java Client/Server<br> 
      Mail Servers <br>
      Network File System<br> 
      Web Servers<br></p>
<p><b>Attributes of good benchmark</b><br>
    Repeatable (consistent measurements)<br>
      Remember system tasks , caching issues<br>
      “incoming fax” problem : use minimum performance number<br>
    Representative<br>
      Execution of typical code path, mimic how customer uses the application<br>
      Poor benchmarks : Using QA tests <br>
    Easy to run<br>
    Verifiable <br>
      need QA for benchmark!
    Measure Elapsed Time vs. other number
    Use benchmark to test functionality
      Algorithmic tricks to gain performance may break the application…
      </p>
<p><b>How to find performance bottlenecks</b><br>
    Determine how your system resources, such as memory and processor, are being utilized to identify system-level bottlenecks<br>
    Measure the execution time for each module and function in your application<br>
    Determine how the various modules running on your system affect the performance of each other<br>
    Identify the most time-consuming function calls and call sequences within your application<br>
    Determine how your application is executing at the processor level to identify microarchitecture-level performance problems<br>
</p>
<input type='button' value='Next' id="next">
</div>
</div>
</body>
</html>
<%
}
%>