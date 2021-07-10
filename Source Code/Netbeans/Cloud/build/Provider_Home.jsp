<%-- 
    Document   : Video_Stream
    Created on : Jun 24, 2014, 5:44:17 PM
    Author     : vinoth
--%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html>
<html>
<head>
   <script>
     
     
     function validateTime() {
var txt1=document.getElementById("text1").value;
var txt2=document.getElementById("text2").value;


 

if(txt1===""){    
    alert("Error: uid cannot be blank!");
    return false;
}
if(txt2===""){    
    alert("Error: pwd cannot be blank!");
    return false;
}




else{return  true;}

}
 </script>
<title>Free Retail Hosting Website Template | Hosting :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>

<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript">
				jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
		</script>
</head>
<body>
<div class="header">
       <div class="header_top">
            <div style="font-size: 25px;color: white;margin-left: 120px" >Implementing TAAC in Cloud for Video Content Sharing & Hiding
</div>
	 <div class="wrap">		
		 	
					<div class="menu">
					     <ul>
                                                 <li class="active"><a href="Provider_Home.jsp">Home</a></li>
                                                 <li><a href="Provider_Play.jsp">Channel Details</a></li>
                                                <li><a href="Provider_Upload.jsp">Upload Videos</a></li>
                                                <li><a href="Master_file.jsp">hiding information</a></li>
                                                <li><a href="Provider_Play_1.jsp">View Stream</a></li>
                                                        <li><a href="Logout.jsp">Logout</a></li>
							<div class="clear"></div>
						</ul>
					</div>
	    		 <div class="clear"></div>
	       </div>
	  
  </div>

  <div class="main">
  	    		
      <div class="services_heading" style="margin-right: 200px">
     		  <p>Provider Home</p>
     		  </div>
     		 <div class="wrap">
     		 	<div class="services">
                            <div style="margin-left: 150px">
 <form name="f1">
       <%
          
            
 String st=request.getParameter("s1");
String provider=(String)session.getAttribute("user");

if(provider != null){
if(provider.equals("provider1")){

provider="access";
}

if(provider.equals("provider2")){

provider="server1";
}

if(provider.equals("provider3")){

provider="server2";
}

if(provider.equals("provider4")){

provider="spam";
}}

DateFormat df = new SimpleDateFormat("yy-MM-dd");
String formattedDate = df.format(new Date());

  Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
Statement stmt=con.createStatement();
Statement stmt1=con.createStatement();
ResultSet rsx=stmt.executeQuery("select uid from admin where d_provider='"+provider+"'");
%>
<div style="margin-left: 300px">
<h4><font color='white'>Select User</font></h4>

<select name="s1" onChange="document.f1.submit()">
<option>SELECT </option>
<%
  while(rsx.next())
   {
    String x=rsx.getString(1);
   %>
<option <%
           if(st !=null && st.equals(x))
   out.println(x);
      %>
    ><%=x%></option>
<%
   }
   %>
</select><br>
</div>
  <%
     if(st !=null)
       {

            Statement stmt11;

        try {
          Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

                 String qry="select * from admin where uid='"+st+"' and date1>'"+formattedDate+"'";

           stmt = con.createStatement();
               ResultSet  rst = stmt.executeQuery(qry);
               if(rst.next())
                    {
                   String DB=rst.getString("d_provider");
                    String tbl=rst.getString("u_tab");

Connection conn = null;





      Statement st2=null;

    long filesizeInKB=0;
    String filename=request.getParameter("file");


    File file = new File("C:\\Documents and Settings\\vinoth.TN\\Desktop\\"+filename);
                long filesize = file.length();
                filesizeInKB = filesize / 1024;


long tot_db_len= Integer.parseInt(rst.getString("d_size")) ;
 try {
                                                Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sns","root","admin");
                                                    st2 = conn.createStatement();
String sqlQuer="SELECT table_schema , SUM( data_length + index_length) / 1024' Size in KB' FROM information_schema.TABLES where table_schema='"+DB+"' GROUP BY table_schema  ";
                                                      ResultSet rs=st2.executeQuery(sqlQuer);
                                                       if(rs.next()){
long used_db_len=rs.getInt(2);
long db_free_space=tot_db_len-used_db_len;



long tot_tbl_len=Integer.parseInt(rst.getString("u_size"));


                                            Statement stt = null;



                                           try {
                                                Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sns","root","admin");
                                                    stt = conn.createStatement();
String sqlQuery="SELECT TABLE_NAME,round(((data_length + index_length)/ 1024 ),2) 'Size in MB' FROM information_schema.TABLES WHERE table_schema = '"+DB+"' and   TABLE_NAME='"+tbl+"' ";
                                                      ResultSet rss=stt.executeQuery(sqlQuery);
                                                       while(rss.next()){
long used_tbl_len=rss.getInt(2);
long free=tot_tbl_len-used_tbl_len;
if(db_free_space>filesizeInKB){
if(free>filesizeInKB){

 String uid =request.getParameter("uid");


String file1= request.getParameter("file1");

if(file1 != null)

{

FileInputStream fis = null;
File image = null;

	PreparedStatement st5=null;

        if(file1 != ""){


image = new File("D:\\Documents and Settings\\vinoth\\Desktop\\"+file1);
fis = new FileInputStream(image);
        }
        try{

     Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/access","root","admin");

String tbb=" "+rst.getString("u_tab")+" ";
        st5 =con.prepareStatement("insert into "+tbb+" values (?,?)");

st5.setString(1, uid);

if(file1 != "")
    st5.setBinaryStream(2, (InputStream)fis, (int)(image.length()));
else
    st5.setBinaryStream(2, null);



      int i =st5.executeUpdate();
       response.sendRedirect("user_page.jsp");
       }
catch(Exception e)
        {
  out.println(e);
            }
}





                                                  %>

                                                  <font color="#669900 ">
                                                      <div style="height: 500px;width: 500px; border-style: ridge ;font-style: italic;margin-left: 100px ">
                                                          <center>
                                                     <pre>  <b>   <div> Domain Name              : <%=rss.getString(1)%></div></b><br></pre>
                                                     <pre>  <b>   <div> Domain Size               : <%=tot_tbl_len%> Kb</div></b><br></pre>
                                                     <pre>  <b>   <div> Used Space                : <%=rss.getInt(2)%> Kb</div></b><br></pre>
                                                     <pre>  <b>   <div> Free space                : <%=free%> Kb</div></b><br></pre>
                                                     <pre>  <b>   <div> Total Provider Memory     : <%= tot_db_len%>Kb</div></b><br></pre>
                                                     <pre>  <b>   <div> Available Provider Memory : <%=used_db_len%> Kb</div></b><br></pre>
                                                     <pre>  <b>    <div> Used Provider Memory      : <%= db_free_space%> Kb</div></b><br></pre>
                                                 </center> </div>

                                                  </font>






                            <%

                                              }
else{
out.println("out of tbl memory");

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
out.println("<font color='white'>Not a Valid Profile</font>");
        }}
            catch (Exception e) {
          e.printStackTrace();
        }
}
    %>
  
 
</select>
</form>
                            </div>
          
			 
     		</div>
     	  </div>    	
     
   </div>       
  
 
 
		<div class="copy_right">
				<p>Company Name © All rights Reseverd  </p>
		 </div>
</body>
</html>

