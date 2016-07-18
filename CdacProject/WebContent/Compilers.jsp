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
<title>Compilers</title>
<script src="http://code.jquery.com/jquery-1.4.min.js" type="text/javascript"></script>
      <script type="text/javascript">
         $(document).ready(function(){
            $("#next").click(function(){
                $('#content').load('htmlpages//compiler2.html');
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
  <li>Compiler</li><br>
  <li>GNU Compiler</li><br>
  <li>OpenMP Compilers</li><br>
  <li>MPI Compilers</li><br>
</ul>
</div>
</div>
<div id="content">
<p>
A compiler is a computer program (or a set of programs) that transforms source code written in a programming language (the source language) into another computer language (the target language), with the latter often having a binary form known as object code.
The most common reason for converting source code is to create an executable program.
The name "compiler" is primarily used for programs that translate source code from a high-level programming language to a lower level language (e.g., assembly language or machine code). 
If the compiled program can run on a computer whose CPU or operating system is different from the one on which the compiler runs, the compiler is known as a cross-compiler. More generally, compilers are a specific type of translator.
While all programs that take a set of programming specifications and translate them, i.e. create a means to execute those specifications, are technically "compilers", 
the term generally means a program that produces a separate executable from the compiler (that may require a run time library or subsystem to operate), a compiler that merely executes the original specifications is usually referred to as an "interpreter", although because of differing methods of analyzing what represents compilation and what represents interpretation, 
there is some overlap between the two terms.
A program that translates from a low level language to a higher level one is a decompiler. 
A program that translates between high-level languages is usually called a source-to-source compiler or transpiler. 
A language rewriter is usually a program that translates the form of expressions without a change of language. 
The term compiler-compiler is sometimes used to refer to a parser generator, a tool often used to help create the lexer and parser.
A compiler is likely to perform many or all of the following operations: lexical analysis, preprocessing, parsing, semantic analysis (syntax-directed translation), code generation, and code optimization. 
Program faults caused by incorrect compiler behavior can be very difficult to track down and work around; 
therefore, compiler implementors invest significant effort to ensure compiler correctness.
</p>
<input type='button' value='Next' id="next">
</div>
</div>
</body>
</html>
<%
}
%>