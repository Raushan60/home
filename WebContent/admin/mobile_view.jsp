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
                                <h4 class="title">Mobile Customer Statements</h4>
                                <p class="category">
                                <br></br>
                                <a href="mobile_view.jsp">mobile &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="laptop_view.jsp">laptop &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="home_appliances_view.jsp">Home Appliances &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="two_wheel_view.jsp">Two Wheeler
                                
			
		 						</p>
                            </div>
                            <br></br>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th>Name</th>
                                    	
                                    	<th>Email</th>
                                    	<th>phoneno</th>
                                    	<th>state</th>
                                    	<th>City</th>
                                    	<th>Feedback from Customer</th>
                                    	<th>Reply from our<br> customer representative</th>
                                    </thead>
                                    <tbody>
                                    <%@ page import="java.sql.*"%>
			           			    <%@ page import="javax.sql.*"%>
							
                                 <%
                                 Class.forName("com.mysql.jdbc.Driver");
                                 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root", "ankit");
                                 PreparedStatement ps1=conn.prepareStatement("select mobile.name,mobile.email,mobile.phoneno,mobile.state,mobile.city,mobile.feedback,mobile_reply.reply from mobile,mobile_reply where mobile_reply.number=mobile.phoneno");
                                 ResultSet rs2=ps1.executeQuery();
                                 while(rs2.next())
                                 {
                               	%>
                                 <tr>
                                 
                                 <td><%=rs2.getString(1)%></td>
                                 <td><%=rs2.getString(2)%></td>
                                 <td><%=rs2.getString(3)%></td>
                                 <td><%=rs2.getString(4)%></td>  
                                 <td><%=rs2.getString(5)%></td>
                                 <td><%=rs2.getString(6)%></td>
                                 <td><%=rs2.getString(7)%></td>
                                 <td><a href="delm.jsp">Delete</a></td>
                                
                                </tr>
                                
                                 <% } %>
                                           
                                    </tbody>
                                </table>

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