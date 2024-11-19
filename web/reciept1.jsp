<%-- 
    Document   : reciept
    Created on : Mar 3, 2021, 6:18:02 PM
    Author     : Sanskrati Varshney
--%>
<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com    @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>Bill Invoice</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    	body{
    margin-top:20px;
    color: #484b51;
}
.text-secondary-d1 {
    color: #728299!important;
}
.page-header {
    margin: 0 0 1rem;
    padding-bottom: 1rem;
    padding-top: .5rem;
    border-bottom: 1px dotted #e2e2e2;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -ms-flex-align: center;
    align-items: center;
}
.page-title {
    padding: 0;
    margin: 0;
    font-size: 1.75rem;
    font-weight: 300;
}
.brc-default-l1 {
    border-color: #dce9f0!important;
}

.ml-n1, .mx-n1 {
    margin-left: -.25rem!important;
}
.mr-n1, .mx-n1 {
    margin-right: -.25rem!important;
}
.mb-4, .my-4 {
    margin-bottom: 1.5rem!important;
}

hr {
    margin-top: 1rem;
    margin-bottom: 1rem;
    border: 0;
    border-top: 1px solid rgba(0,0,0,.1);
}

.text-grey-m2 {
    color: #888a8d!important;
}

.text-success-m2 {
    color: #86bd68!important;
}

.font-bolder, .text-600 {
    font-weight: 600!important;
}

.text-110 {
    font-size: 110%!important;
}
.text-blue {
    color: #478fcc!important;
}
.pb-25, .py-25 {
    padding-bottom: .75rem!important;
}

.pt-25, .py-25 {
    padding-top: .75rem!important;
}
.bgc-default-tp1 {
    background-color: rgba(121,169,197,.92)!important;
}
.bgc-default-l4, .bgc-h-default-l4:hover {
    background-color: #f3f8fa!important;
}
.page-header .page-tools {
    -ms-flex-item-align: end;
    align-self: flex-end;
}

.btn-light {
    color: #757984;
    background-color: #f5f6f9;
    border-color: #dddfe4;
}
.w-2 {
    width: 1rem;
}

.text-120 {
    font-size: 120%!important;
}
.text-primary-m1 {
    color: #4087d4!important;
}

.text-danger-m1 {
    color: #dd4949!important;
}
.text-blue-m2 {
    color: #68a3d5!important;
}
.text-150 {
    font-size: 150%!important;
}
.text-60 {
    font-size: 60%!important;
}
.text-grey-m1 {
    color: #7b7d81!important;
}
.align-bottom {
    vertical-align: bottom!important;
}
   </style>
</head>
<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />

<div class="page-content container">
    <div class="page-header text-blue-d2">
        <h1 class="page-title text-secondary-d1">
            Invoice
            <small class="page-info">
                <i class="fa fa-angle-double-right text-80"></i>
               Booking ID: <%=session.getAttribute("id")%>
            </small>
        </h1>
    </div>

    <div class="container px-0">
        <div class="row mt-4">
            <div class="col-12 col-lg-10 offset-lg-1">
                <div class="row">
                    <div class="col-12">
                        <div class="text-center text-150">
                            <i class="fa fa-book fa-2x text-success-m2 mr-1"></i>
                            <span style="font-family:'Josefin Sans', sans-serif;font-size:35px;font-weight:600;color:#ff0a80;letter-spacing:1px;">Events</span>
                        </div>
                    </div>
                </div>
                <!-- .row -->

                <hr class="row brc-default-l1 mx-n1 mb-4" />

                <div class="row">
                    <div class="col-sm-6">
                        <div>
                            <span class="text-sm text-grey-m2 align-middle">To:</span>
                            <span class="text-600 text-110 text-blue align-middle"><%= session.getAttribute("9")%></span>
                        </div>
                        <div class="text-grey-m2">
                            <div class="my-1"><i class="fa fa-phone fa-flip-horizontal text-secondary"></i> <b class="text-600">+91 <%= session.getAttribute("mobile")%></b></div>
                        </div>
                    </div>
                    <!-- /.col -->
                    <%
                        java.util.Calendar datetime=java.util.Calendar.getInstance();
                        String currentdate=Integer.toString(datetime.get(java.util.Calendar.YEAR))+"/"+Integer.toString(((datetime.get(java.util.Calendar.MONTH))+1))+"/"+Integer.toString(datetime.get(java.util.Calendar.DATE));
                    %>
                    <div class="text-95 col-sm-6 align-self-start d-sm-flex justify-content-end">
                        <hr class="d-sm-none" />
                        <div class="text-grey-m2">
                            <div class="mt-1 mb-2 text-secondary-m1 text-600 text-125">
                                Invoice
                            </div>

                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">Booking ID:</span> <%=session.getAttribute("id")%></div>

                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">Issue Date:</span> <%=currentdate%></div>

                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">Status:</span> <span class="badge badge-warning badge-pill px-25">Paid</span></div>
                        </div>
                    </div>
                    <!-- /.col -->
                </div>

                <div class="mt-4">
                    <div class="row text-600 text-white bgc-default-tp1 py-25">
                        <div class="d-none d-sm-block col-1">Serial No.</div>
                        <div class="col-9 col-sm-5">Booked Things</div>
                        <div class="col-2">Description</div>
                    </div>
                     <%
                                                Connection con=null;
                                                Statement stmt = null;
                                                ResultSet rs = null;
                                                
                                                try 
                                                {
                                                    con=databaseconnection.getconnection();
                                                    stmt = con.createStatement();
                                                    rs = stmt.executeQuery("SELECT * FROM EVENT where bid='"+session.getAttribute("id")+"'");
                                                    int i=0;
                                                    String n=null, d=null, t=null, v=null, ftype=null, btype=null, ltype=null, stype=null, dtype=null;
                                                    String e=null, l=null, f=null, s=null;
                                                    while (rs.next())  
                                                    {       
                                                        n=rs.getString(3);
                                                        d=rs.getString(5);
                                                        t=rs.getString(6);
                                                        v=rs.getString(7);
                                                        ftype=rs.getString(8);
                                                        btype=rs.getString(9);
                                                        ltype=rs.getString(10);
                                                        stype=rs.getString(11);
                                                        dtype=rs.getString(12);
                                                        e=rs.getString(13);
                                                        l=rs.getString(14);
                                                        f=rs.getString(15);
                                                        s=rs.getString(16);                                                        
                                                         i++;
                                                    }                                                
                                            %>   
                    <div class="text-95 text-secondary-d3">
                        <div class="row mb-2 mb-sm-0 py-25">
                            <div class="d-none d-sm-block col-1">1</div>
                            <div class="col-9 col-sm-5">Number of Guests</div>
                            <div class="col-2 text-secondary-d2"><%=n%></div>
                        </div>

                        <div class="row mb-2 mb-sm-0 py-25 bgc-default-l4">
                            <div class="d-none d-sm-block col-1">2</div>
                            <div class="col-9 col-sm-5">Event Date</div>
                            <div class="col-2 text-secondary-d2"><%=d%></div>
                        </div>

                        <div class="row mb-2 mb-sm-0 py-25">
                            <div class="d-none d-sm-block col-1">3</div>
                            <div class="col-9 col-sm-5">Event Type</div>
                            <div class="col-2 text-secondary-d2"><%=t%></div>
                        </div>

                        <div class="row mb-2 mb-sm-0 py-25 bgc-default-l4">
                            <div class="d-none d-sm-block col-1">4</div>
                            <div class="col-9 col-sm-5">Venue</div>
                            <div class="col-2 text-secondary-d2"><%=v%></div>
                        </div>
                        <div class="row mb-2 mb-sm-0 py-25">
                            <div class="d-none d-sm-block col-1">5</div>
                            <div class="col-9 col-sm-5">Food Type</div>
                            <div class="col-2 text-secondary-d2"><%=ftype%></div>
                        </div>
                        <div class="row mb-2 mb-sm-0 py-25 bgc-default-l4">
                            <div class="d-none d-sm-block col-1">6</div>
                            <div class="col-9 col-sm-5">BreakFast Type</div>
                            <div class="col-2 text-secondary-d2"><%=btype%></div>
                        </div>
                        <div class="row mb-2 mb-sm-0 py-25">
                            <div class="d-none d-sm-block col-1">7</div>
                            <div class="col-9 col-sm-5">Lunch Type</div>
                            <div class="col-2 text-secondary-d2"><%=ltype%></div>
                        </div>
                        <div class="row mb-2 mb-sm-0 py-25 bgc-default-l4">
                            <div class="d-none d-sm-block col-1">8</div>
                            <div class="col-9 col-sm-5">Snacks Type</div>
                            <div class="col-2 text-secondary-d2"><%=stype%></div>
                        </div>
                        <div class="row mb-2 mb-sm-0 py-25">
                            <div class="d-none d-sm-block col-1">9</div>
                            <div class="col-9 col-sm-5">Dinner Type</div>
                            <div class="col-2 text-secondary-d2"><%=dtype%></div>
                        </div>
                        <div class="row mb-2 mb-sm-0 py-25 bgc-default-l4">
                            <div class="d-none d-sm-block col-1">10</div>
                            <div class="col-9 col-sm-5">Other Equipments</div>
                            <div class="col-2 text-secondary-d2"><%=e%></div>
                        </div>
                        <div class="row mb-2 mb-sm-0 py-25">
                            <div class="d-none d-sm-block col-1">11</div>
                            <div class="col-9 col-sm-5">Lighting</div>
                            <div class="col-2 text-secondary-d2"><%=l%></div>
                        </div>
                        <div class="row mb-2 mb-sm-0 py-25 bgc-default-l4">
                            <div class="d-none d-sm-block col-1">12</div>
                            <div class="col-9 col-sm-5">Flower Decoration</div>
                            <div class="col-2 text-secondary-d2"><%=f%></div>
                        </div>
                        
                        <div class="row mb-2 mb-sm-0 py-25">
                            <div class="d-none d-sm-block col-1">13</div>
                            <div class="col-9 col-sm-5">Seating</div>
                            <div class="col-2 text-secondary-d2"><%=s%></div>
                        </div>
                        <%
                                           
                                                  con.close();
                                                }
                                                catch(Exception e2)
                                                {
                                                        out.println(e2.getMessage());
                                                }
                                       %>      
                    </div>
<div class="row border-b-2 brc-default-l2"></div>

                    <div class="row mt-3">
                        <div class="col-12 col-sm-7 text-grey-d2 text-95 mt-2 mt-lg-0">
                            This is approximate cost of this event...
                        </div>

                        <div class="col-12 col-sm-5 text-grey text-90 order-first order-sm-last">
                            <div class="row my-2 align-items-center bgc-primary-l3 p-2">
                                <div class="col-7 text-right">
                                    Total Amount
                                </div>
                                <div class="col-5">
                                    <span class="text-150 text-success-d3 opacity-2">Rs. <%=session.getAttribute("p")%></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <hr />

                    <div>
                        <span class="text-secondary-d1 text-105">Thank you for your business</span>
                        <a href="customer_dash.html" class="btn btn-info btn-bold px-4 float-right mt-3 mt-lg-0">Go Back</a>
                        <br><br><br><br>
                    </div>
                </div>
        </div>
    </div>
</div>
</div>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>