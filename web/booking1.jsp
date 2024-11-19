<%-- 
    Document   : booking1
    Created on : Mar 16, 2021, 6:29:59 PM
    Author     : Sanskrati Varshney
--%>
<%@ page import="java.sql.*,java.util.*,dd.*,java.io.*"%>
<html>
    <head>
	<title>Event Booking</title>
    </head>
    <body>
    <% 
            int price=0;
            String id=request.getParameter("id");
         String no=request.getParameter("number");
         int n=Integer.parseInt(no);
         
        String pref=request.getParameter("preference");
        String place=request.getParameter("venue");
             
        String ftype=request.getParameter("ftype");
              
        String btype=request.getParameter("btype");
        String ltype=request.getParameter("ltype");
        String stype=request.getParameter("stype");
        String dtype=request.getParameter("dtype");
        String light=request.getParameter("lighting");
       
        String e[]=request.getParameterValues("equip");
        String flower=request.getParameter("flower");
        String seat=request.getParameter("seating");
        
            Connection con=null;
	Statement st=null;
	ResultSet rs=null;
       	try
	{
	   con=databaseconnection.getconnection(); 
	    st=con.createStatement();
             rs=st.executeQuery("SELECT * FROM venue WHERE name='"+place+"'");
            int c=0;
            if(rs.next())
                c=rs.getInt(6);
            price+=c; 
            
            if(n!=0)
                     {
                        if(n>0 && n<=200)
                            price+=200;
                        else if(n>200 && n<=400)
                            price+=400;
                        else if(n>400 && n<=600)
                            price+=600;
                        else if(n>600 && n<=800)
                            price+=800;
                        else if(n>800 && n<=1000)
                            price+=1000;
                        else
                            price+=1200;
                     }
                     if(pref!=null)
                     {
                        if(pref.equalsIgnoreCase("wedding"))
                            price+=2000;
                        else if(pref.equalsIgnoreCase("engagement"))
                            price+=1500;
                        else if(pref.equalsIgnoreCase("birthday")||pref.equalsIgnoreCase("anniversary")||pref.equalsIgnoreCase("farewell"))
                            price+=1000;
                        else if(pref.equalsIgnoreCase("college event")||pref.equalsIgnoreCase("business meeting"))
                            price+=500;
                        else 
                            price+=1000;
                      }  
                    
                     if(ftype!=null)
                     {
                         if(ftype.equalsIgnoreCase("vegeterian"))
                             price+=500;
                         else if(ftype.equalsIgnoreCase("Vegeterian & Non Vegeterian"))
                             price+=1500;
                         else    
                             price+=1000;
                     }
                     if(btype!=null)
                     {
                         if(btype.equalsIgnoreCase("no breakfast"))
                             price+=0;
                         else if(btype.equalsIgnoreCase("royal"))
                             price+=10000;
                         else  if(btype.equalsIgnoreCase("normal"))
                             price+=5000;
                         else    
                             price+=15000;
                     }
                     if(ltype!=null)
                     {
                         if(ltype.equalsIgnoreCase("no lunch"))
                             price+=0;
                         else if(ltype.equalsIgnoreCase("normal"))
                             price+=10000;
                         else if(ltype.equalsIgnoreCase("royal"))
                             price+=15000;
                         else    
                             price+=2000;
                     }
                     if(stype!=null)
                     {
                         if(stype.equalsIgnoreCase("no snacks"))
                             price+=0;
                         else if(stype.equalsIgnoreCase("normal"))
                             price+=5000;
                         else if(stype.equalsIgnoreCase("royal"))
                             price+=10000;
                         else    
                             price+=15000;
                     }
                     if(dtype!=null)
                     {
                         if(dtype.equalsIgnoreCase("no dinner"))
                             price+=0;
                         else if(dtype.equalsIgnoreCase("normal"))
                             price+=10000;
                         else if(dtype.equalsIgnoreCase("royal"))
                             price+=15000;
                         else    
                             price+=20000;
                     }
                      for(int i=0; i<e.length;i++)
        {
            if(e[i].equalsIgnoreCase(" DJ "))
                price+=40000;
            if(e[i].equalsIgnoreCase(" Mike "))
                price+=500;
            if(e[i].equalsIgnoreCase(" Revolving Stage "))
                price+=20000;
            if(e[i].equalsIgnoreCase(" Host "))
                price+=50000;
            if(e[i].equalsIgnoreCase(" Drone "))
                price+=10000;         
        }
        
       
                     if(light!=null)
                     {  
                         if(light.equalsIgnoreCase("no lighting"))
                             price+=0;
                         else if(light.equalsIgnoreCase("normal"))
                             price+=2000;
                         else if(light.equalsIgnoreCase("royal"))
                             price+=3000;
                         else    
                             price+=4000;
                     }
                     if(flower!=null)
                     {
                         if(flower.equalsIgnoreCase("no flowers"))
                             price+=0;
                         else if(flower.equalsIgnoreCase("normal"))
                             price+=1000;
                         else if(flower.equalsIgnoreCase("royal"))
                             price+=1500;
                         else    
                             price+=2000;
                     }
                     if(seat!=null)
                     {
                         if(seat.equalsIgnoreCase("Chairs"))
                             price+=3000;
                         else if(seat.equalsIgnoreCase("Chairs & Sofa"))
                             price+=6000;
                         else    
                             price+=4000;
                     }
                        session.setAttribute("p",price);
                        int a=st.executeUpdate("insert into amount values('"+id+"','"+price+"')");
        }
           catch(SQLException e1)
	{
            out.println(e1);
            //out.println("<p><center><h1><a href='customer1.jsp'>Go Back!!</a></h1></center>");
	 }
          
        %>
    </body>
</html>