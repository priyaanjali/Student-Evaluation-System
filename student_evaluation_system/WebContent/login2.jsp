<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:url(student2.jpg);background-size:100% ;">
<h1>MODIFY C AND JAVA QUESTIONS</h1>
<%
try{
String u=request.getParameter("username");
String p=request.getParameter("password");
if(u.equals("system")&&p.equals("system"))
{
%>
<a href="modify_c_admin.jsp">MODIFY C QUESTIONS</a></br></br>
<a href="modify_java_admin.jsp">MODIFY JAVA QUESTIONS</a>
<% 
}
else{
	out.println("invalid username or password. ");

%>
<br><br><a href="admin.jsp">please login again</a>
<%}
   }
   catch(Exception e)
   {}%>
</body>
</html>
