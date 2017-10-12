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

String name=request.getParameter("name");
String email=request.getParameter("email");
String phoneno=request.getParameter("phoneno"); 
String product=request.getParameter("product"); 
String state=request.getParameter("state"); 
String city=request.getParameter("city"); 
String status=request.getParameter("status"); 
System.out.println(product+status);
 if(product.equals("mobile_phone")){
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/homecredit","root","ankit");
	 PreparedStatement ps=con.prepareStatement("insert into mobile values('"+name+"','"+email+"','"+phoneno+"','"+product+"','"+state+"','"+city+"','"+status+"')");
		 
	 	/*  
	 	 ps.setString(1, name);
		 ps.setString(2, email);
		 ps.setString(4, phoneno);
		 ps.setString(4, product);
		 ps.setString(5, state);
		 ps.setString(6, city);
		 ps.setString(7, status);
		*/
		
		 
		int i=ps.executeUpdate();
	 if(i>0)
	 {
		 out.println("Registration successfully"); 
		 response.sendRedirect("/home/applynow.jsp");
		 
	 }
	 else
	 {
		 out.println("DBError");
	 }
	 
 } 


else if(product.equals("laptop")){
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/homecredit","root","ankit");
	 PreparedStatement ps=con.prepareStatement("insert into laptop values('"+name+"','"+email+"','"+phoneno+"','"+product+"','"+state+"','"+city+"','"+status+"')");

	 int i=ps.executeUpdate();
	 if(i>0)
	 {
		 out.println("Registration successfully"); 
		 response.sendRedirect("/home/applynow.jsp");
		 
	 }
	 else
	 {
		 out.println("DBError");
	 }
	 
 } 
 
 
else if(product.equals("home_appliances")){
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/homecredit","root","ankit");
	 PreparedStatement ps=con.prepareStatement("insert into home_appliances values('"+name+"','"+email+"','"+phoneno+"','"+product+"','"+state+"','"+city+"','"+status+"')");

	 int i=ps.executeUpdate();
	 if(i>0)
	 {
		 out.println("Registration successfully"); 
		 response.sendRedirect("/home/applynow.jsp");
		 
	 }
	 else
	 {
		 out.println("DBError");
	 }
	 
} 
 
 
 
else if(product.equals("two_wheeler")){
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/homecredit","root","ankit");
	 PreparedStatement ps=con.prepareStatement("insert into two_wheel values('"+name+"','"+email+"','"+phoneno+"','"+product+"','"+state+"','"+city+"','"+status+"')");

	 int i=ps.executeUpdate();
	 if(i>0)
	 {
		 out.println("Registration successfully"); 
		 response.sendRedirect("/home/applynow.jsp");
		 
	 }
	 else
	 {
		 out.println("DBError");
	 }
	 
} 
 
%>

</body>
</html>