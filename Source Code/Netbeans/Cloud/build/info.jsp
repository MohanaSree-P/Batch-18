
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
                                                 <li class="active"><a href="Play_Video.jsp">Home</a></li>
                                                  <li><a href="info.jsp">Get Secure Info</a></li>
                                                 <li><a href="Profile.jsp">Profile</a></li>
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
         <p>User Login</p>
     		  </div>
     		 <div class="wrap">
     		 	<div class="services">
           <form name="form" enctype="multipart/form-data" action="retrive.jsp" method="post" onsubmit="return Form_Validation();">
                                               <input type="file" id="i_file" name="i_file" value="" required> 

    <br>

<script>$('#i_file').change( function(event) {
    document.getElementById("id2").innerHTML="";
    var id1=document.getElementById("i_file");
    var re = /(\.avi|\.mp4)$/i
 var uid_len = id1.value.length;
var file=id1.files[0];
var uid_len = id1.value.length;
 if(uid_len > 0 && uid_len > 0 && file.size >= 1048576)
    {
         document.getElementById("i_file").value="";
      document.getElementById("id2").innerHTML="File Size Should be less than 1MB only";

    }
else
    {
 
    }
});</script><br>
<span id="id2"></span>

    File Key <input type="text" name="ukey" value="" ><br>
<input type="hidden" id="index_key" name="index_key" value="<%=request.getParameter("id")%>" readonly>
<input type="submit" value="Upload video" class="uiButton" onclick="return validateAll()" > <span style="padding-left:20px"></span>
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

