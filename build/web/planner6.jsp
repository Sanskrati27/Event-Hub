<%-- 
    Document   : planner6
    Created on : Mar 11, 2021, 4:32:37 PM
    Author     : Sanskrati Varshney
--%>

<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*,venue.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Dashboard | Planner | Add Venue</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/booking.css" rel="stylesheet" media="all">
    <link href="css/theme.css" rel="stylesheet" media="all">
<script>
                                                function myFunction() {
                                                    alert("Booking Status Updated Succesfully");
                                                    }
                                            </script>
</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <span style="font-family:'Josefin Sans', sans-serif;font-size:35px;font-weight:600;color:#ff0a80;letter-spacing:1px;">Events</span>
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                         <li>
                            <a href="planner_dash.jsp">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                         </li>    
                        <li>
                        <a href="planner1.jsp">
                                <i class="fas fa-users"></i>Customers</a>
                        </li>
                        <li>
                            <a href="planner2.jsp">
                                <i class="fas fa-plus-square"></i>Add Venue</a>
                        </li>
                		<li>
                            <a href="planner3.jsp">
                                <i class="fas fa-map-marker-alt"></i>View Venue</a>
                        </li>
                        <li>
                            <a href="planner4.jsp">
                                <i class="fas fa-calendar-alt"></i>View Bookings</a>
                        </li>
                        <li>
                            <a href="planner5.jsp">
                                <i class="fas fa-edit"></i>View Feedback</a>
                        </li>
                   </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <span style="font-family:'Josefin Sans', sans-serif;font-size:35px;font-weight:600;color:#ff0a80;letter-spacing:1px;">Events</span>
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                       <li>
                            <a href="planner_dash.jsp">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                         </li>    
                        <li>
                        <a href="planner1.jsp">
                                <i class="fas fa-users"></i>Customers</a>
                        </li>
                        <li>
                            <a href="planner2.jsp">
                                <i class="fas fa-plus-square"></i>Add Venue</a>
                        </li>
                		<li>
                            <a href="planner3.jsp">
                                <i class="fas fa-map-marker-alt"></i>View Venue</a>
                        </li>
                        <li>
                            <a href="planner4.jsp">
                                <i class="fas fa-calendar-alt"></i>View Bookings</a>
                        </li>
                        <li>
                            <a href="planner5.jsp">
                                <i class="fas fa-edit"></i>View Feedback</a>
                        </li>
                     </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                                <input class="au-input au-input--xl" type="text" name="search" placeholder="Search..." />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="content">
                                            <a class="js-acc-btn" href="planner_account.jsp"><%= session.getAttribute("6")%></a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                
                                                    <h5 class="name">
                                                        <a href="planner_account.jsp">
                                                            <%= session.getAttribute("6")%>
                                                        </a>
                                                    </h5>
                                                    <span class="email"> <%= session.getAttribute("4")%> </span>
                                                
                                            </div>
                                            <div class="account-dropdown__body">
                                                <div class="account-dropdown__item">
                                                    <a href="planner_account.jsp">
                                                        <i class="zmdi zmdi-account"></i>Account</a>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="Home.html">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                           </div>
                        </div>
                    </div>
            </header>
            <!-- HEADER DESKTOP-->

           <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        
                         <div class="row">
                            <div class="col-lg-12">
                                <div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<div class="form-header">
							<h1>Change Booking status</h1>
						</div>
                                            <form action="status.jsp" onsubmit="myFunction()">
                                                <%
                                                    Connection conn = databaseconnection.getconnection();
                                                    ResultSet rs=null;
                                                        try
                                                        {
                                                            String bid=request.getParameter("id"); 
                                                %>
						<div class="form-group">
                                                    <span class="form-label">Booking ID</span>
                                                    <input class="form-control" type="number" name="id" value="<%=bid%>" readonly="">
						</div>
                                                <div class="form-group">
                                                    <%
                                                        
                                                            Statement st=conn.createStatement();
                                                            rs=st.executeQuery("SELECT * FROM status WHERE bid='"+bid+"'");
                                                            int i=0;
                                                            while(rs.next())
                                                            {
                                                    %>

                                                    <span class="form-label">Booking Status</span>
                                                    <input class="form-control" type="text" name="status" value="<%=rs.getString(2)%>" readonly="">
                                                    <%
                                                                i++;
                                                            }
                                                        }
                                                        catch(Exception e)
                                                        {
                                                            out.println(e);
                                                        }
                                                    %>
						</div>
						<div class="form-group">
                                                    <span class="form-label">Change Status</span>
                                                    <select class="form-control" name="change">
                                                        <option value="">Change Booking Status</option>
                                                        <option value="Seen">Seen</option>
                                                        <option value="Approved">Approved</option>
							<option value="Cancel">Cancel</option>
                                                        <option value="Completed">Completed</option>
                                                    </select>
                                                    <span class="select-arrow"></span>
						</div>
						<div class="form-btn">
                                                    <button class="submit-btn">Update</button>
						</div>
                                            </form>
					</div>
				</div>
			</div>
		</div>
	</div>
                            </div>
                         </div>   
                         <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>� 2020 Events. All rights reserved.</p>
                                </div>
                            </div>
                        </div>
                
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>
       </div>
    </div>
        </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>
<!-- end document-->
