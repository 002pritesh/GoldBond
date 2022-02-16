<%@page import="GGBproject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String productId =request.getParameter("id");

try{

	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
    st.executeUpdate("delete from cart where email='"+email+"'and productId='"+productId+"'and address is NULL");
    response.sendRedirect("myCart.jsp?msg=removed");
}
catch(Exception e){
	
	System.out.println(e);
}
%>