<%-- 
    Document   : booking
    Created on : Mar 6, 2021, 5:28:31 PM
    Author     : Sanskrati Varshney
--%>

<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
<html>
    <head>
	<title>Event Booking</title>
    </head>
    <body>
      	<% 
          String id=request.getParameter("id");
          session.setAttribute("id",id);
         String name=request.getParameter("name");
         
         String no=request.getParameter("number");
         int n=Integer.parseInt(no);
         
         String email=request.getParameter("email");
         String date=request.getParameter("date");
	String pref=request.getParameter("preference");
        String place=request.getParameter("venue");
             
        String ftype=request.getParameter("ftype");
              
        String btype=request.getParameter("btype");
        String ltype=request.getParameter("ltype");
        String stype=request.getParameter("stype");
        String dtype=request.getParameter("dtype");
        String light=request.getParameter("lighting");
        String equip="";
        String e[]=request.getParameterValues("equip");
        for(int i=0; i<e.length;i++)
        {
            equip+=e[i]+"";
        }
        
        String flower=request.getParameter("flower");
        String seat=request.getParameter("seating");
        String status="Pending";
        
	Connection con=null;
	Statement st=null;
       	try
	{
	   con=databaseconnection.getconnection(); 
	    st=con.createStatement();
            String sql="insert into event values('"+id+"','"+name+"','"+no+"','"+email+"','"+date+"','"+pref+"','"+place+"','"+ftype+"','"+btype+"','"+ltype+"','"+stype+"','"+dtype+"','"+equip+"','"+light+"','"+flower+"','"+seat+"')";
                 int a=st.executeUpdate(sql);
                 int b=st.executeUpdate("insert into status values('"+id+"','"+status+"')");
                 if(a>0)
                 {
                 %>
                 <jsp:include page= "booking1.jsp"/>
        <%
                       response.sendRedirect("reciept.jsp");
                 }
                 else
                 {
                      out.println("<p><center><h1>Caught an Error </h1></center>");
                      out.println("<p><center><h1><a href='customer1.jsp'>Try Again!!</a></h1></center>");
                 }
               //  conn.close();
                // stmt.close();
        }
	catch(SQLException e1)
	{
            out.println(e1);
            //out.println("<p><center><h1><a href='customer1.jsp'>Go Back!!</a></h1></center>");
	 }

	
            %>
    </body> 	
</html>