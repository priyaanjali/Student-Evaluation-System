<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:url(student2.jpg);background-size:100% ;">
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","anji");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from c_questions");
%>
<form action="saveit.jsp" method="post">
   <% 
int std=1;
while(rs.next())
{
	String question_no=rs.getString(1);
	String question=rs.getString(2);
	String option1=rs.getString(3);
	String option2=rs.getString(4);
	String option3=rs.getString(5);
	String correct_ans=rs.getString(6);
	%>
	<table>
	<tr><td><%= question_no%>.  <%=question%></td></tr>
	<tr><td><input type="radio"  name="<%=std %>"  value="<%=option1%>"><%=option1%></td></tr>
	<tr><td><input type="radio" name="<%=std %>"  value="<%=option2%>"><%=option2%></td></tr>
	<tr><td><input type="radio" name="<%=std %>"  value="<%=option3%>"><%=option3%></td></tr>
	</table>
	</br>
	<% 
	std++;
}%>
<input type="submit" name="submit"  value="submit">
</form>
<% 
con.close();
}
catch(Exception e){
	System.out.println("an exc occured");
	e.printStackTrace();
}
%> 
</body>
</html>