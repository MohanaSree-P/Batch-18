<%-- 
    Document   : Delete1
    Created on : Jun 20, 2013, 12:33:27 PM
    Author     : vinoth
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        
        
         
         String  File_id=request.getParameter("f_id");
     Connection con = null;
         Statement st;
          Statement st1;
     try {
  Class.forName("com.mysql.jdbc.Driver");
  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
 st = con.createStatement();
  st1 = con.createStatement();
 int i=st.executeUpdate("Delete  FROM video where id='"+File_id+"'");


  response.sendRedirect("Provider_Play.jsp");
  
  
  }catch (Exception e) {
        out.println("Error Inside DataBase class :\nError in DataBaseConstructor\n" + e);
        }
     
    
        %>
    </body>
</html>
