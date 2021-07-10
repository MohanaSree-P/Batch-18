<%-- 
    Document   : pro_reg
    Created on : 27 Feb, 2017, 12:08:31 PM
    Author     : Development
--%>

<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
           String txt1=request.getParameter("cat");
              String txt2=request.getParameter("prov");
                 String txt3=(String)session.getAttribute("username");
      Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
     
	     String qry="select * from add_ins where ins='"+txt1+"' and provider='"+txt2+"' and usr_id='"+txt3+"' ";
             

       st = con.createStatement();
	   ResultSet  rs = st.executeQuery(qry);
	   if(rs.next())
		{
                    if(rs.getString("id").equals(txt1))
                    {
                        response.sendRedirect("add_ins.jsp?msg=Interest already exist!");  
                    }
                    if(rs.getString("Domain").equals(txt2))
                    {
                        response.sendRedirect("add_ins.jsp?msg=provider name already exist!");  
                    }
                }
           else
           {
             //  System.out.println("insert into(ins,provider,usr_id) add_ins values('"+txt1+"','"+txt2+"','"+txt3+"')");
              int i=st.executeUpdate("insert into add_ins (ins,provider,usr_id) values('"+txt1+"','"+txt2+"','"+txt3+"') ");
             
    
              response.sendRedirect("add_ins.jsp?msg=Successfully Register");
           }
}
       catch(Exception e)
{
    System.out.println(e);
}
%>
    </body>
</html>
