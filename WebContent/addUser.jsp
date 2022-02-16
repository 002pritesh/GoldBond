<%@page import="GGBproject.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>

<html>
 <head>
  <title>Add User</title>
 </head>
 <body>
  <h1 align="center">Add User</h1>
  <div>
   <form action="signupAction.jsp" method="post">
    <input  type="text" name="name" placeholder="Enter User Name" required>
    <input type="text" name="name" placeholder="Enter Mobail Number" required>
    <input type="text" name="name" placeholder="Enter User Email" required>
     <select name="securityQuestion" required>
     <option value=" Select">Select</option>
      <option value="What was your first ccar ?"> What was your first car ?</option>
       <option value="What is first name of yout pet ?">What is first name of your pet ?</option>
        <option value="What is name of your best friend ?">What is name of your best friend ?</option>
         <option value="What is the name of town were you born ?">What is the name of town were you born ?</option>
    </select>
        <input type="text" name="name" placeholder="Enter Answer" required>
        <input type="password" name="password" placeholder="Enter Password " required>
        <input type="password" name="confirmPassword" placeholder="Enter Confirm Password">
        <input type="submit" value="signup">
   </form>
   <%
 String msg=request.getParameter("msg");
  if ("valid".equals(msg)){	
%>
`	
<h1>Successfully Updated</h1>
<%} %>
<%
 if ("invalid". equals(msg)){
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    
  </div>
 </body>
</html>