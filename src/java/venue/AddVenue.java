/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package venue;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class AddVenue extends HttpServlet 
{
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            // Apache Commons-Fileupload library classes
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload sfu  = new ServletFileUpload(factory);

            if (! ServletFileUpload.isMultipartContent(request))
            {
                System.out.println("sorry. No file uploaded");
                return;
            }

            // parse request
            List items = sfu.parseRequest(request);
            FileItem  name = (FileItem) items.get(0);
            String name1 =  name.getString();
            
            FileItem address = (FileItem) items.get(1);
            String   add =  address.getString();

            FileItem phone = (FileItem) items.get(2);
            String   contact =  phone.getString();

            FileItem preference = (FileItem) items.get(3);
            String   pref =  preference.getString();

            FileItem capacity = (FileItem) items.get(4);
            String   cap =  capacity.getString();
            
            FileItem cost = (FileItem) items.get(5);
            String   amount =  cost.getString();

            // get uploaded file
            FileItem file1 = (FileItem) items.get(6);
                        
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "my_db", "oracle");
            con.setAutoCommit(false);

            PreparedStatement ps = con.prepareStatement("insert into VENUE values(?,?,?,?,?,?,?)");
            ps.setString(1, name1);
            ps.setString(2, add);
            ps.setString(3, contact);
            ps.setString(4, pref);
            ps.setString(5, cap);
            ps.setString(6, amount);
            // size must be converted to int otherwise it results in error
            ps.setBinaryStream(7, file1.getInputStream(), (int) file1.getSize());
            ps.executeUpdate();
            con.commit();
            con.close();
           // out.println("<p><center><h1>Venue Added Successfully....</h1></center>");
            //out.println("<center><h1> Please <a href='admin3.jsp'>Go Back</a></h1></center>");
            response.sendRedirect("admin3.jsp");
        }
        catch(Exception ex) {
            out.println( "Error --> " + ex.getMessage());
        }
        
    } 
}