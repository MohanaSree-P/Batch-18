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
            <div style="font-size: 25px;color: white;margin-left: 120px" >Implementing TAAC in Cloud for Video Content Sharing & Hiding</div>
	 <div class="wrap">		
		 	
					<div class="menu">
					     <ul>
                                                 <li class="active"><a href="Admin_Home.jsp">Home</a></li>
                                                
                                                 <li><a href="Admin_Login.jsp">Logout</a></li>
							<div class="clear"></div>
						</ul>
					</div>
	    		 <div class="clear"></div>
	       </div>
	  
  </div>

  <div class="main">
  	    		
      <div class="services_heading" style="margin-right: 200px">
     		  <p>Admin Home</p>
     		  </div>
     		 <div class="wrap">
     		 	<div class="services">
     			  
 
 <div style="margin-left:100px;height: 200px;">
      <div class="services_heading" style="margin-right: 200px">
     		  <p>Channel Details</p>
     		  </div>
     		 <div class="wrap">
     		 	<div class="services">
     			  
 
 <div >
     <table border="1" style="color: white">
         <thead>
         <th>Id</th>
     <th>Video Name</th>
      <th>Timing</th>
      <th>Channel Name</th>
      
       
     </thead>
     
     <tbody>
      <%
            String msg=(String)session.getAttribute("msg");
        
            if(msg!=null)
            {
                %>
                <script>
                    var ms='<%=msg%>';
                    alert(ms);
                </script>
                <%
                session.removeAttribute("msg");
            }
     
          
          DateFormat df = new SimpleDateFormat("yy-MM-dd");
 String formattedDate = df.format(new Date());


           Statement stmt;
        try {
            Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
           

Statement s2;

try {
        
        
     String qry1="select * FROM VIDEO ";

           s2 = con.createStatement();  
               ResultSet  r = s2.executeQuery(qry1);
              while(r.next())
                    {
                        
             
                    
                    

                                      
                                              %>
                                              <tr>
                                       
                                                  <td><%=r.getString(1)%></td>
                                                   <td><%=r.getString(2)%></td>
                                                    <td><%=r.getString(3)%></td>
                                                     <td><%=r.getString(5)%></td>
                                                 
                                              </tr>

       
      
        
        
        
        <%


}}
catch(Exception r){
System.out.println(r);
}
 



        }                           
            catch (Exception e) {
          e.printStackTrace();
        }

    %>
  </tbody> </table>  
                    </div>
          
			 
     		</div>
     	  </div>    	
     
   </div>       
  
 
 
		
</body>
</html>

