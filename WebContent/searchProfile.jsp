<%@page import="GGBproject.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp"%>
<%@include file= "footer.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">Name</th>
            <th scope="col">Email Id</th>
            <th scope="col">Mobaile Number</th>
            <th scope="col">Security Question</th>
            <th scope="col">Answer</th>
            <th scope="col">Address</th>
            <th scope="col">City</th>
            <th scope="col">State</th>
            <th scope="col">Contry</th>
            <th scope="col">Adhar Number</th>
            <th scope="col">Pan Number</th>
          </tr>
        </thead>
        <tbody>
<%
int z=0;
try{
	String search=request.getParameter("search");
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from offersname where name like '%"+search+"%' or email like '"+search+"' or mobaileNumber like'"+search+"'and active='yes'");
	while (rs.next()){
		z=1;
	
%>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            <td><%=rs.getString(7) %></td>
            <td><%=rs.getString(8) %></td>
            <td><%=rs.getString(9) %></td>
            <td><%=rs.getString(10) %></td>
            <td><%=rs.getString(11) %></td>
            <td><%=rs.getString(13) %></td>
            
            <td><a href="editProfile.jsp?id=<%=rs.getString(1)%>">Edit Profile </a></td>
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
  <%
    if (z==0){
  %>
	<h1 style="color:white; text-align: center;">Nothing to show</h1>
  <%} %>
      <br>
      <br>
      <br>
      <div class="footer">
          <p>All right reserved by Shree Gold</p>
      </div>

</body>
</html>