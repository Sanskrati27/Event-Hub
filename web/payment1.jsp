<%-- 
    Document   : payment1
    Created on : Mar 11, 2021, 1:46:11 PM
    Author     : Sanskrati Varshney
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
<html>
    <head>
	<title>Payment</title>
    </head>
    <body>
      	<% 
         String name=request.getParameter("name");
         String month=request.getParameter("month");
	String year=request.getParameter("year");
        String no=request.getParameter("number");
        String cvv=request.getParameter("cvv");
        
	Connection con=null;
	Statement st=null;
         ResultSet rs=null;
	String sql="select * from CARD where NAME='"+name+"'";
           
	try
	{
	   con=databaseconnection.getconnection(); 
	    st=con.createStatement();
            rs=st.executeQuery(sql);
             if(rs.next())
	     {
		response.sendRedirect("reciept1.jsp");
             }
             else{
	    int n=st.executeUpdate("insert into card values('"+name+"','"+month+"','"+year+"','"+no+"','"+cvv+"')");
                if(n>0)
                {
                    response.sendRedirect("reciept1.jsp");
                }
                else
                {
                    out.println("<p><center><h1> Payment Failed</h1></center>");                        
                     out.println("<p><center><h1><a href='payment.jsp'>Try Again!!</a></h1></center>");                        
                }
             }
            
        }
	catch(SQLException e1)
	{
             System.out.println(e1);
            //out.println("<p><center><h1><a href='payment.jsp'>Go Back!!</a></h1></center>");                        
           
	}

	finally
	{
	     st.close();
	      con.close();
	}
            %>
    </body> 	
</html>