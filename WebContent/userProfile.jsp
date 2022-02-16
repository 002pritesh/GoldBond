<%@page import="GGBproject.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
 <head>
  <link rel="stylesheet" href="css/changeDetails.css">
   <title>Profile</title>
 </head>
 <body>
 <h3>Complet Your KYC</h3>
  
  <%-- Complite KYC  --%>
  <form action="uploadServlet"=method="post" enctype="multipart/form-data">
   <input type="text" name="name" placeholder="Enter Your Name"required>
   <input type="number" name="adharNumber" placeholder="Enter Adhar Card Number"required>
   <input type="file" name="adharimage" placeholder="Uplode Adhar Card Image" required>
   <input type="number" name="panNumber" placeholder="Enter Pan Card Number"required>
   <input type="file" name="panimage"placeholder="Enter Pan Card Image"required>
   
   <%-- search for any user --%>
    
  </form>
 </body>
</html>