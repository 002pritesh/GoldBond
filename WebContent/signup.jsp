<html>
<head>
<link rel="stylesheet" href="ccs/signup-style.css">
<title>SignUp</title>
</head>
<body>	
<div id='container'>
  <div class='signup'>
   <form action="signupAction.jsp" method="post">
   <input type="text" name="name"placeholder="Enter your First name">
    <input type="number" name="mobaileNumebr" placeholder="Enter Mobaile Number"required>
     <input type="text" name="email" placeholder="Enter Your Email " required>
    <select name="securityQuestion" required>
     <option value=" Select">Select</option>
      <option value="What was your first ccar ?"> What was your first car ?</option>
       <option value="What is first name of yout pet ?">What is first name of your pet ?</option>
        <option value="What is name of your best friend ?">What is name of your best friend ?</option>
         <option value="What is the name of town were you born ?">What is the name of town were you born ?</option>
    </select>
     <input type="text" name="answer" placeholder="Enter Your Answer " required>
      <input type="password" name="password" placeholder="Enter Password " required>
       <input type="password" name="confirmPassword" placeholder="Enter Confirm Password">
        <input type="submit" value="signup">
   </form>
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div align="center"class="whysign">
 
<%
 String msg=request.getParameter("msg");
  if ("valid".equals(msg)){	
%>
`	
<h1>Successfully Updated</h1>
<%} %>
<%
 if ("invalid". equals(msg)){
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h1 >Shree Gold Bond </h1>
     <marquee behavior="alternate"direction="down"height="95%"width="101%"> 
      <marquee behavior="alternate"direction="right"height="95"width="101%">
       <p>The Online Gold is here to buy them.</p>
      </marquee>
    </marquee>
   </div>
</div>

</body>
</html>