<%-- 
    Document   : admin7
    Created on : Mar 16, 2021, 4:39:03 PM
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
        
        PreparedStatement ps = conn.prepareStatement("update ADMIN_REGISTER set name=?, password=? where email=?");
        ps.setString(1, n);
        ps.setString(2, p);
        ps.setString(3,e);
        
        int j=ps.executeUpdate();
        if(j>0)
        {
            response.sendRedirect("admin_account.jsp");
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

