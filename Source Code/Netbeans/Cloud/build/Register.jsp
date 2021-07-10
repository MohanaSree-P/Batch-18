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
    alert("Error: User Name cannot be blank!");
    return false;
}
if(!name){    
    alert("Error: User Name Should be (A-Z) or (a-z)) & 3 to 20 !");
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

if(!(domain==uid))
    {
         alert("Error: Domain Name Not same to User Name!");
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
                                               <li><a href="index.jsp">Home</a></li>
                                                <li><a href="Login.jsp">Login</a></li>
                                                <li  class="active"><a href="Register.jsp">Register</a></li>
                                                    <li><a href="Reg_Provider.jsp">Provider Register</a></li>
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
     		 
     		  <p>Resource Request to Service Provider</p>
     		  </div>
     		 <div class="wrap">
     		 	<div class="services">
     			  
 <div  style="width: 1024px;height: 500px;margin-left:350px" class="field">
       <%
       String pro=request.getParameter("pro");
       
       if(pro==null){
       pro="access";
       }
       %>                
    <form action="regist.jsp" method=get  onsubmit="return validateTime();">
       <br>

         <pre><label style="color: white">U_Name</label>
<input type=text id="uid"name=uid><br></pre><br>

<pre><label style="color: white">Password </label>
<input type=password id="pwd" name=pwd maxlength="7"><br></pre><br>

<pre><label style="color: white">Server      </label>
<input type=text readonly value="<%=pro%>" id="Provider" name=Provider><br></pre>
<br>
<pre><label style="color:white">Database Size</label>
<input value="10000" id="db"type=hidden readonly name=db></pre>
<pre>
<label style="color: white">Domain               
 </label><input type=text id="domain"name=domain>
<pre><label style="color: white">db 
<input type=text id="dsize" name=dsize value="500" maxlength="3" ><br></pre><br>

<pre><label style="color: white">Date from             </label><input type=text readonly value="<%= new java.util.Date() %>" id="date" name=date><br></pre><br>
<pre><label style="color: white">NO.of.D/M/Y        </label><input type=text id="date1"name=date1 maxlength="3"><br></pre><br>
<pre><label style="color: white">Plan                     </label><select  id="plan"style="width: 150px"name="plan"><br>
                <option>day </option>
                <option>year </option>
                <option>month</option>
            </select></pre><br>



<%
     String msg= request.getParameter("msg");
if(msg!=null){
%>
<div style="margin-left:100px">
    <font style="color: #CC0000"><%=msg%></font>
</div>
        <%
}
%><br>
       <pre>               <input id="contacts-form"type=submit name=tbut value="click here"><br></pre>

            

                         <div class="aligncenter">
                                                                                                                  
                                                                                                                    </div>
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

