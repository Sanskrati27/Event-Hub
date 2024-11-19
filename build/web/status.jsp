<%-- 
    Document   : status
    Created on : Mar 11, 2021, 5:20:02 PM
    Author     : Sanskrati Varshney
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Booking Status</title>
    </head>
    <body>
<%
    Connection conn = databaseconnection.getconnection();
   try
    {
        String i=request.getParameter("id");
        String status=request.getParameter("change");
        
        PreparedStatement ps = conn.prepareStatement("update STATUS set status=? where bid=?");
        ps.setString(1, status);
        ps.setString(2, i);
        
        int j=ps.executeUpdate();
        if(j>0)
        {
            response.sendRedirect("planner4.jsp");
        }
        else
        {
            out.println("Status Updation Failed");
        }
    }
    catch(Exception e)
    {
       out.println("Error"+e);
    }
%>
   </body>
</html>

