<%-- 
    Document   : Video
    Created on : Jun 24, 2014, 5:28:43 PM
    Author     : vinoth
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html>
<html>
<head>
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
	 <div class="wrap">		
		 	<div class="logo">
						<a href="index.html"><img src="images/logo.png" alt="" /></a>
					</div>	
					<div class="menu">
					    <ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="domains.html">Domains</a></li>
							<li class="active"><a href="hosting.html">Hosting</a></li>
							<li><a href="support.html">Support</a></li>
							<li><a href="contact.html">Contact</a></li>
							<div class="clear"></div>
						</ul>
					</div>
	    		 <div class="clear"></div>
	       </div>
	   </div>
  </div>
</div>
  <div class="main">
  	 <div class="wrap">
  	  <div class="plans">
  			<h3>Select Your Plan</h3>
  			
  			 	<%
String video=request.getParameter("name");
int Time=0;

Statement s1;



 
        DateFormat df = new SimpleDateFormat("HH:mm:ss");
 String formattedDate = df.format(new Date());
        out.println(formattedDate);
        
try {
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

     String qry1="SELECT (minute (TIMEDIFF('"+formattedDate+"','17:35:00'))*60)+Second (TIMEDIFF('"+formattedDate+"','17:35:00')) AS 't1 - t2', TIMEDIFF(@t2,@t1) AS 't2 - t1'";

           s1 = con.createStatement();
               ResultSet  rstt = s1.executeQuery(qry1);
              if(rstt.next())
                    {
                        
                  Time=rstt.getInt(1);
                    
                    }}
catch(Exception r){
out.println(r);
}

 out.println(Time);
 
%>
<div style="">
<video width="1000" height="240"   autoplay>
  
  <source src="<%=video%>#t=<%=Time%>" type="video/mp4">
  <object data="<%=video%>#t=<%=Time%>" width="320" height="240">
    <embed width="320" height="240" src="111.swf">
  </object>
</video>

  			 			 
         </div>
  	  </div>
  	     
   </div>       


		<div class="copy_right">
				<p>Company Name © All rights Reseverd  </p>
		 </div>
</body>
</html>

