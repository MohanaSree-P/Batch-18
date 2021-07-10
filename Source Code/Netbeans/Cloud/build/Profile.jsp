<%-- 
    Document   : Video_Stream
    Created on : Jun 24, 2014, 5:44:17 PM
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
                                                 <li ><a href="Play_Video.jsp">Home</a></li>
                                                 <li class="active"><a href="Profile.jsp">Profile</a></li>
                                                <li><a href="Purchase.jsp">Purchase</a></li>
							
							<li><a href="Logout.jsp">Logout</a></li>
							<div class="clear"></div>
						</ul>
					</div>
	    		 <div class="clear"></div>
	     
	   </div>
  </div>

  <div class="main">
  	    		
      <div class="services_heading" style="margin-right: 200px">
     		  <p>User Profile</p>
     		  </div>
     		 <div class="wrap">
     		 	<div class="services">
     			  
 
  <div class=" box1_right" style=" width: 700px;margin-right:100px"><br/>
                    
                     

         <%





            Statement st=null;

        try {
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

                 String qry="select * from admin INNER JOIN cost ON admin.uid=cost.uid where admin.uid='"+session.getAttribute("username")+"'";

           st = con.createStatement();
               ResultSet  rs = st.executeQuery(qry);
               if(rs.next())
                    {%>
                    <div style="margin-left: 300px">
         <br>

         <pre><label style="color: white">UID                         </label><input type=text readonly value="<%= rs.getString(1) %>" name=uid><br></pre><br>



<pre><label style="color: white">Provider                  </label><input type=text readonly value="<%= rs.getString(3) %>"name=productid><br>
</pre>

<pre><label style="color: white">Server Size             </label><input value="1000" type=text readonly name=db><br></pre><br>
<pre><label style="color: white">Domain                   </label><input readonly value="<%= rs.getString(5) %>"type=text name=domain><br></pre><br>
<pre><label style="color: white">Domain Size           </label><input type=text readonly value="<%= rs.getString(6) %>" name=dsize><br></pre><br>

<pre><label style="color: white">Date from                </label><input type=text readonly value="<%= rs.getString(7) %>" name=date><br></pre><br>
<pre><label style="color: white">NO.of.D/M/Y           </label><input type=text readonly value="<%= rs.getString(8) %>"name=date1><br></pre><br>
<pre><label style="color: white">Amount                   </label><input type=text readonly value="<%= rs.getString("cost") %>" name=uid><br></pre><br>


<br><br>


</div>


            
<%     }
        else{

        }}
            catch (Exception e) {
          e.printStackTrace();
        }

    %>
                             
                             
                             </div> 
			 
     		</div>
     	  </div>    	
     
   </div>       
  
 
 
		<div class="copy_right">
				<p>Company Name © All rights Reseverd  </p>
		 </div>
</body>
</html>

