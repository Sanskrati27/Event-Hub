<%-- 
    Document   : delete4
    Created on : Mar 11, 2021, 4:25:53 PM
    Author     : Sanskrati Varshney
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Booking</title>
    </head>
    <body>
<%
    Connection conn = databaseconnection.getconnection();
   try
{
    String bid=request.getParameter("id");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM Event WHERE bid='"+bid+"'");
int j=st.executeUpdate("DELETE FROM status WHERE bid='"+bid+"'");
int k=st.executeUpdate("DELETE FROM amount WHERE bid='"+bid+"'");
response.sendRedirect("planner4.jsp");
}
catch(Exception e)
       {
          out.println(e);
       }
%>
   </body>
</html>

