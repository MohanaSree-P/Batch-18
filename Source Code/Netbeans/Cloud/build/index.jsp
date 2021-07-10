<%-- 
    Document   : index
    Created on : Jun 24, 2014, 4:11:32 PM
    Author     : vinoth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Video Streaming</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all"/>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.cslider.js"></script>
<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
		<script type="text/javascript">
			$(function() {
			
				$('#da-slider').cslider({
					autoplay	: true,
					bgincrement	: 450
				});
			
			});
		</script>
		<script type="text/javascript">
				jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
		</script>
                 <script>
            window.location.hash = "no-back-button";
            window.location.hash = "no-back-button";
            window.onhashchange = function()
            {
                window.location.hash = "back-button";
            }
        </script>
</head>
<body>
<div class="header">
   
       <div class="header_top">
            <div style="font-size: 25px;color: white;margin-left: 120px" >Implementing TAAC in Cloud for Video Content Sharing & Hiding</div>
	 <div class="wrap">		
		 		
					<div class="menu">
					    <ul>
                                                <li class="active"><a href="index.jsp">Home</a></li>
                                                <li><a href="Login.jsp">Login</a></li>
                                                <li><a href="Register.jsp">Register</a></li>
                                                 <li><a href="Reg_Provider.jsp">Provider Register</a></li>
                                                <li><a href="Login_Provider.jsp">Provider</a></li>
                                                <li><a href="Admin_Login.jsp">Admin</a></li>
							
							<div class="clear"></div>
						</ul>
					</div>
	    		 <div class="clear"></div>
	       </div>
	   </div>
 
    <div class="header_bottom" >
        <%
            String msg=request.getParameter("msg");
            if(msg!=null)
            {
                %>
                <script>
                    alert('<%=msg%>')
                </script>
                <%
            }
            %>
			 <div class="slider">
			   <div class="wrap">
  	     		<div id="da-slider" class="da-slider">
				<div class="da-slide">
					<div class="slide-text">
                                            <img src="bg2.jpg">
					<p></p>
					   
					</div>
                                    <div class="da-img"><img src="slide/s1.jpg" alt="image01" /></div>
				  <div class="clear"></div>
				</div>
				<div class="da-slide">
					<div class="slide-text">
					
					<p> </p>					
					
					</div>
                                    <div class="da-img"><img src="slide/s2.png" alt="image01" /></div>
				  <div class="clear"></div>
				</div>
				<div class="da-slide">
					<div class="slide-text">
					
					<p> </p>
					
					</div>
                                    <div class="da-img"><img src="slide/s3.jpg" alt="image01" /></div>
				  <div class="clear"></div>
				</div>
				<div class="da-slide">
					<div class="slide-text">
					
					<p></p>
					
					</div>
                                    <div class="da-img"><img src="slide/s4.jpg" alt="image01" /></div>
				  <div class="clear"></div>
				</div>
				<nav class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</nav>
			</div>
		  </div>
  	   </div>
   <div class="clear"></div>
  </div>
  </div>


		
</body>
</html>

