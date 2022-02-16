<%-- 
<%@page import="GGBproject.ConnectionProvider"%> 
<%@page import="java.sql.*"%>
--%>
<%@include file="adminHeader.jsp" %>
<%@include file= "footer.jsp"%>
<html>
<head>
<title>welcome</title>
<style>
.h1
{
color: white;
text-align: center;
font-size: 100px;
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
td:nth-child(1){
  background: red;
}
td:nth-child(2){
  background: orange;
}
td:nth-child(3){
  background: #ADD8E6;
}
td:nth-child(4){
  background: yellow;
}
</style>
</head>
<body>
<h1 align="center">welcome admin!</h1>
<table>
  <tr>
  <th> Daily Update</th>
  </tr>
  <br>
  <tr>
  <tr>
    <td>Panding KYC</td>
    <td>Recived Order</td>
    <td>dilivered Order</td>
    <td>Cancel Order</td>
  </tr>
  </tr>
</table>
</body>
</html>