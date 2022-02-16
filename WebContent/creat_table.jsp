<%@page import="GGBproject.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%
try {
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table usersdetail(name2 varchar(100),email varchar(50) primary key,mobaileNumber int(10),securityQuestion varchar(100),answer varchar(50),pswd varchar(50),address varchar(250),city varchar(50),state varchar(50),country varchar(50),adhar_number bigint(12),image_path varchar(250),pan_number varchar(10),image_path varchar(250))";
	String q2="create table offersname (id int AUTO_INCREMENT primary key,name1 varchar(500),category varchar(50),price int,active varchar(10))";
	String q3="create table myreserve(email varchar(50),productId int,quantity int,price int ,total int,address varchar(250),city varchar(50),state varchar(50),country varchar(50),mobaileNumber bigint,orderDate varchar(50),deliveryDate varchar(50),paymentMethod varchar(100),transactionId varchar(50),stat varchar(10))";
	String q4="create table massageus(id int AUTO_INCREMENT,email varchar(50),subject varchar(100),body varchar(500),PRIMARY KEY(id))";
	
	System.out.println(q1);
	System.out.println(q2);
	System.out.println(q3);
	System.out.println(q4);
	
	//st.execute(q1);
	//st.execute(q2);
	//st.execute(q3);
	//st.execute(q4);
	
	System.out.println("Table created");
	con.close();
}
catch(Exception e){
	
	System.out.print(e);
}
%>()