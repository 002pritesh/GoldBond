<%@page import="GGBproject.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file= "footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="ccs/addNewOffer-style.css">
<title>Add New Product</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if ("done".equals(msg)){
	
%>
<h3 class="alert">Offer  Added Successfully!</h3>
<%} %>
<%
if("wrong invalid".equals(msg)){
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<%
int id=0;
try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from offersname");
	//int id;
	while (rs.next()){
		
		id=rs.getInt(1);
		// id=id+1;
		out.println(id);
	}
}
catch(Exception e){
	
	
}
%>
<form action="addNewOfferAction.jsp" method="post">

<h3 style="color: yellow;">Offers ID:<%out.println(id+1); %> </h3>
<input type="hidden" name="id" value="<%out.println(id+1);%>">
<br>
<div class="left-div">
 <h3>Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Name" required>
<hr>
</div>
<div class="right-div">
<h3>Enter Category</h3>
 <input class="input-style" type="text" name="category" placeholder="Enter category">
<hr>
</div>
<br><br><br><br>
<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style" type="number" name="price" placeholder="Enter price">
<hr>
</div>
<div class="right-div">
<h3>Active</h3>
  <select class="input-style" name="active">
   <option value="Yes">yes</option>
   <option value="No">no</option>
 </select>
<hr>
</div><br><br><br><br>
 <button class="button">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
</body>
</html>