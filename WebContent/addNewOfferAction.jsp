<%@page import="GGBproject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");

try{
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into offersname(name,category,price,active) values(?,?,?,?)");
	//ps.setString(1, id);
	ps.setString(1, name);
	ps.setString(2, category);
	ps.setString(3, price);
	ps.setString(4, active);
	ps.executeUpdate();
	response.sendRedirect("addNewOffer.jsp?msg=done");
}
catch(Exception e){
	
	System.out.println(e);
	response.sendRedirect("addNewOffer.jsp?msg=wrong");
}
%>