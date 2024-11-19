<%-- 
    Document   : delete1
    Created on : Mar 6, 2021, 12:50:37 PM
    Author     : Sanskrati Varshney
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
    String email=request.getParameter("email");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM planner_register WHERE email='"+email+"'");
out.println("Data Deleted Successfully!");
response.sendRedirect("Home.html");
}
catch(Exception e)
       {
          out.println(e);
       }
%>
   </body>
</html>
