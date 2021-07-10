<%-- 
    Document   : hiding
    Created on : 26 Feb, 2017, 8:41:30 PM
    Author     : Development
--%>

<%@page import="java.sql.ResultSet"%>
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
            String Dataf=null,Masterf=null;
                  Class.forName("com.mysql.jdbc.Driver");
     Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select * from videohide where uniquekey='"+request.getParameter("id")+"'");
   if(rs.next())
   {
     Dataf=rs.getString("master_file");
      Masterf=rs.getString("datafile");
   }
   
          %>
          <table>
              <tr>
                  <td>Master File</td>
              </tr>
          </table>
        
    </body>
</html>
