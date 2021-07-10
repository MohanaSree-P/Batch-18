<%-- 
    Document   : play
    Created on : Jun 23, 2014, 2:32:13 PM
    Author     : vinoth
--%>

<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%DateFormat df = new SimpleDateFormat("yy-MM-dd");
 String formattedDate = df.format(new Date());
String provider=request.getParameter("provider");
if(session.getAttribute("username")!=null ){
           Statement stmt;
        try {
            Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
                 String qry="select * from admin where uid='"+session.getAttribute("username")+"' and date1>'"+formattedDate+"'";
           stmt = con.createStatement();
               ResultSet  rst = stmt.executeQuery(qry);
               if(rst.next())
                    {
                   String DB=rst.getString("d_provider");
                    String tbl=rst.getString("u_tab");
                    session.setAttribute("tbl", tbl);
session.setAttribute("data", DB);
Connection conn = null;
      Statement st;
    long filesizeInKB=0;
    String filename=request.getParameter("file");
          

long tot_db_len= Integer.parseInt(rst.getString("d_size")) ;
 try {
                                                Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
                                                    st = conn.createStatement();
String sqlQuer="SELECT table_schema , SUM( data_length + index_length) / 1024' Size in KB' FROM information_schema.TABLES where table_schema='"+DB+"' GROUP BY table_schema  ";
                                                      ResultSet rs=st.executeQuery(sqlQuer);
                                                       if(rs.next()){
long used_db_len=rs.getInt(2);
long db_free_space=tot_db_len-used_db_len;
long tot_tbl_len=Integer.parseInt(rst.getString("u_size"));
                                           Statement stt = null;



                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+DB,"root","admin");
                                                    stt = conn.createStatement();
String sqlQuery="SELECT TABLE_NAME,round(((data_length + index_length)/ 1024 ),2) 'Size in MB' FROM information_schema.TABLES WHERE table_schema = '"+DB+"' and   TABLE_NAME='"+tbl+"' ";
                                                      ResultSet rss=stt.executeQuery(sqlQuery);
                                                       while(rss.next()){
long used_tbl_len=rss.getInt(2);
long free=tot_tbl_len-used_tbl_len;
if(db_free_space>filesizeInKB){
if(free>filesizeInKB){

 String uid =request.getParameter("uid");
 String index1 =request.getParameter("index1");
 String bname =request.getParameter("bname");
 String author =request.getParameter("author");
 String cat =request.getParameter("cat");
 String file1= request.getParameter("file1");
String name= request.getParameter("name");
if(file1 != null)
{
       
}                                                  %>


        <%
        DateFormat df1 = new SimpleDateFormat("HH:mm:ss");
 String formattedDate1 = df1.format(new Date());
        out.println(formattedDate1);
        %>
        <a href="Video_Stream.jsp?name=111.mp4">Play</a>
        <input type=text readonly value="<%= formattedDate1 %>" >
        
        
        
        
        <%

                                              }
else{
response.sendRedirect("purchase.jsp?m=memory full Purchase ");

}}else{
out.println("out of DB memory");

}


                                                         }}
  catch (Exception e) {
                                               out.println("Error in Index JSP" + e);
                                            }
}
}
         catch (Exception ea) {
                                               out.println("Error in Index JSP" + ea);
                                            }

                                       }
        else{
response.sendRedirect("purchase.jsp?m=Date Expired ");
        }}
            catch (Exception e) {
          e.printStackTrace();
        }
}
    %>
   
    </body>
</html>
