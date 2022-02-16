<%--
<%if(session.getAttribute("email")==null) {
	
	response.sendRedirect("login.jsp");
}
else{
	--%>
<%@include file="footer.jsp" %>
<html>
<head>
 <title> User Header</title>
 <link rel="stylesheet" href="ccs/newHome.css">
</head>
<body>
 <div class="menu-bar">
  <%--   <%String email=session.getAttribute("email").toString(); %>  --%>
     <h2 align="center">Shree Gold</h2><br>
   
  <ul>
   <li><a href="home.jsp">Home</a></li>
   <li><a href="userReport.jsp">My Report</a>
    <div class="sub-menu-1">
     <ul>
      <li><a href="myReserve.jsp">My Reserve</a></li>
      <li><a href="myOrders.jsp">My Orders</a></li>
      
     </ul>
    </div>
   </li>
   <li><a href="messageUs.jsp">Massage Us</a></li>
   <li><a href=>My Profile</a></li>
   
   <li><a href="logout.jsp">Logout</a></li>
  </ul>
    <div class="search">
           <form action="searchHome.jsp" method="post">
             <input type="text" name="search" placeholder="Search">
             <button type="submit"><i class="fa fa-search"></i></button>
             </form>
             </div>
     
 </div>
</body>
</html>
<%--<%}%>--%>
