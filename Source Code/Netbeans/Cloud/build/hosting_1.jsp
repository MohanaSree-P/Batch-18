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
var uid=document.getElementById("uid").value;
var pwd=document.getElementById("pwd").value;
var Provider=document.getElementById("Provider").value;
var db=document.getElementById("db").value;
var domain=document.getElementById("domain").value;
var dsize=document.getElementById("dsize").value;
var date=document.getElementById("date").value;
var date1=document.getElementById("date1").value;
var plan=document.getElementById("plan").value;
var domain1 = /^[0-9]+$/.test(dsize);
 var days = /^[0-9]+$/.test(date1);
 var name = /^[A-Za-z]{3,20}$/.test(uid);
if(uid===""){    
    alert("Error: uid cannot be blank!");
    return false;
}
if(!name){    
    alert("Error: Date Should be (A-Z) or (a-z)) & 3 to 20 !");
    return false;
}
if(pwd===""){    
    alert("Error: pwd cannot be blank!");
    return false;
}
if(Provider===""){    
    alert("Error: fname cannot be blank!");
    return false;
}

if(db===""){    
    alert("Error: lname cannot be blank!");
    return false;
}
if(domain===""){    
    alert("Error: Domain cannot be blank!");
    return false;
}


if(dsize===""){    
    alert("Error: Db Size cannot be blank!");
    return false;
}
if(!domain1){    
    alert("Error: Domain Size Should be 1 to 4 Degit Number!");
    return false;
}
if(!date){    
    alert("Error: Date Should be 1 to 2 Degit Number!");
    return false;
}
if(date1===""){    
    alert("Error: No.of.Day's cannot be blank!");
    return false;
}

if(days===""){    
    alert("Error: No.of.Day's cannot be blank!");
    return false;
}
if(!days){    
    alert("Error: Date Should be 1 to 2 Degit Number!");
    return false;
}


if(plan===""){    
    alert("Error: add cannot be blank!");
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
                                                <li class="active"><a href="index.jsp">Home</a></li>
                                                <li><a href="Login.jsp">Login</a></li>
                                                <li><a href="Register.jsp">Register</a></li>
                                                <li><a href="Login_Provider.jsp">Provider</a></li>
                                                <li><a href="Admin_Login.jsp">Admin</a></li>
							
							<div class="clear"></div>
						</ul>
					</div>
	    		 <div class="clear"></div>
	       </div>
	   </div>
  </div>

  <div class="main">
  	    		
     		 <div class="services_heading">
     		
     		  <p>Plan Details</p>
     		  </div>
     		 <div class="wrap">
     		 	<div class="services">
     			  
  <div style="width: 1024px;height: 500px;margin-left: 100px"class="box1">
                <div class=" box1_left"><img src="images/box_index_img4.jpg" style="padding-top: 15px;" alt="" /></div>
                   <div style="font-size: 25px;color: #79bbff;margin-left: 300px">Welcome to Server1 </div>
                 
                     <br><br>

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
                    <div style="font-size: 25px;color: #6fa803">
         <br>

         <h4>  <label>UID       &nbsp;  &nbsp;   &nbsp;&nbsp;  &nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;   :        <%= rs.getString(1) %>  </label>          &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;&nbsp;  &nbsp;            <label><b>Provider   :  <%= rs.getString(3) %>        </b> </label></h4><br>

  <h4>  <label><b>Server Size  &nbsp;  :      100 Gb  </b> </label>        &nbsp;  &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;          <label><b> Domain     :      <%= rs.getString(5) %>        </b> </label></h4><br>
<h4>  <label><b>Domain Size&nbsp;  :    <%= rs.getString(6) %>Kb  </b> </label>        &nbsp;  &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;          <label><b>  Plan Cost        :   <%= session.getAttribute("plancost")%>     </b> </label></h4><br>


         <br>

         <h4> <label>&nbsp;&nbsp;  &nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Purchase Date  :    <%= rs.getString(7) %>      </label><br></h4><br>
<h4> <label>&nbsp;&nbsp;  &nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    Expired Date   :  <%= rs.getString(8) %>    </label><br><br></h4>


            </div>
<%     }
        else{

        }}
            catch (Exception e) {
          e.printStackTrace();
        }

    %><br><br>
    <pre>                                   <a href="index.jsp" class="classname">Accept</a> 	</pre>										
               
              
            </div>
			 
     		</div>
     	  </div>    	
     
   </div>       
  
 
 
		<div class="copy_right">
				<p>Company Name © All rights Reseverd  </p>
		 </div>
</body>
</html>

