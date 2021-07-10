<%-- 
    Document   : User_Play
    Created on : Nov 8, 2016, 10:38:24 AM
    Author     : mvinoth
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                            <table style="background-color: #ccffff" border="3">
        <%
               String name1=null;
               String rtime=null;
            String uname=(String)session.getAttribute("username");
            String id=request.getParameter("id");
             Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
Statement stmt=con.createStatement();
//System.out.println("insert into useraccess (User_name,Video_id,Video_name,rtime,s_time,key) values('"+uname+"','"+id+"','"+fname+"','"+rtime+"','"+stime+"','"+key+"')");
ResultSet rs=stmt.executeQuery("select * from useraccess where Video_id='"+id+"' and  User_name='"+uname+"' ");
if(rs.next())
{
   if(rs.getString("verify").equals("no"))
   {
       %>
       <tr><td>Your Key Is</td><td><font color="red"><%=rs.getString("key1")%></font></td><td><a href="verify1.jsp?id=<%=rs.getInt(1)%>">Verify</a></td></tr>
       <%
   }
   else
   {
    
       int i=1;
       String ss="0";
       String uname1=null;
       String id1=null;
    
       ResultSet rs1=stmt.executeQuery("SELECT *, CAST(SUBSTRING_INDEX(s_time, '-', -1) AS UNSIGNED) as num FROM useraccess where Video_id='"+id+"'  order by num asc ");
        %><tr>
           <td>Server time</td>
           <td><%=ss%>
               <%
       while(rs1.next())
       {
           name1=rs1.getString("Video_name");
           rtime=rs1.getString("rtime");
           if(i==1)
           {
                %>
                -<%=rs1.getString("s_time")%></td><td><a href="playVideo.jsp?name=<%=rs1.getString("Video_name")%>&t1=0&t2=<%=rs1.getString("s_time")%>">Play Server File</a></td>
       </tr>
         <tr>
           <td><%=rs1.getString("User_name")%></td>
           <td><%=rs1.getString("s_time")%>
       <%
           }
           else if(i==2)
           {
               %>
               -<%=rs1.getString("s_time")%></td>
           <td>
               <%
if(id1.equals("no"))
{
    %>
    Not Verify
    <%
}
else
{
%>  
               <a href="playVideo.jsp?name=<%=rs1.getString("Video_name")%>&t1=<%=ss%>&t2=<%=rs1.getString("s_time")%>">Play <%=uname1%> part File</a>
               <%
}
%> 
           </td>
       </tr>
        <tr>
           <td><%=rs1.getString("User_name")%></td>
           <td><%=rs1.getString("s_time")%>
               <%
           }
           else if(i==3)
           {%>
           -<%=rs1.getString("s_time")%></td>
            <td>
               <%
if(id1.equals("no"))
{
    %>
    Not Verify
    <%
}
else
{
%>  
               <a href="playVideo.jsp?name=<%=rs1.getString("Video_name")%>&t1=<%=ss%>&t2=<%=rs1.getString("s_time")%>">Play <%=uname1%> part File</a>
               <%
}
%> 
           </td>
       </tr>
        <tr>
           <td><%=rs1.getString("User_name")%></td>
           <td><%=rs1.getString("s_time")%>
           <%
               
           }
           else if(i==4)
           {
              %>
               -<%=rs1.getString("s_time")%></td>
            <td>
               <%
if(id1.equals("no"))
{
    %>
    Not Verify
    <%
}
else
{
%>  
               <a href="playVideo.jsp?name=<%=rs1.getString("Video_name")%>&t1=<%=ss%>&t2=<%=rs1.getString("s_time")%>">Play <%=uname1%> part File</a>
               <%
}
%> 
           </td>
       </tr>
       <tr>
           <td><%=rs1.getString("User_name")%></td>
           <td><%=rs1.getString("s_time")%>-<%=rs1.getString("rtime")%></td>
            <td>
               <%
if(rs1.getString("verify").equals("no"))
{
    %>
    Not Verify
    <%
}
else
{
%>  
               <a href="playVideo.jsp?name=<%=name1%>&t1=<%=rs1.getString("s_time")%>&t2=<%=rs1.getString("rtime")%>">Play <%=rs1.getString("User_name")%> part File</a>
               <%
}
%> 
           </td>
       </tr>
       <%  
           }
           else
           {
           %>
       <tr>
           <td><%=rs1.getString("User_name")%></td>
           <td><%=ss%>-<%=rs1.getString("s_time")%></td>
       </tr>
       <%
           }
           uname1=rs1.getString("User_name");
           ss=rs1.getString("s_time");
           id1=rs1.getString("verify");
           i++;
       }
   }
   ResultSet rs11=stmt.executeQuery("select * from useraccess where Video_id='"+id+"'  and verify='no'");
    if(rs11.next())
    {
        %>
        <tr>
        <td>
            Cant Paly Full Video 
        </td>
        </tr>
        
        <%
    }
    else
    {
       %>
        <tr>
        <td>
            <a href="playVideo.jsp?name=<%=name1%>&t1=0&t2=<%=rtime%>">Play Full Video</a>
        </td>
        </tr>
        
        <%  
    }
}
else
{
    out.println("Not Access this video for you");
}
    
              
%>
        </table>
   </div>
     	  </div>    	
     
   </div>       
  
 
 
		<div class="copy_right">
				<p>Company Name © All rights Reseverd  </p>
		 </div>
</body>
</html>


