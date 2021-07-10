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

var txt2=document.getElementById("cat").value;
var txt3=document.getElementById("file1").value;
var txt4=document.getElementById("rtime").value;
 var text = /^.*\.(mp4)$/.test(txt3);



if(txt2===""){    
    alert("Error: Category cannot be blank!");
    return false;
}
if(txt3===""){    
    alert("Error: Please Select File!");
    return false;
}
if(txt4===""){    
    alert("Error: Please Select valid  File!");
    document.getElementById("file1").value="";
    return false;
}
if(!text)
{
   alert("Error: Invalid File format!"); 
    return false;
}



}



 </script>
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
                                                 <li ><a href="Provider_Home.jsp">Home</a></li>
                                                 <li><a href="Provider_Play.jsp">Channel Details</a></li>
                                                  <li><a href="Master_file.jsp">hiding information</a></li>
                                                 <li class="active"><a href="Provider_Upload.jsp">Upload Videos</a></li>
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
     		  <p>Upload Video & Create Channel</p>
     		  </div>
     		 <div class="wrap">
     		 	<div class="services">
     			  
 
 <div style="margin-left:350px;height: 200px;margin-top: 100px">
     
                         <form action="Uploadinfo.jsp"  method="post" enctype="multipart/form-data" onsubmit="return validateTime();">
                             	    	      <%
 String msg=request.getParameter("msg");
if(msg!=null)
    {
%>
<blink><font size="4" color="red"><%=msg%></font></blink> <br>
<%} %><br>      
                             <table>
                                
                    <tr>
                        <td> <label for="text1" style="color: white">Category Name</label> </td><td>
                            <Select name="cat" id="cat">
                                <option value="Education">Education</option>
                                 <option value="Sports">Sports</option>
                                  <option value="Funny">Funny</option>
                                   <option value="Movie">Movie</option>
                                    <option value="Tutorial">Tutorial</option>
                                  
                            </Select>
                            
                            
                    </tr>
                   
                    <tr>
                        <td> <label for="text1" style="color: white">Choose File to Upload </label></td><td> <input style="color: white" id="file1" type="file" name="file1" size=25  onchange="setFileInfo(this.files)"/> </td>
                    </tr> <tr>
                        <td> <label for="text1" style="color: white">File Run Time </label></td><td> <input  id="rtime" type="text" name="rtime" value="" size=25  readonly/> </td>
                    </tr>
                    <tr>
                        <td> <label for="text1" style="color: white">File Type </label></td><td> <select  name="ftype">
                                <option value="public">Public</option> 
                                <option value="Secure">Secure</option>
                                
                            </select> </td>
                    </tr>
                    <tr>
                        <td><span id="id2"></span></td>
                    </tr>
                    <tr>
                        <td>  </td><td> <input  type="submit"  size=15 type="text"  value="Upload"/> </td>
                    </tr>
                </table>
                             <script>
                                 var myVideos = [];
window.URL = window.URL || window.webkitURL;
function setFileInfo(files) {
        var id1 = document.getElementById("file1");
                var re = /(\.mp4)$/i
                var uid_len = id1.value.length;
                var file = id1.files[0];
                var uid_len = id1.value.length;
                if (!re.exec(id1.value))
                {
                    document.getElementById("file1").value = "";
                    document.getElementById("id2").innerHTML = "File extension not supported!";
                }
                 else if (uid_len > 0 && uid_len > 0 && file.size >= 20971520)
                {
                    document.getElementById("file1").value = "";
                    document.getElementById("id2").innerHTML = "File Size Should be less than 2MB only";

                }
                  else if (uid_len > 0 && uid_len > 0 && file.size <= 524288)
                {
                    document.getElementById("file1").value = "";
                    document.getElementById("id2").innerHTML = "File Size Should be Higher than 500KB only";

                }
                else
                {
  myVideos.push(files[0]);
  var video = document.createElement('video');
  video.preload = 'metadata';

  video.onloadedmetadata = function() {
  
    window.URL.revokeObjectURL(this.src)
    var duration = video.duration;
     
    myVideos[myVideos.length-1].duration = duration;
       
    updateInfos();
  }

  video.src = URL.createObjectURL(files[0]);;
                }
}

function updateInfos(){
     
  for(i=0;i<myVideos.length;i++){
      document.getElementById("rtime").value=myVideos[i].duration;
      
   // alert(myVideos[i].duration);
     }
  }
                             </script>
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

