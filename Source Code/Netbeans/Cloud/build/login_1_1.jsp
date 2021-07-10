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
        <title>Secure and privacy preserving keyword searching for cloud storage services</title></HEAD>

 <BODY>

   
    %> 
 <br><br><br><br><br>
 
     <div>
<%
  String usrid=request.getParameter("txt1");
   String pass=request.getParameter("txt2");
 
   
   
   if(usrid.equals("Admin")&& pass.equals("Admin")){
   
   response.sendRedirect("Admin_Home.jsp");
   session.setAttribute("username",usrid);
   }else{
response.sendRedirect("Admin_Login.jsp?msg=Invalid AdminId Or Pass");
	
    }
   

%>
                        </div>
                       


 </BODY>
</html>
