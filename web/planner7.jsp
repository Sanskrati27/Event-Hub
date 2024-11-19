<%-- 
    Document   : planner7
    Created on : Apr 16, 2021, 11:24:51 AM
    Author     : Sanskrati Varshney
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Account</title>
    </head>
    <body>
<%
    Connection conn = databaseconnection.getconnection();
   try
    {
        String n=request.getParameter("name");
        String e=request.getParameter("email");
        String p=request.getParameter("password");
        String t=request.getParameter("type");
        
        PreparedStatement ps = conn.prepareStatement("update PLANNER_REGISTER set name=?, password=?, planner_type=? where email=?");
        ps.setString(1, n);
        ps.setString(2, p);
        ps.setString(3,t);
        ps.setString(4,e);
        
        int j=ps.executeUpdate();
        if(j>0)
        {
            response.sendRedirect("planner_account.jsp");
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

