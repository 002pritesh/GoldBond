<%@include file="footer.jsp" %>
<html>
<head>
 <title> New Admin Header</title>
 <link rel="stylesheet" href="ccs/newHome.css">
</head>
<body>
 <div class="menu-bar">
  <%--   <%String email=session.getAttribute("email").toString(); %>  --%>
     <h2 align="center">Shree Gold</h2><br>
   
  <ul>
   <li><a href="adminHome.jsp">Home</a></li>
   <li><a href="adminReports.jsp">Report</a>
    <div class="sub-menu-1">
     <ul>
      <li><a href="addNewOffer.jsp">Add Offers</a></li>
      <li><a href="allOfferEditOffer.jsp">Show Offers & Edit Offers</a></li>
      <li><a href="ordersReceived.jsp">Recived Order</a></li>
      <li><a href="cancelOrders.jsp">Cancel Order</a></li>
      <li><a href="deliveredOrders.jsp">Dilivered Order</a></li>
     </ul>
    </div>
   </li>
   <li><a href="messagesReceived.jsp">Massage Recive	</a></li>
   <li><a href=>User Info</a>
   <div class="sub-menu-1">
     <ul>
      <li><a href="adminProfile.jsp">Profiles</a></li>
     </ul>
    </div>
   </li>
   
   <li><a href="logout.jsp">Logout</a></li>
  </ul>
 </div>
</body>
</html>