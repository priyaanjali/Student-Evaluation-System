<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:url(student2.jpg); background-size:100%;">
<h1>DELETE QUESTION: </h1></br></br>
<form action="dca.jsp" method="post">
<table border="1">
<% 
try{
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","anji");     
 String query="select * from c_questions";
 PreparedStatement st=conn.prepareStatement(query);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
ResultSet rs= st.executeQuery();
while(rs.next())
{
%>
<tr>
<td><b> <%=rs.getString(1) %></b></td>
<td><b><%=rs.getString(2) %></b></td>
<td><b><%=rs.getString(3) %></b></td>
<td><b><%=rs.getString(4) %></b></td>
<td><b><%=rs.getString(5) %></b></td>
<td><b><%=rs.getString(6) %></b></td>
</tr>
<% 
}
}
catch(Exception e)
{e.printStackTrace();}
%>
</table></br></br>
Question no. :<input type="text" name="choice"></br></br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" value="submit">
</form>
</body>
</html>