<%-- 
    Document   : downlaod
    Created on : 26 Feb, 2017, 11:19:04 PM
    Author     : Development
--%>

<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
             String path = request.getSession().getServletContext().getRealPath("/");
               String patt=path.replace("\\build", "");
                
            String pid=request.getParameter("name");
  String pid1=request.getParameter("id");
  String strPath3 = patt+"Hide_Files"+"\\"+pid1+pid;
          /* response.setContentType("text/html");  
PrintWriter out1 = response.getWriter();


String filename = "strPath3";   
String filepath = strPath3;  
response.setContentType("APPLICATION/OCTET-STREAM");   
response.setHeader("Content-Disposition","attachment; filename=\"" + pid + "\"");   
  
FileInputStream fileInputStream = new FileInputStream(filepath);  
            
int i;   
while ((i=fileInputStream.read()) != -1) {  
out1.write(i);   
}   
fileInputStream.close();   
out1.close();   */
 
  try{

    	   File afile =new File(strPath3);

    	   if(afile.renameTo(new File("E:\\" + afile.getName()))){
    		System.out.println("File is moved successful!");
                response.sendRedirect("Master_file.jsp?msg=File is moved successful!");
    	   }else{
    		System.out.println("File is failed to move!");
                     response.sendRedirect("Master_file.jsp?msg=File is failed to move!");
    	   }

    	}catch(Exception e){
    		e.printStackTrace();
    	}
    
            %>
    </body>
</html>
