<%-- 
    Document   : cancel
    Created on : 27 Feb, 2017, 11:27:38 AM
    Author     : Development
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                 try {
            Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
           Statement st=con.createStatement();
           int i=st.executeUpdate("delete from videohide where uniquekey='"+request.getParameter("id")+"'");
           if(i>0)
           {
              response.sendRedirect("Master_file.jsp?msg=successfully access cancel");
           }
           else
           {
            response.sendRedirect("Master_file.jsp?msg=database error");  
           }
                 }
                 catch(Exception e)
                 {
                     System.out.println(e);
                      response.sendRedirect("Master_file.jsp?msg=database error"+e);   
                 }
            %>
    </body>
</html>
