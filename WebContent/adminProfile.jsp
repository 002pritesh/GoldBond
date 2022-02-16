<%@page import="GGBproject.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<%@ include file= "adminHeader.jsp"%>
<%@include file="footer.jsp" %>
<html>
  <head>
   <title>Admin Profile</title>
  </head>
  <body>
   <input class="input" type="button" name="button" placeholder="Add">
     <div class="search-container">
           <form action="searchProfile.jsp" method="post">
             <input type="text" name="search" placeholder="Search">
           </form>
            </div>
  </body>
</html>