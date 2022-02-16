<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
   <form action="forgotPasswordAction.jsp" method="post">
     <input type="email" name="email" placeholder=" Enter Your Email">
      <input type="number" name="mobailNumber" placeholder=" Enter Mobail Number">
    <select name="securityQuestion">
      <option value="What was the first car ?">What was the first car ?</option>
        <option value="What is first name of your pet ?">What is first name of your pet ?</option>
          <option value="What is name of your best friend ?">What is name of your best friend ?</option>
           <option value="What is name of town were you born ?">What is name of town were you born ?</option>
     </select>
       <input type="text" value="answer" placeholder="Enter your answer">
         <input type="password" name="newPassword" placeholder=" Enter your new passwod">
           <input type="submit" value="save">    
   </form>
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg=request.getParameter("msg");
   if ("done".equals(msg)){
  %>
<h1>Password Changed Successfully!</h1>
 <%} %>
 <%
  if ("invalid".equals(msg)){ 
 %>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

    <h2>GURU Gold</h2>
    <p>The Online Gold is here to buy them.</p>
  </div>
</div>
</body>
</html> 