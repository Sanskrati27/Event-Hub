<%-- 
    Document   : feedback
    Created on : Feb 23, 2021, 12:04:55 PM
    Author     : Sanskrati Varshney
--%>

<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
<html>
    <head>
	<title>Give Feedback</title>
    </head>
    <body>
        <form method="post">
	<% 
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String review=request.getParameter("review");
            String exp=request.getParameter("radio");
            String resp=request.getParameter("radio1");
            String support=request.getParameter("radio2");
            String satisfaction=request.getParameter("radio3");
            String rating=request.getParameter("rating");
            String extra=request.getParameter("extra");
        
	Connection con=null;
	Statement st=null;
	try
	{
	   con=databaseconnection.getconnection(); 
	    st=con.createStatement();
	   
           int n=st.executeUpdate("insert into FEEDBACK values('"+name+"','"+email+"','"+review+"','"+exp+"','"+resp+"','"+support+"','"+satisfaction+"','"+rating+"','"+extra+"')");
                        if(n>0)
                        {
                             response.sendRedirect("customer5.jsp");
                        }
                    else
                        {
                             out.println("<p><center><h1> Hey! ( "+name+" ) Your Feedback have not been submitted..... </h1></center>");
                             out.println("<p><center><h1>  <a href='customer_dash.jsp'>Go Back</a> </h1></center>");	
                        }
        }
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }
	finally
	{
	     st.close();
	      con.close();
	}
        %>
        </form>
    </body> 	
</html>