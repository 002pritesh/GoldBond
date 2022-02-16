<%@page import="GGBproject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String mobailNumber=request.getParameter("mobailnumber");
String password=request.getParameter("password");

int chack=0;
try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from users where email='"+email+"'and password='"+password+"'");
	while(rs.next()){
		
		chack=1;
		st.executeUpdate("update users set mobailNumber='"+mobailNumber+"'where email='"+email+"'");
		response.sendRedirect("changeMobaileNumber.jsp?msg=done");
	}
	if(chack==0){
		
		response.sendRedirect("changeMobaileNumber.jsp?msg=wrong");
	}
}
catch(Exception e){
	
	System.out.println(e);
}
%>