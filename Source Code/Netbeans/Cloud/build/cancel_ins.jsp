<%-- 
    Document   : cancel_ins
    Created on : 27 Feb, 2017, 1:18:00 PM
    Author     : Development
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       Statement st;

       try {
           String txt1=request.getParameter("id");
             
      Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
     
	     String qry="delete  from add_ins where S_No='"+txt1+"'  ";
            
       st = con.createStatement();
       int i=st.executeUpdate(qry);
       if(i>0)
       {
            response.sendRedirect("add_ins.jsp?msg=Remove Successfully!");  
       }
       else
       {
            response.sendRedirect("add_ins.jsp?msg=Database Error!");  
       }
       }
       catch(Exception e)
{
    System.out.println(e);
}%>
    </body>
</html>
