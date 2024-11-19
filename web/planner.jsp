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
        <title>Planner Login</title>
    </head>
    <body>
      <form method=post action='planner_dash.jsp'>
<%
    Connection con=null;
    Statement st=null;
    String Email=request.getParameter("loginid");
    String Pass=request.getParameter("pass");

    session.setAttribute("4",Email);
    session.setAttribute("5",Pass);

    try 
    {
        con=databaseconnection.getconnection();
        st = con.createStatement();

        String sql="Select * from planner_register  where email='"+Email+"' ";
        ResultSet rs=st.executeQuery(sql);
        if(rs.next())
        {
            String email1=rs.getString(3);
            String pas1=rs.getString(4);
            String name=rs.getString(1);
            String type=rs.getString(2);
            session.setAttribute("10",type);
            session.setAttribute("6",name);
            if (Email.equals(email1) && Pass.equals(pas1)) 
            { 
 %>
                <jsp:forward page = "planner_dash.jsp"/>
<%
            }
            else 
            {
                out.println("<center><H1 color='red'> You entered wrong Email Id or Password</h1> <BR>");
                out.println("<center><H1> Please check your Email Id or Password</h1> <BR>");
                out.println("<p><center><h1> Please <a href='planner_register.html'>Try Again</a></h1></center>");	
            }
        } 
        else
{
    out.println("<center><H1> You are not registered</h1> <BR>");
    out.println("<p><center><h1> Please <a href='planner_register.html'>Register</a> yourself</h1></center>");	
}
        rs.close();
        st.close();
        con.close();
    } 
    catch(Exception e) {}
%>
    </form>
   </body>
</html>
