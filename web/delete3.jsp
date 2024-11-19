<%-- 
    Document   : delete3
    Created on : Mar 8, 2021, 12:56:32 PM
    Author     : Sanskrati Varshney
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Customer</title>
    </head>
    <body>
<%
    Connection conn = databaseconnection.getconnection();
   try
{
    String email=request.getParameter("email");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM customer_register WHERE email='"+email+"'");
out.println("Data Deleted Successfully!");
response.sendRedirect("planner1.jsp");
}
catch(Exception e)
       {
          out.println(e);
       }
%>
   </body>
</html>
