

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
                                                 <li><a href="Provider_Home.jsp">Home</a></li>
                                                 <li><a href="Provider_Play.jsp">Channel Details</a></li>
                                                <li><a href="Provider_Upload.jsp">Upload Videos</a></li>
                                                <li  class="active"><a href="Master_file.jsp">hiding information</a></li>
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
        
           <form name="form" enctype="multipart/form-data" action="masterUpload1.jsp" method="post" onsubmit="return Form_Validation();">
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

});</script><br>
<span id="id2"></span>
Select User <select name="usr">
<%
     try {
      Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

	     String qry="select * from admin where d_provider='"+session.getAttribute("user")+"' ";
System.out.println(qry);
     Statement  st = con.createStatement();
	   ResultSet  rs = st.executeQuery(qry);
           while(rs.next())
           {
             %>
             <option value="<%=rs.getString("uid")%>"><%=rs.getString("uid")%></option>
             <%
           }
     }
     catch(Exception e)
     {
         
     }
       final String ALPHA_NUM = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  final String nums="1234567890";
        String text = "";
StringBuffer sb = new StringBuffer(5);
for (int i = 0; i < 8; i++) {
int ndx = (int) (Math.random() * ALPHA_NUM.length());
sb.append(ALPHA_NUM.charAt(ndx));
}
text= sb.toString();
    %>
</select><br>
    File Key <input type="text" name="ukey" value="<%=text%>" readonly><br>
<input type="hidden" id="index_key" name="index_key" value="<%=request.getParameter("id")%>" readonly>
<input type="submit" value="Upload Data File" class="uiButton" onclick="return validateAll()" > <span style="padding-left:20px"></span>
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

