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
    <title>Dashboard | Customer | Book an event</title>
    <script type="text/javascript">

function myFunction()
{
    alert("Your Event Booked Successfully. Now Please Complete Your Payment.")
}

</script>
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
                                <a href="customer_dash.jsp">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                        </li>
                         <li>
                            <a href="customer1.jsp">
                                <i class="fas fa-check-square"></i>Book An Event</a>
                        </li>
                   		<li>
                            <a href="customer2.jsp">
                                <i class="fas fa-calendar-alt"></i>Booking History</a>
                        </li>
                        <li>
                            <a href="customer3.jsp">
                                <i class="far fa-calendar-check"></i>Booking Status</a>
                        </li>
                        <li>
                            <a href="customer4.jsp">
                                <i class="fas fa-map-marker-alt"></i>View Venue</a>
                        </li>
                        <li>
                            <a href="customer5.jsp">
                                <i class="fas fa-comments"></i>Give Feedback</a>
                        </li>
                   </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="Home.html">
                   <span style="font-family:'Josefin Sans', sans-serif;font-size:35px;font-weight:600;color:#ff0a80;letter-spacing:1px;">Events</span>
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li>
                                <a href="customer_dash.jsp">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                        </li>
                         <li>
                            <a href="customer1.jsp">
                                <i class="fas fa-check-square"></i>Book An Event</a>
                        </li>
                   		<li>
                            <a href="customer2.jsp">
                                <i class="fas fa-calendar-alt"></i>Booking History</a>
                        </li>
                        <li>
                            <a href="customer3.jsp">
                                <i class="far fa-calendar-check"></i>Booking Status</a>
                        </li>
                        <li>
                            <a href="customer4.jsp">
                                <i class="fas fa-map-marker-alt"></i>View Venue</a>
                        </li>
                        <li>
                            <a href="customer5.jsp">
                                <i class="fas fa-comments"></i>Give Feedback</a>
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
                                            <a class="js-acc-btn" href="customer_account.jsp"><%= session.getAttribute("9")%></a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                
                                                    <h5 class="name">
                                                        <a href="customer_account.jsp">
                                                            <%= session.getAttribute("9")%>
                                                        </a>
                                                    </h5>
                                                    <span class="email"> <%= session.getAttribute("7")%> </span>
                                                
                                            </div>
                                            <div class="account-dropdown__body">
                                                <div class="account-dropdown__item">
                                                    <a href="customer_account.jsp">
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
							<h1>Book an Event</h1>
                                                    </div>
                                                    <form action="booking.jsp" onsubmit="myFunction()">
                                                        
							<div class="row">
                                                            <div class="col-sm-4">
								<div class="form-group">
                                                                    <span class="form-label">Booking Id</span>
                                                                    <% 
                                                            Connection con = null;
                                                            PreparedStatement pst=null;
                                                            ResultSet rs=null;
                                                            try
                                                            {
                                                                con=databaseconnection.getconnection(); 
                                                                String sl="";
                                                                pst=con.prepareStatement("select bid from event");
                                                                rs=pst.executeQuery();
                                                                while(rs.next())
                                                                {
                                                                        sl=rs.getString(1);
                                                                }
                                                                if(sl==null|| sl=="")
                                                                {
                                                                    sl="0";
                                                                }
                                                                int sl2= Integer.parseInt(sl);
                                                                String sl3= String.valueOf(sl2+1);
                                                                session.setAttribute("id",sl3);
                                                            }
                                                            catch(SQLException e1)
                                                            {
                                                                System.out.println(e1);
                                                            }
                                                    %>
                                                    <input class="form-control" type="text" value="<%=session.getAttribute("id")%>" readonly="" name="id">
								</div>
                                                            </div>
                                                            <div class="col-sm-8">
								<div class="form-group">
                                                                    <span class="form-label">Customer Name</span>
                                                                    <input class="form-control" name="name" type="text" placeholder="Enter your name" value="<%= session.getAttribute("9")%>">
								</div>
                                                            </div>
							</div>
                                                        <div class="row">
                                                            <div class="col-sm-4">
								<div class="form-group">
                                                                    <span class="form-label">Number of Guests</span>
                                                                    <input class="form-control" name="number" type="number" placeholder="Number of Guests">
								</div>
                                                            </div>
                                                            <div class="col-sm-8">
								<div class="form-group">
								<span class="form-label">Customer Email</span>
                                                                <input class="form-control" name="email" type="email" placeholder="Enter your email" value="<%= session.getAttribute("7")%>">
                                                                </div>
                                                            </div>
							</div>
                                                        
							<div class="row">
                                                            <div class="col-sm-4">
								<div class="form-group">
                                                                    <span class="form-label">Event Date</span>
                                                                    <input class="form-control" name="date" type="date" required>
								</div>
                                                            </div>
                                                            <div class="col-sm-4">
								<div class="form-group">    
                                                                    <span class="form-label">Event Type</span>
                                                                    <select class="form-control" name="preference">
                                                                        <option value="">Select Event Type</option>
                                                                        <option value="Wedding">Wedding</option>
                                                                        <option value="Engagement">Engagement</option>
                                                                        <option value="Birthday">Birthday Party</option>
                                                                        <option value="Anniversary">Anniversary Party</option>
                                                                        <option value="Farewell">Farewell Party</option>
                                                                        <option value="College Event">College Events</option>
                                                                        <option value="Business Meeting">Business Meetings</option>
                                                                        <option value="Other Event" >Other Event</option>
                                                                    </select>
                                                                    <span class="select-arrow"></span>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-4">
								<div class="form-group">    
                                                                    <span class="form-label">Event Venue</span>
                                                                    <select class="form-control" name="venue">
                                                                        <option value="">Select Event Venue</option>
                                                                        <%
                                                Connection conn=null;
                                                PreparedStatement ps = null;
                                                ResultSet rst = null;
                                                try 
                                                {
                                                    conn=databaseconnection.getconnection();
                                                    ps=conn.prepareStatement("select name from VENUE");
                                                    rs = ps.executeQuery();
                                                    int i=0;
                                                    while (rs.next())  
                                                    { 
                                                         String n=rs.getString(1);
                                                  %>    
                                                                        
                                                                        <option value="<%=n%>"><%=n%></option>
                                                                                                 <%
                                            i++;
                                                    }
                                                  conn.close();
                                                }
                                                catch(Exception e2)
                                                {
                                                        out.println(e2.getMessage());
                                                }
                                       %>      
                                                                    </select>
                                               
                                                                    <span class="select-arrow"></span>
                                                                </div>
                                                            </div>
							</div>
                                                        <div class="row">
                                                            <div class="col-sm-4">
								<div class="form-group">
                                                                    <span class="form-label">Food Type</span>
                                                                    <select class="form-control" name="ftype">
                                                                        <option value="">Select Food Type </option>
                                                                        <option value="Vegeterian">Only Veg</option>
                                                                        <option value="Vegeterian & Non Vegeterian">Veg and Non Veg</option>
                                                                        <option value="Non vegeterian">Only Non Veg</option>
                                                                    </select>
                                                                    <span class="select-arrow"></span>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-4">
								<div class="form-group">
                                                                    <span class="form-label">Breakfast Type</span>
                                                                    <select class="form-control" name="btype">
                                                                        <option value="">Select Breakfast Type </option>
                                                                        <option value="No Breakfast">None</option>
                                                                	<option value="Normal">Normal</option>
									<option value="Royal">Royal</option>
                                                                        <option value="Deluxe">Deluxe</option>
                                                                    </select>
                                                                    <span class="select-arrow"></span>
                                                                    </div>
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <div class="form-group">
                                                                    <span class="form-label">Lunch type</span>
                                                                    <select class="form-control" name="ltype">
                                                                        <option value="">Select Lunch Type </option>
                                                                        <option value="No Lunch">None </option>
                                                                        <option value="Normal">Normal</option>
                                                                        <option value="Royal">Royal</option>
                                                                        <option value="Deluxe">Deluxe</option>
                                                                    </select>
                                                                    <span class="select-arrow"></span>
								</div>
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="row">
                                                            <div class="col-sm-4">
                                                                <div class="form-group">
                                                                    <span class="form-label">Snacks Type</span>
                                                                    <select class="form-control" name="stype">
                                                                        <option value="">Select Snacks Type </option>
                                                                        <option value="No Snacks">None</option>
                                                                	<option value="Normal">Normal</option>
									<option value="Royal">Royal</option>
                                                                        <option value="Deluxe">Deluxe</option>
                                                                    </select>
                                                                    <span class="select-arrow"></span>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <div class="form-group">
                                                                    <span class="form-label">Dinner Type</span>
                                                                    <select class="form-control" id="dinner" name="dtype">
                                                                        <option value="">Dinner Type </option>
                                                                        <option value="No Dinner">None</option>
                                                                	<option value="Normal">Normal</option>
									<option value="Royal">Royal</option>
                                                                        <option value="Deluxe">Deluxe</option>
                                                                    </select>
                                                                    <span class="select-arrow"></span>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-4">
								<div class="form-group">
                                                                    <span class="form-label">Lighting</span>
                                                                    <select class="form-control" name="lighting">
                                                                        <option value="">Select Lighting Type </option>
                                                                        <option value="No Lighting">None</option>
                                                                	<option value="Normal">Normal</option>
									<option value="Royal">Royal</option>
                                                                        <option value="Deluxe">Deluxe</option>
                                                                    </select>
                                                                    <span class="select-arrow"></span>
                                                                    </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    <span class="form-label">Other Equipments</span>
                                                                    <label class="con">DJ<input type="checkbox" name="equip" value=" DJ ">
                                                                        <span class="checkmark"></span>
                                                                    </label>

                                                                    <label class="con">Mike<input type="checkbox" name="equip" value=" Mike ">
                                                                        <span class="checkmark"></span>
                                                                    </label>

                                                                    <label class="con">Revolving Stage<input type="checkbox" name="equip" value=" Revolving Stage ">
                                                                        <span class="checkmark"></span>
                                                                    </label>

                                                                    <label class="con">Stage Host<input type="checkbox" name="equip" value=" Host ">
                                                                        <span class="checkmark"></span>
                                                                    </label>
                                                                    <label class="con">Drone<input type="checkbox" name="equip" value=" Drone ">
                                                                        <span class="checkmark"></span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                            <div class="row">
                                                                <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <span class="form-label">Flower Decoration</span>
                                                                    <select class="form-control" name="flower">
                                                                        <option value="">Select Flower Decoration Type </option>
                                                                        <option value="No Flowers">None</option>
									<option value="Normal">Normal</option>
                                                                        <option value="Royal">Royal</option>
                                                                        <option value="Deluxe">Deluxe</option>
                                                                    </select>
                                                                    <span class="select-arrow"></span>
								</div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <span class="form-label">Seating</span>
                                                                    <select class="form-control" name="seating">
                                                                        <option value="">Select Seating Type </option>
                                                                	<option value="Chairs">Chairs</option>
									<option value="Chairs & Sofa">Chairs & Sofa</option>
                                                                        <option value="Sofa">Sofa</option>
                                                                    </select>
                                                                    <span class="select-arrow"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-btn">
                                                            <button class="submit-btn">Book Now</button>
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
                                <p>Copyright © 2018 Colorlib. All rights reserved. </p>
                            </div>
                        </div>
                    </div>
             <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
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
