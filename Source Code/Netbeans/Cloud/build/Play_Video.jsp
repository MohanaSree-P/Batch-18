
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
                                                  <li><a href="add_ins.jsp">Add User Interest </a></li>
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
     		                 <%
 Integer hitsCount =
      (Integer)application.getAttribute("hitCounter");

 if(hitsCount<=0){
 response.sendRedirect("Home.jsp");
 }
 
 if(hitsCount<5){
%>
 <div style="font-size: 20px;color: #6fa803;margin-left: 300px">Running From Server-1 </div>
                        <%

}
 
 if(hitsCount>=5 && hitsCount<10){
%>
 <div style="font-size: 20px;color: #6fa803;margin-left: 300px">Running From Server-2 </div>
                        <%

}
 
 if(hitsCount>10){
%>
 <div style="font-size: 20px;color:#6fa803;margin-left: 300px">Running From Server-3 </div>
                        <%

}
%>	  
 
 <div>
     <table border="1" style="color: white">
         <thead>
         <th>Id</th>
     <th>Video Name</th>
      <th>Timing</th>
      <th>Channel Name</th>
      <th>Watch</th>
     </thead>
     
     <tbody>
      <%DateFormat df = new SimpleDateFormat("yy-MM-dd");
 String formattedDate = df.format(new Date());

if(session.getAttribute("username")!=null ){
           Statement stmt;
        try {
            Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
                 String qry="select * from admin where uid='"+session.getAttribute("username")+"' and date1>'"+formattedDate+"'";
           stmt = con.createStatement();
               ResultSet  rst = stmt.executeQuery(qry);
               if(rst.next())
                    {
                   String DB=rst.getString("d_provider");
                    String tbl=rst.getString("u_tab");
                    session.setAttribute("tbl", tbl);
session.setAttribute("data", DB);

Statement s2;

try {
     String qry1="select * FROM VIDEO  ";

           s2 = con.createStatement();  
               ResultSet  r = s2.executeQuery(qry1);
              while(r.next())
                    {
                        
             
                    
                    

                                      
                                              %>
                                              <tr>
                                       <%
        DateFormat df1 = new SimpleDateFormat("HH:mm:ss");
 String formattedDate1 = df1.format(new Date());
        System.out.println(formattedDate1);
        %>            
                                                  <td><%=r.getString(1)%></td>
                                                   <td><%=r.getString(2)%></td>
                                                    <td><%=r.getString(3)%></td>
                                                     <td><%=r.getString(5)%></td>
                                                     <%
                                                      if(r.getString("ftype").equals("Secure"))
                        {%>
                        <td><a href="User_Play.jsp?name=<%=r.getString(2)%>&time=<%= formattedDate1 %>&id=<%=r.getString(1)%>">Secure Play</a></td>
                        <%
                        }
                                                      else
                                                      {
                            %>
                     
                                                     <td><a href="Video_Stream.jsp?name=<%=r.getString(2)%>&time=<%= formattedDate1 %>">Play</a></td>
                                             
                                                     <%
                                                      } %>
                                              </tr>

       
      
        
        
        
        <%


}
     
        
  
 String qry11="select * FROM videohide  ";

           s2 = con.createStatement();  
               ResultSet  r1 = s2.executeQuery(qry11);
              while(r1.next())
                    {
                        
             
                    
                    

                                      
                                              %>
                                              <tr>
                                       <%
        DateFormat df1 = new SimpleDateFormat("HH:mm:ss");
 String formattedDate1 = df1.format(new Date());
        System.out.println(formattedDate1);
        %>            
                                                  <td><%=r1.getString(1)%></td>
                                                   <td><%=r1.getString(2)%></td>
                                                    <td><%=formattedDate1%></td>
                                                 
                                                     <%
                                                      if(r1.getString("user").equals((String)session.getAttribute("username")))
                        {%>
                           
                             <td><%=r1.getString("rkey")%></td>
                        <td>
                            <a href="downlaod.jsp?name=<%=r1.getString(2)%>&id=<%=r1.getString(6)%>">Download</a></td>
                        <%
                        }
                                                      else
                                                      {
                            %>
                      <td>Play</td>
                                                     <td><a href="Video_Stream.jsp?name=<%=r1.getString(6)%><%=r1.getString(2)%>&time=<%= formattedDate1 %>">Play</a></td>
                                             
                                                     <%
                                                      } %>
                                              </tr>
                                              <%
                    }

}
catch(Exception r){
System.out.println(r);
}
 



                                       }
        else{
response.sendRedirect("Purchase.jsp?msg=Date Expired ");
        }}
            catch (Exception e) {
          e.printStackTrace();
        }
}
    %>
  </tbody> </table>
                    </div>
          
			 
     		</div>
     	  </div>    	
     
   </div>       
  
 
 
		<div class="copy_right">
				<p>Company Name © All rights Reseverd  </p>
		 </div>
</body>
</html>

