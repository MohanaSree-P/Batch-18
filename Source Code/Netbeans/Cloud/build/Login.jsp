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
                                               <li ><a href="index.jsp">Home</a></li>
                                                <li  class="active"><a href="Login.jsp">Login</a></li>
                                                <li><a href="Register.jsp">Register</a></li>
                                                    <li><a href="Reg_Provider.jsp">Provider Register</a></li>
                                                <li><a href="Login_Provider.jsp">Provider</a></li>
                                                <li><a href="Admin_Login.jsp">Admin</a></li>
							
							<div class="clear"></div>
						</ul>
					</div>
	    		 <div class="clear"></div>
	       </div>
	  
  </div>

  <div class="main">
  	    		
      <div class="services_heading" style="margin-right: 200px">
     		  <p>User Login</p>
     		  </div>
     		 <div class="wrap">
     		 	<div class="services">
     			  
 
 <div style="margin-left:350px;height: 200px;margin-top: 100px">
     
                        <form name="form" action="login_1.jsp" method="post" onsubmit="return validateTime();">
                     
                            <label for="text1" style="color: white">Username          : </label> <input id="text1" type="text" name="txt1" value="" /><br />  <br />
                            <label for="text2" style="color: white">Password     &nbsp;     :</label><input id="text2" type="password" name="txt2" value="" />
                            <br />     <br />
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp <input type="submit" value="Login" />
                    
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

