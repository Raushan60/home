
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String email=request.getParameter("email");
String cpass=request.getParameter("cpass"); 
String fname=request.getParameter("fname"); 
String mname=request.getParameter("mname"); 
String lname=request.getParameter("lname");
String dob=request.getParameter("dob"); 
String mob=request.getParameter("mob"); 
String location=request.getParameter("location"); 
String resume=request.getParameter("resume"); 
 




 Class.forName("com.mysql.jdbc.Driver");
 Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/homecredit","root","ankit");
 PreparedStatement ps=con.prepareStatement("insert into client_registration values('"+email+"','"+cpass+"','"+fname+"','"+mname+"','"+lname+"','"+dob+"','"+mob+"','"+location+"','"+resume+"')");

 int i=ps.executeUpdate();
 if(i>0)
 {
	 System.out.println("successfull");
	 out.println("Registration successfully"); 	
	 response.sendRedirect("/home/client-registration.jsp");
 }
 else
 {
	 out.println("DBError");
 }
%>


</body>
</html>
