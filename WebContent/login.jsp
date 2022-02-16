<html>
<head>
<link rel="stylesheet" href="ccs/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'> 
<form action="loginAction.jsp" method="post"><br><br><br>
  <input type="number" name="mobaileNumber" placeholder="Enter Register Mobaile Number"><br>
   <input type="text" name="email" placeholder="Enter Your Email" required><br>
    <input type="password" name="password" placeholder=" Enter Password" required>
     <h3><input type="submit" value="login"></h3>
</form>
     
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
   String msg= request.getParameter("msg");
  if ("notexist".equals(msg)){
  %>
  <h1>Incorrect Email or Password</h1>
<%} %>
<%
 if ("invalid".equals(msg)){
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2 align="center">Shree Gold</h2>
    <marquee  behavior="alternate"direction="down"height="100%"> 
      <marquee behavior="alternate"direction="right"height="100%">
       <p>The Online Gold is here to buy them.</p>
      </marquee>
    </marquee>
  </div>
</div>

</body>
</html>