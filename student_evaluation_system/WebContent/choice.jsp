<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
try{
String stri=(String)session.getAttribute("email_id");
 System.out.println(stri);
}
catch(Exception e)
{e.printStackTrace();}
%>
<body>
<body style="background:url(student2.jpg);background-size:100% ;">
<br><br>
<h1>CLICK ON YOUR CHOICE</h1>
<p style="text-align : center"><a href="c.jsp"><img src="c.jpg" height="100" width="150" style=" margin-right:120 px "></a>
<a href="java.jsp" style="margin-left:120px"><img height="100" width="150" src="java.png"></a></p>
</body>
</html>