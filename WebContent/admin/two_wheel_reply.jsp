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

String reply=request.getParameter("reply");
String number=request.getParameter("number");
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","ankit");
	 PreparedStatement ps=con.prepareStatement("insert into two_wheel_reply values('"+reply+"','"+number+"')");
		 
	 	/*  
	 	 ps.setString(1, name);
		 ps.setString(2, email);
		 ps.setString(4, phoneno);
		 ps.setString(4, product);
		 ps.setString(5, state);
		 ps.setString(6, city);
		 ps.setString(7, feedback);
		*/
		
		 
		int i=ps.executeUpdate();
	 if(i>0)
	 {
		 out.println("Thanks"); 
		 response.sendRedirect("/home/admin/two_wheel1.jsp");
		 
	 }
	 else
	 {
		 out.println("DBError");
	 }
	 
  
%>

</body>
</html>