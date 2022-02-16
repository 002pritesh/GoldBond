<%@page import="GGBproject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name="";
String email=request.getParameter("email");
String mobaileNumber=request.getParameter("mobaileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String confirmPassword=request.getParameter("confirmPassword");
String address="";
String city="";
String state="";
String country="";
String adhar_number="";
String image_path1="";
String pan_number="";
String image_path2="";
try{
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into usersdetail values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, mobaileNumber);
	ps.setString(4, securityQuestion);
	ps.setString(5, answer);
	ps.setString(6, password);
	ps.setString(7, address);
	ps.setString(8, city);
	ps.setString(9, state);
	ps.setString(10, country);
	ps.setStriing(11, adhar_number);
	ps.setString(12, image_path1);
	ps.setString(13, pan_number);
	ps.setString(14, image_path2);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
	
}
catch(Exception e){
	
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
	
	
}
%>