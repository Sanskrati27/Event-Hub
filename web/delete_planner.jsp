<%-- 
    Document   : director1
    Created on : 26 Apr, 2015, 11:01:09 PM
    Author     : This Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Planner</title>
    </head>
    <body>
<%
    Connection conn = databaseconnection.getconnection();
   try
{
    String email=request.getParameter("emailid");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM planner_register WHERE email='"+email+"'");
out.println("Data Deleted Successfully!");
response.sendRedirect("admin1.jsp");
}
catch(Exception e)
       {
          out.println(e);
       }
%>
   </body>
</html>
