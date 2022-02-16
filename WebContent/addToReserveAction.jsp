<%@page import="GGBproject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file= "header.jsp"%>
<%
String email=session.getAttribute("email").toString();
int productId=Integer.parseInt(request.getParameter("id"));
int quantity=1;
int product_price=0;
int product_total=0;
int cart_total=0;

int z=0;

try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from offersname where id='"+productId+"'");
	while (rs.next()){
		
		product_price=rs.getInt(4);
		product_total=product_price;
	}
	ResultSet rs1=st.executeQuery("select *from myreserve where productId='"+productId+"'and email='"+email+"'and address is NULL");
	while (rs1.next()){
		
		cart_total=rs1.getInt(5);
		cart_total=cart_total+product_total;
		quantity=rs1.getInt(3);
		quantity=quantity+1;
		z=1;
	}
	if(z==1){
		
		st.executeUpdate("update myreserve set total='"+cart_total+"',quantity='"+quantity+"'where productId= "+productId+"and email='"+email+"'and address is NULL");
		response.sendRedirect("home.jsp?msg=exist");
	}
	if (z==0){
		
		PreparedStatement ps=con.prepareStatement("insert into myreserve(email.productId,quantity,price,total)values(?,?,?,?,?)");
		ps.setString(1, email);
		ps.setInt(2, productId);
		ps.setInt(3, quantity);
		ps.setInt(4, product_price);
		ps.setInt(5, product_total);
		ps.executeUpdate();
		response.sendRedirect("home.jsp?msg=added");
	}
}
catch(Exception e){
	
	System.out.println(e);
	response.sendRedirect("home.jsp?msg=invalid");
}
%>