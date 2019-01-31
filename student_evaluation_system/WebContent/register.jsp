<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:url(student2.jpg);background-size:100% ;">
<fieldset style="text-align:center;">
<legend>Enter your details here</legend>
<form action="save_data.jsp" method="post">
<center><table>
<tr><td>USERNAME</td><td><input type="text" name="username"></td></tr>
<tr><td>PASSWORD</td><td><input type="password" name="password"></td></tr>
<tr><td>PHONE_NUMBER</td><td><input type="number" name="phone_number"></td></tr>
<tr><td>CITY</td><td><input type="text" name="city"></td></tr>
<tr><td>EMAIL_ID</td><td><input type="email" name="email_id"></td></tr>
<tr><td>SUBMIT</td><td><input type="submit" value="sign_up"></td></tr>
</table></center>
</form>
</fieldset>
</body>
</html>