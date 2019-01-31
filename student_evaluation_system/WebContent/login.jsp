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

//String u= request.getParameter("username");
String ps=request.getParameter("password");
String email_id=request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","anji");
String query="select * from tab where email =? and password=?";
PreparedStatement st= con.prepareStatement(query);
st.setString(1,email_id);
st.setString(2,ps);
ResultSet rs= st.executeQuery();

if(rs.next())
{
	session.setAttribute("email1",email_id);
	response.sendRedirect("choice.jsp");
}
else
{
	out.println("<b>invalid username/password</b>");
%>
<a href="student.jsp">LOGIN AGAIN</a>
<%
}
con.close();


%>


</body>
</html>
