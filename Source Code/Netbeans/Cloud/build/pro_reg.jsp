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
           String txt1=request.getParameter("txt1");
              String txt2=request.getParameter("txt2");
                 String txt3=request.getParameter("txt3");
      Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
     
	     String qry="select * from provider where id='"+txt1+"' and Domain='"+txt3+"' ";
             

       st = con.createStatement();
	   ResultSet  rs = st.executeQuery(qry);
	   if(rs.next())
		{
                    if(rs.getString("id").equals(txt1))
                    {
                        response.sendRedirect("Reg_Provider.jsp?msg=provider name already exist!");  
                    }
                    if(rs.getString("Domain").equals(txt3))
                    {
                        response.sendRedirect("Reg_Provider.jsp?msg=Server name already exist!");  
                    }
                }
           else
           {
              int i=st.executeUpdate("insert into provider values('"+txt1+"','"+txt2+"','access','"+txt3+"') ");
               String path = request.getSession().getServletContext().getRealPath("/");   
    out.println(path);
    String patt=path.replace("\\build", "");
File dir = new File(patt+txt1);  
dir.mkdir();
              response.sendRedirect("Reg_Provider.jsp?msg=Successfully Register");
           }
}
       catch(Exception e)
{
    System.out.println(e);
}
%>
    </body>
</html>
