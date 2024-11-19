<%-- 
    Document   : customer6
    Created on : Mar 16, 2021, 5:57:45 PM
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
        String c=request.getParameter("number");
        
        PreparedStatement ps = conn.prepareStatement("update CUSTOMER_REGISTER set name=?, password=?,CONTACT_NUMBER=? where email=?");
        ps.setString(1, n);
        ps.setString(2, p);
        ps.setString(3,c);
        ps.setString(4,e);
        
        int j=ps.executeUpdate();
        if(j>0)
        {
            response.sendRedirect("customer_account.jsp");
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

