<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Light Bootstrap Dashboard by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


    	<jsp:include page="sidebar.jsp" />

    </div>

    <div class="main-panel">
		<jsp:include page="header.jsp" />

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Search category</h4>
                                <p class="category">
                                
                                
                                <%@ page language="java" %>
				<%@ page import="java.io.*" %>
				<%@ page import ="java.sql.*" %>
				<%@ page import ="javax.sql.*" %>
				<%
				
				String product="";
				//String iprice="";
				//String ifile="";
				product=request.getParameter("product");
				//iprice=request.getParameter("iprice");
				//out.println(iname);
				
				String sqlqueary="select * from mobile where product='" + product + "'  ";
				if(product!=null && !(product.equals(""))){
				sqlqueary+=" and procuct='"+product+"'";
				}
				//if(iprice!=null && !(iprice.equals(""))){
				//sqlqueary+=" and iprice='"+iprice+"'";
				//}
			
				try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homecredit","root","ankit");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(sqlqueary);
				if(rs==null){
				out.println(rs);
				}
				
				if(rs.next()){//now on 1st row  
		              
					 
					
				
				%>

				<html>
				<head>
				</head>
				<body>
				<table border="2">
				 <tr>
				    <th>name</th>
				    <th>email</th>
				    <th>phoneno</th>
				    <th>product</th>
				    <th>state</th>
				    <th>city</th>
				    
				  </tr>
				  <tr>
				    <td><%=rs.getString("name") %></td>
					<td><%=rs.getString("email") %></td>
				  	<td><%=rs.getBlob("phoneno") %></td>
				  	  <td><%=rs.getString("product") %></td>
					<td><%=rs.getString("state") %></td>
				  	<td><%=rs.getBlob("city") %></td>
				  	
				  </tr>
				  
				</table>
				
				</body>
				</html>
				 <%
				
				}
				}catch (SQLException s){
					%>
					Try Again ! !
					<%
				out.println("Sorry try Again");
				s.printStackTrace();
				}
				%>
            	</p>
                </div>
                </div>
                </div>
                </div>
	            </div>
    		    </div>

        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                </p>
            </div>
        </footer>


    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>


</html>