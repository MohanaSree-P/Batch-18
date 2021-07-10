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
var cost=document.getElementById("cost").value;

 

if(cost===""){    
    alert("Error: Size/Days  cannot be blank!");
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
                                                 <li><a href="Profile.jsp">Profile</a></li>
                                                <li class="active"><a href="Purchase.jsp">Purchase</a></li>
							
							<li><a href="Logout.jsp">Logout</a></li>
							<div class="clear"></div>
						</ul>
					</div>
	    		 <div class="clear"></div>
	       </div>
	  
  </div>

  <div class="main">
  	    		
      <div class="services_heading" style="margin-right: 200px">
     		  <p>Date & Memory Purchase</p>
     		  </div>
     		 <div class="wrap">
     		 	<div class="services">
     			  
 <div style="margin-left: 300px">
     <script>
             function isNumber(evt)
            {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            return false;
            }
            return true;
            }
     </script>
      
                                  <%
 String msg=request.getParameter("msg");
if(msg!=null)
    {
%>
<blink><font size="4" color="red"><%=msg%></font></blink> <br>
<%} %>
          <form action="update.jsp" method=get   onsubmit="return validateTime();">
         <br>

         <pre><label style="color: white">Size/Days                   </label><input type=text id="cost"name=cost maxlength="3" onkeypress="return isNumber(event)"><br></pre><br>
         <pre><label style="color: white">Space/Date                </label><select id="val"name="val"style="width: 145px"><option>Date</option>
<option>Space</option>
</select><br></pre><br>





<br><br>



        <pre>                <input id="contacts-form"type=submit name=tbut value="click here"><br></pre>

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

