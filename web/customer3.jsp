<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
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
    <title>Dashboard | Customer | Booking Status</title>

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
                                <h2 class="title-1 m-b-25">Booking Status</h2>
                                <div class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>booking id</th>
                                                 <th>guests</th>
                                                 <th>date</th>
                                                <th>event type</th>
                                                <th>place</th>
                                                <th>amount</th>
                                                <th>status</th>
                                                </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                Connection con=null;
                                                Statement stmt = null;
                                                ResultSet rs = null;
                                                String email=null, name=null, type=null;
                                                try 
                                                {
                                                    con=databaseconnection.getconnection();
                                                    stmt = con.createStatement();
                                                    rs = stmt.executeQuery("SELECT * FROM EVENT where email='"+session.getAttribute("7")+"'");
                                                    int i=0;
                                                    while (rs.next())  
                                                    {                                                       
                                            %>    
                                            
                                            <tr class="tr-shadow">
                                                <td><%=rs.getString(1)%></td>
                                                <td><%=rs.getString(3)%></td>
                                                <td class="desc"><%=rs.getString(5)%></td>
                                               <td class="desc"><%=rs.getString(6)%></td>
                                               <td class="desc"><%=rs.getString(7)%></td>
                                               <td>
                                                    <%
                                                    try
                                                    {
                                                        Connection conn=databaseconnection.getconnection();
                                                        Statement st=conn.createStatement();
                                                        ResultSet rst=st.executeQuery("SELECT * FROM amount where bid='"+rs.getString(1)+"'");
                                                        int j=0;
                                                        while(rst.next())
                                                        {
                                                %>
                                                Rs. <%=rst.getString(2)%>
                                                <%
                                                             j++;
                                                        }
                                                         conn.close();
                                                    }
                                                     catch(Exception e)
                                                    {
                                                        out.println(e);
                                                    }
                                                 %> 
                                                </td>
                                                <td>
                                                    <%
                                                    try
                                                    {
                                                        Connection conn=databaseconnection.getconnection();
                                                        Statement st=conn.createStatement();
                                                        ResultSet rst=st.executeQuery("SELECT * FROM status where bid='"+rs.getString(1)+"'");
                                                        int j=0;
                                                        while(rst.next())
                                                        {
                                                %>
                                                    <span class="status--process"><%=rst.getString(2)%></span>
                                                    <%
                                                             j++;
                                                        }
                                                         conn.close();
                                                    }
                                                     catch(Exception e)
                                                    {
                                                        out.println(e);
                                                    }
                                                 %> 
                                                </td>
                                            </tr>
                                             <tr class="spacer"></tr>
                                            <%
                                            i++;
                                                    }
                                                  con.close();
                                                }
                                                catch(Exception e2)
                                                {
                                                        out.println(e2.getMessage());
                                                }
                                       %>   
                                         </tbody>
                                   </table>
                                </div>
                                <!-- END DATA TABLE -->
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
                    </div>
                </div>
            </div>
            <!-- END PAGE CONTAINER-->
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