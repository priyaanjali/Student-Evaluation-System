<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:url(student.jpg);background-size:100% ;">

<% 
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","anji");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from java_questions");
	int marks=0;
	int i=1;
	while(rs.next())
	{
		
		if(rs.getString(6).equals(request.getParameter(Integer.toString(i))))
		{	marks++;}
		i++;
	}
	%>
	
<fieldset style="text-align:center;">
<h1>YOUR MARKS IS : <%=marks %></h1>
</fieldset></br>
<a href="student.jsp" style="padding-left:700px;"><input type="button" value="Sign Out" style="color:green;padding-top:5px;padding-right:5px;padding-bottom:5px;padding-left:5px;border-radius:4px;border:none;border-bottom:4px solid #27aE60;cursor:pointer;height:40px;width:100px; "></a>
	<% 
}
catch(Exception e)
{}
%>
</body>
</html>