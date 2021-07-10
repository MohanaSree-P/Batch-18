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

    <%
    

    Integer hitsCount =
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */

       hitsCount = 1;
    }else{
       /* return visit */

       hitsCount += 1;
    }

    application.setAttribute("hitCounter", hitsCount);
    out.println(500/hitsCount);

%>
    
    %> 
 <br><br><br><br><br>
 
     <div>
<%
  String usrid=request.getParameter("txt1");
   String pass=request.getParameter("txt2");
 
   
   if(usrid.equals("Tpa")&& pass.equals("Tpa")){
   
   response.sendRedirect("Tpa_public_files.jsp");
   session.setAttribute("username",usrid);
   } 
   else if(usrid.equals("Admin")&& pass.equals("Admin")){
   
   response.sendRedirect("Admin_public_files.jsp");
   session.setAttribute("username",usrid);
   }else{
Statement st;

       try {
      Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

	     String qry="select * from admin where uid='"+usrid+"' and pwd='"+pass+"' ";

       st = con.createStatement();
	   ResultSet  rs = st.executeQuery(qry);
	   if(rs.next())
		{
                    if(rs.getString("uid").equals(usrid)&&rs.getString("uid").equals(usrid))
                    {
		 session.setAttribute("username",usrid);
                session.setAttribute("data",rs.getString("d_provider"));
                session.setAttribute("tbl",rs.getString("u_tab"));
               
		response.sendRedirect("Play_Video.jsp?provider=access");
                    }
                    else
                    {
                      response.sendRedirect("index.jsp?msg= Uid and Password must case sensitive ");  
                    }

   
    }
           else{response.sendRedirect("index.jsp?msg= Uid or Password Wrong ");}
       }
	catch (Exception e) {
     response.sendRedirect("index.jsp?msg= Uid or Password Wrong ");
    }
   }

%>
                        </div>
                       

 </table> 
 </BODY>
</html>
