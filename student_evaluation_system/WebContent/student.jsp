<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:url(student.jpg);background-size:100% ;">
<br><br><fieldset style="text-align:center;">
<legend>login here</legend>
<br>
<form action="login.jsp" method="post">
<b>EMAIL_ID</b>&nbsp&nbsp<input type="email" name="email"><br><br>
<b>PASSWORD</b>&nbsp&nbsp<input type="password" name="password"><br><br>
<b>SUBMIT</b>&nbsp&nbsp<input type="submit" value="signin"><br><br>
</form><br>
<b>FORGOT PASSWORD ?</b>&nbsp&nbsp<a href="forgotpassword.jsp">click_here</a><br><br>
<b>NEW USER ?</b>&nbsp&nbsp<a href="register.jsp">register_here</a><br>
</fieldset>

</body>
</html>