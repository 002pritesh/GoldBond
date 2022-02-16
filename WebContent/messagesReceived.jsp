<%@page import="GGBproject.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@include file= "adminHeader.jsp"%>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
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
   color: black;
   padding: 20px;
   font-size: 20px;
}

</style>
</head>
<body>
<div style="color: black; text-align: center; font-size: 30px;">Messages Received </div>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Email</th>
            <th scope="col">Subject</th>
            <th scope="col">Body</th>
          </tr>
        </thead>
        <tbody>
 <%
 try{
	 
	 Connection con=ConnectionProvider.getCon();
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery("select * from massageus");
	 while(rs.next()){
		 
 %>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
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