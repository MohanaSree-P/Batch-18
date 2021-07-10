<%-- 
    Document   : update
    Created on : Jul 26, 2012, 3:05:27 PM
    Author     : vinoth
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Secure and privacy preserving keyword searching for cloud storage services</title>
    </head>
    <body>
        <%
 int cost=Integer.parseInt(request.getParameter("cost"));
        String dat=request.getParameter("val");
        if(dat.equals("Space") ){
       
       int cost1=cost*10;
       try{ Class.forName("com.mysql.jdbc.Driver");
      Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

               Statement stw =  con.createStatement();
               Statement st =  con.createStatement();
               Statement st1 =  con.createStatement();
                stw.executeUpdate("update cost set cost=cost-" + cost1 + "  where uid='" + session.getAttribute("username")+ "'");
                 st.executeUpdate("update admin set u_size=u_size+" + cost + "  where uid='" + session.getAttribute("username")+ "'");
st1.executeUpdate("update bank set money=money+" + cost1 + "  where id='1'");

response.sendRedirect("Play_Video.jsp");

              }catch(Exception w){
              out.println(w);
              }}

        if(dat.equals("Date")){
int date=cost*30;

Statement s;

      try {
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
String dd=" "+cost+" ";
     String qry="update admin set date1= DATE_ADD(date1, INTERVAL "+dd+" DAY) where uid='" + session.getAttribute("username")+ "'";

           s = con.createStatement();
              s.executeUpdate(qry);
 Statement st3 =  con.createStatement();
 Statement st4 =  con.createStatement();
        st3.executeUpdate("update cost set cost=cost-" + date + "  where uid='" + session.getAttribute("username")+ "'");
st4.executeUpdate("update bank set money=money+" + date + "  where id='1'");
response.sendRedirect("Play_Video.jsp");

      }
                catch (Exception e) {
          e.printStackTrace();
        }

}
%>
    </body>
</html>
