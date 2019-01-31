<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:url(student2.jpg); background-size=100%;">
<% 
try{
String s=request.getParameter("choice");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","anji");
String query="delete from c_questions where sno=?";
PreparedStatement st=con.prepareStatement(query);
st.setString(1,s);
st.executeUpdate();}
catch(Exception e)
{}
%>
<h1>QUESTION WAS SUCCESSFULLY DELETED</h1></br>
<a href="admin.jsp">LOGOUT</a></br></br>
<a href="login2.jsp">MODIFY C AND JAVA QUESTIONS</a>
</body>
</html>