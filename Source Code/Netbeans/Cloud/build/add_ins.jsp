<%-- 
    Document   : add_ins
    Created on : 27 Feb, 2017, 12:43:36 PM
    Author     : Development
--%>
<%-- 
    Document   : Master_file
    Created on : 26 Feb, 2017, 7:57:54 PM
    Author     : Development
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
                                                 <li><a href="Play_Video.jsp">Home</a></li>
                                                  <li><a href="info.jsp">Get Secure Info</a></li>
                                                <li  class="active"><a href="add_ins.jsp">Add User Interest </a></li>
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
           <form name="form"action="add_ins1.jsp" method="post" onsubmit="return Form_Validation();">
               Select Interest      <Select name="cat">
                                <option value="Education">Education</option>
                                 <option value="Sports">Sports</option>
                                  <option value="Funny">Funny</option>
                                   <option value="Movie">Movie</option>
                                    <option value="Tutorial">Tutorial</option>
                                  
                            </Select>
               <br>
               <br>
               Select Provider    <Select name="prov">
                                <%
                                      try {
            Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
                 String qry="select * from provider";
        Statement   stmt = con.createStatement();
               ResultSet  rst = stmt.executeQuery(qry);
               while(rst.next())
                    {
                        %>
                        <option value="<%=rst.getString("id")%>"><%=rst.getString("id")%></option>
                        <%
                    }
               
                  %>
                </select> <br>



<input type="submit" value="ADD INTEREST" class="uiButton" onclick="return validateAll()" > <span style="padding-left:20px"></span>
		    </form> 
                 
                <br>
                <br>
                <table border="3">
                     
<%
                                      
 String qry11="select * FROM add_ins where usr_id='"+session.getAttribute("username")+"'  ";

       Statement   s2 = con.createStatement();  
               ResultSet  r1 = s2.executeQuery(qry11);
              while(r1.next())
                    {
                        
             %>
             <tr> <td><%=r1.getInt(1)%></td> 
                 <td><%=r1.getString(2)%></td>
              <td><%=r1.getString(3)%></td>
              <td><a href="cancel_ins.jsp?id=<%=r1.getInt(1)%>">Remove</a></td>
              <td><a href="interst_view.jsp?id=<%=r1.getString(2)%>&pro=<%=r1.getString(3)%>">Play</a></td>
             </tr>
             <%
                    }
  }
                   catch(Exception e)
                   {
                       System.out.println(e);
}
%>
                     
                  </table>
    </div>
          
			 
     		</div>
     	  </div>    	
     
   </div>       
  
 
 
		<div class="copy_right">
				<p>Company Name © All rights Reseverd  </p>
		 </div>
</body>
</html>

