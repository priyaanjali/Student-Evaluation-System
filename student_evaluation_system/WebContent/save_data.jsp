<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
try{
String user=request.getParameter("username");
String pwd=request.getParameter("password");
String city=request.getParameter("city");
String pno=request.getParameter("phone_number");
String email_id=request.getParameter("email_id");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","anji");
Statement st=con.createStatement();
st.executeUpdate("insert into tab values ('"+user+"','"+pwd+"','"+city+"','"+pno+"','"+email_id+"')");
out.println("REGISTERED");
con.close();
}
catch(Exception e){}; 
%>
<a href="student.jsp">LOGIN</a>
</body>
</html>