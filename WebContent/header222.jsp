<%--
<%if(session.getAttribute("email")==null) {
	
	response.sendRedirect("login.jsp");
}
else{
	--%>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="ccs/home-style.css">
</head>
    <!--Header-->
    <br>
<div class="topnav sticky">
  <%--   <%String email=session.getAttribute("email").toString(); %>  --%>
  
            <h2 align="center">Shree Gold</h2>
            <h2><a href=""> <i class='fas fa-user-alt'></i></a></h2>
          
         <a href="home.jsp">Home<i class="fa fa-institution"></i></a>
         <a href="userReport.jsp">My Report<i class="fa fa-institution"></i></a>
         <a href="myReserve.jsp">My Reserve<i class='fas fa-cart-arrow-down'></i></a>
         <a href="myOrders.jsp">My Orders  <i class='fab fa-elementor'></i></a>
      <a href="messageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a>
      <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
      <a href="profile.jsp">Profile<i class="fa fa-edit"></i></a>
      <a href="changeDetails.jsp">Change Details <i class="fa fa-edit"></i></a> 
      <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
       
    <div class="search-container">
           <form action="searchHome.jsp" method="post">
             <input type="text" name="search" placeholder="Search">
             <button type="submit"><i class="fa fa-search"></i></button>
           </form>
            </div>
          </div>
           <br>
           <!--table-->
<%--<%}%>--%>