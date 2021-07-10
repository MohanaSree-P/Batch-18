<%--
    Document   : login
    Created on : Jan 31, 2011, 4:54:29 PM
    Author     : vinodth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<html>
    <HEAD>
  
  
 </HEAD>

 <BODY>
 <br><br><br><br><br>
 <table width="250px" align="center" bgcolor="#CDFFFF" border=0 style="border:1px solid;">
<%
  String usrid=request.getParameter("txt1");
   String pass=request.getParameter("txt2");
 
Statement st;
       try {
      Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

	     String qry="select * from provider where id='"+usrid+"' and pass='"+pass+"' ";
System.out.println(qry);
       st = con.createStatement();
	   ResultSet  rs = st.executeQuery(qry);
	   if(rs.next())
		{
                    
		 session.setAttribute("user",rs.getString(3));
          session.setAttribute("usrid",usrid);
               
		response.sendRedirect("Provider_Home.jsp?provider="+usrid);

   
    }else{response.sendRedirect("Login_Provider.jsp?msg=Invalid id or pass");}
       
       }
	catch (Exception e) {
            response.sendRedirect("Login_Provider.jsp?msg=Invalid id or pass"+e);
      out.println(e);
    }
             

%>
                       
                        
 </table> 
 </BODY>
</html>
