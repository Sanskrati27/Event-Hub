<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
<html>
    <head>
	<title>Planner Registration</title>
    </head>
    <body>
	<form>
	<% 
         String name=request.getParameter("name");
         String type=request.getParameter("type");
         String email=request.getParameter("email");
	String password=request.getParameter("pass");
        
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from PLANNER_REGISTER where EMAIL='"+email+"'";
	try
	{
	   con=databaseconnection.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
	    if(rs.next())
	     {
		 out.println("<center><H1> This ( "+email+" ) is already present <BR>");
                        out.println(" Please Choose another Email </H1><BR>");
                        out.println("<a href=planner_register.html>Go back</a></center>");
	    }
            else{
            sql="insert into planner_register(name,planner_type,email,password) values('"+name+"','"+type+"','"+email+"','"+password+"')";
                   int n=st.executeUpdate(sql);
                        if(n>0)
                        {
                             out.println("<p><center><h1> Planner ( "+name+" ) Created Successfully </h1></center>");
                             out.println("<p><center><h1> Please <a href='planner_register.html'>Login</a> for Joining us</h1></center>");	
                        }
                        else
                        {
                             out.println("<p><center><h1> Planner ( "+name+" ) Can't be Created </h1></center>");                        
                        }
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