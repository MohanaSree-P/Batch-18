<%-- 
    Document   : verify1
    Created on : Nov 8, 2016, 11:12:32 AM
    Author     : mvinoth
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
          String id=request.getParameter("id");
             Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
Statement stmt=con.createStatement();
int i=stmt.executeUpdate("update useraccess set verify='yes' where S_No='"+id+"'");
if(i>0)
{
    session.setAttribute("msg","Successfully verified");
    response.sendRedirect("Play_Video.jsp?provider=access");
    
}
else
{
        session.setAttribute("msg","database error");
    response.sendRedirect("Play_Video.jsp?provider=access");
}
                  %>
    </body>
</html>
