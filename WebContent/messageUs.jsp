<%@page import="GGBproject.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp"%>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="ccs/messageUs.css">
<title>Message Us</title>
</head>
<body>
<div style="color: black; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>
<h3 style="text-align:center; color:yellow;">Message successfully sent. Our team will contact you soon!</h3>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
<%} %>
<form action="massgeUsAction.jsp" method="post">
 <input class="input-style"  type="text" name="subject"placeholder="subject"required>
 <hr>
 <textarea class="input-style" name="body" placeholder="Enter Your Massage" required></textarea>
 <hr>
 <button class="button" type="submit">Send<i class="far fa arrow-alt-right"></i></button>
</form>
<br><br><br>
</body>
</html>