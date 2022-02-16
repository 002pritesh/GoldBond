
<%@page import="GGBproject.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp"%>
<%@include file= "footer.jsp"%>
<html>
<head>
<title>Home</title>
<style>
.h3
{
	color: yellow;
	text-align: center;
}
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
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<%
String msg=request.getParameter("msg");
if ("added".equals(msg)){
%>
<h3 class="alert">Offer added successfully !</h3>
<%} %>
<%
if("exist".equals(msg)){
%>
<h3 class="alert">Offer already exist in you Reserve! Quantity  increased !</h3>
<%} %>
<% 
if("invalid".equals(msg)){
%>
<h3 class="alert">Some thing want wrong ! Try Again !</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to Reserve <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%
 try{
	 
	 Connection con=ConnectionProvider.getCon();
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery("select *from offersName where active='Yes'");
	 while (rs.next()){
 
%>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4) %></td>
            <td><a href="addToReserveAction.jsp?id = <%=rs.getString(1)%>">Add to Reserve <i class='fas fa-cart-plus'></i></a></td>
          </tr>
<%
         }
    }
catch(Exception e){
	System.out.println(e);
}
%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>