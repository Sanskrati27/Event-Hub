<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
<html>
    <head>
	<title>Customer Registration</title>
    </head>
    <body>
      	<% 
         String name=request.getParameter("name");
         String email=request.getParameter("email");
         String contact=request.getParameter("number");
	String password=request.getParameter("pass");
        
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from CUSTOMER_REGISTER where EMAIL='"+email+"'";
	try
	{
	   con=databaseconnection.getconnection(); 
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
	    if(rs.next())
	     {
		out.println("<center><H1> This ( "+email+" ) is already present <BR>");
                out.println(" Please Choose another Email </H1><BR>");
                out.println("<center><h1><a href=sign_in.html>Go back</a></h1></center>");
             }
            else{
                    sql="insert into customer_register(name,email,password,contact_number) values('"+name+"','"+email+"','"+password+"','"+contact+"')";
                   int n=st.executeUpdate(sql);
                        if(n>0)
                        {
                             out.println("<p><center><h1> User ( "+name+" ) Created Successfully </h1></center>");
                             out.println("<p><center><h1> Please <a href='sign_in.html'>Login</a> for Joining us</h1></center>");	
                        }
                        else
                        {
                             out.println("<p><center><h1> User ( "+name+" ) Can't be Created </h1></center>");                        
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
    </body> 	
</html>