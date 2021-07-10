<%@page import="Hiding.CPT"%>
<%@page import="java.net.InetAddress"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.io.*,java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>ONLINE DATA ACCESS</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="styles.css" rel="stylesheet" type="text/css" />

        <script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="lib/jquery.tools.js"></script>	
        <script type="text/javascript" src="lib/jquery.custom.js"></script>

        <!-- Pirobox setup and styles -->
        <script type="text/javascript" src="lib/pirobox.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $().piroBox({
                    my_speed: 400, //animation speed
                    bg_alpha: 0.1, //background opacity
                    slideShow : false, // true == slideshow on, false == slideshow off
                    slideSpeed : 4, //slideshow duration in seconds(3 to 6 Recommended)
                    close_all : '.piro_close,.piro_overlay'// add class .piro_overlay(with comma)if you want overlay click close piroBox

                });
            });
        </script>

        <%
            String msg = request.getParameter("username");
            if (msg != null) {
                session.invalidate();
            }
        %>

        <link href="images/style.css" rel="stylesheet" type="text/css" />


        <!-- Pirobox setup and styles end-->

    </head>
    <body>


        <div id="main">
            <!-- header begins -->
            <div id="header">

                <div id="buttons">
                    <a></a><div class="but_razd"></div>
                    <a href="Options.jsp?username=<%=msg%>" class="but"  title="">Options</a><div class="but_razd"></div>
                    <a href="Uploadfiles.jsp?username=<%=msg%>" class="but"  title="">Upload Files</a><div class="but_razd"></div>
                    <a href="Downloadfiles.jsp?username=<%=msg%>" class="but"  title="">Files</a><div class="but_razd"></div>
                   <a href="Logout.jsp" class="but"  title="">Log Out</a>
                </div>

            </div>
            <!-- header ends -->

            <!-- content begins -->       
            <div class="gallery">
                <div class="gallery_bot">
                    <h1>Our Photo Gallery</h1>
                    <div class="row">
                        <div class="box_img2">
                            <div class="g_size"><a class="pirobox_gal1" title="1st Project Image"><img src="images/upload.png" alt="" /></a></div>
                        </div>
                        <div class="box_razd"></div>

                        <div class="box_img3">  <br/><br/><br/> 
                            <center><table border="2">
                                    <tr><td><h1>FILE UPLOAD</h1></td></tr>

                                    <%
         try {
            
            
            String saveFile="",l="",ln="",mname="",dob="",celno="";
                String sex="",voterno="",email="",bg="",pstreet="",cstreet="",parea="",carea="",pcity="",ccity="";
                   String ppinno="",cpinno="",pass="",repass="";
            int fileidnum=0,downloadcount=0,vc=0;
            String contentType = request.getContentType();
            // Create a factory for disk-based file items
            DiskFileItemFactory factory = new DiskFileItemFactory();

// Set factory constraints
            factory.setSizeThreshold(4012);
//factory.setRepository("c:");

// Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

// Set overall request size constraint
            //upload.setSizeMax(10024);
String rtime=null,ftype=null;
// Parse the request
            List items = null;
            try {
                items = upload.parseRequest(request);
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
            byte[] data = null;
            String fileName = null;
// Process the uploaded items
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();

                if (item.isFormField()) {
                    //processFormField(item);

                    String name = item.getFieldName();
                    String value = item.getString();

                    if (name.equalsIgnoreCase("usr")) {
                        l = value;
                        System.out.println("fn" + l);
                    } 
                    
                  else  if (name.equalsIgnoreCase("ukey")) {
                        ln = value;
                        System.out.println("fn" + l);
                    } 
                            
                  else  if (name.equalsIgnoreCase("ukey")) {
                        rtime = value;
                        System.out.println("fn" + l);
                    } 
                            
                  else  if (name.equalsIgnoreCase("ftype")) {
                        ftype = value;
                        System.out.println("fn" + l);
                    } 
                    else {
                        System.out.println("ERROR");
                    }
                } else {
                    data = item.get();
                    fileName = item.getName();
                }
            }
            
           String path = request.getSession().getServletContext().getRealPath("/");
               String patt=path.replace("\\build", "");
               CPT cp=new CPT();     
            File ffs=new File("D://"+fileName);
            System.out.println(ln);
               boolean sts=cp.retrieveFile(ffs,ln.trim(),true,patt);
               
             if(true)
             {
                      response.sendRedirect("info.jsp?msg=Video Uploaded Successfully");
             }
             else
             {
                 response.sendRedirect("info.jsp?msg=database problem");
             }
               
                
            
            }catch(Exception e)           {
                response.sendRedirect("info.jsp?msg="+e);
                }       
                                                    
                
            
           
        
         
                                                    %>

                                    </br>      </table>
                            </center></div>

                    </div>
                    <div style="height:13px"></div>

                    <div style="height:10px"></div>

                </div>



            </div>
        </div>

    </body>
</html>
