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
<% 
try{
String q=request.getParameter("question");
String op1=request.getParameter("option1");
String op2=request.getParameter("option2");
String op3=request.getParameter("option3");
String ca=request.getParameter("correct_ans");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","anji");
Statement st=con.createStatement();
st.executeUpdate("insert into c_questions(question,option1,option2,option3,correct_ans) values ('"+q+"','"+op1+"','"+op2+"','"+op3+"','"+ca+"')");
  out.println("DONE");
con.close();
}
catch(Exception e)
{e.printStackTrace();}
%>
<a href="admin.jsp">LOGOUT</a></br></br>
<a href="login2.jsp">MODIFY C AND JAVA QUESTIONS</a>
</body>
</html>