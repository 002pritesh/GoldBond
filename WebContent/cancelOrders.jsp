<%@page import="GGBproject.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="ccs/ordersReceived-style.css">
<title>Home</title>
<style>
.th-style
{ width: 25%;}
table{
   width:100%;
   margin: auto;
   table-layout: fixed;
   text-align: center;
   font-family: Arial;
}
table,tr,td{
   color: green;
   padding: 20px;
   font-size: 20px;
}
</style>
</head>
<body>
<div style="color: black; text-align: center; font-size: 30px;">Cancel Orders <i class='fas fa-window-close'></i></div>
<%--

<h3 class="alert">Order Cancel Successfully!</h3>

<h3 class="alert">Successfully Updated!</h3>

<h3 class="alert">Some thing went wrong! Try Again!</h3>

--%>
<table id="customers">
          <tr>
           <th>Mobile Number</th>
            <th scope="col">Offers Name</th>
             <th scope="col">Quantity</th>
              <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
              <th>Address</th>
               <th>City</th>
                <th>State</th>
                 <th>Country</th>
                  <th scope="col">Order Date</th>
                   <th scope="col">Expected Delivery Date</th>
                    <th scope="col">Payment Method</th>
                     <th scope="col">T-ID</th>
                      <th scope="col">Status</th>
          </tr>
 <%
 try{
	 
	 Connection con=ConnectionProvider.getCon();
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery("select *from myreserve inner join offersname where myreserve.productId=product.id and myreserve.orderDate is not NULL and myreserve.status='Cancel'");
	 while(rs.next()){
 %>
       
          <tr>
           <td><%=rs.getString(10) %></td>
            <td><%=rs.getString(17) %></td>
             <td><%=rs.getString(3) %></td>
              <td><i class="fa fa-inr"></i> <%=rs.getString(5) %> </td>
               <td><%=rs.getString(6) %></td>
                <td><%=rs.getString(7) %></td>
                 <td><%=rs.getString(8) %></td>
                  <td><%=rs.getString(9) %></td>
                   <td><%=rs.getString(11) %></td>
                    <td><%=rs.getString(12) %></td>
                     <td><%=rs.getString(13) %></td>
                      <td><%=rs.getString(14) %></td>
                       <td><%=rs.getString(15) %></td>
             </tr>
 <%
 }
 }
 catch(Exception e){
	 
	 System.out.println(e);
 }
 %>
        </table>
      <br>
      <br>
      <br>

</body>
</html>