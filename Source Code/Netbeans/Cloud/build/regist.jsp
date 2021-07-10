<%--
    Document   : login
    Created on : Jan 31, 2011, 4:54:29 PM
    Author     : vinodth
--%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<%@ page import="java.sql.*" %>
<html>
    <HEAD>


 </HEAD>

 <BODY>
 <br><br><br><br><br>
 <table width="250px" align="center" bgcolor="#CDFFFF" border=0 style="border:1px solid;">
<%
String plan =request.getParameter("plan");
 String uid =request.getParameter("uid");
String pwd= request.getParameter("pwd");

String qry=null;
DateFormat df = new SimpleDateFormat("yy-MM-dd");
String formattedDate = df.format(new Date());


String Provider= request.getParameter("Provider");
String lname= request.getParameter("db");

String domain =request.getParameter("domain");
String dsize= request.getParameter("dsize");
String datee= request.getParameter("date");
String datee1= request.getParameter("date1");
 Timestamp tstamp = new Timestamp(00-00-00);
int cost=0;


if(plan.equals("year")&& Provider.equals("access")){cost=5000;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' YEAR)";
}
if(plan.equals("day")&& Provider.equals("access")){cost=30;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' DAY)";
}
if(plan.equals("month")&& Provider.equals("access")){cost=500;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' MONTH)";
}


if(plan.equals("year")&& Provider.equals("server1")){cost=5500;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' YEAR)";
}
if(plan.equals("day")&& Provider.equals("server1")){cost=40;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' DAY)";
}
if(plan.equals("month")&& Provider.equals("server1")){cost=600;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' MONTH)";
}


if(plan.equals("year")&& Provider.equals("server2")){cost=6000;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' YEAR)";
}
if(plan.equals("day")&& Provider.equals("server2")){cost=45;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' DAY)";
}
if(plan.equals("month")&& Provider.equals("server2")){cost=700;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' MONTH)";
}


if(plan.equals("year")&& Provider.equals("server3")){cost=6500;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' YEAR)";
}
if(plan.equals("day")&& Provider.equals("server3")){cost=50;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' DAY)";
}
if(plan.equals("month")&& Provider.equals("server3")){cost=800;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' MONTH)";
}

int dsize1=Integer.parseInt(dsize)*10;
int plancost=cost*Integer.parseInt(datee1);
plancost=plancost+dsize1;
session.setAttribute("plancost", plancost);
java.util.Date d = new java.util.Date();
java.sql.Timestamp t = new java.sql.Timestamp( d.getTime());
  Date date = new Date();
  String ddd=date.toString();
Statement s;
Statement s1;
String msg=null;
Statement s2;
try {
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

     String qry1="Select * from admin where uid ='"+uid+"'";

           s1 = con.createStatement();
               ResultSet  rstt = s1.executeQuery(qry1);
              if(rstt.next())
                    {
                        msg="User Name Already Exist";
                     }
else{
s2 = con.createStatement();
s2.executeUpdate("insert into cost values('"+uid+"','500000')");
      try {
         

    

           s = con.createStatement();
               ResultSet  rst = s.executeQuery(qry);
              if(rst.next())
                    {
                
String x=rst.getString(1)+" ";
String dd="00:00:00.01";
String xx=x+dd;
	
	PreparedStatement st=null;

        try{

       st =con.prepareStatement("insert into admin values (?,?,?,?,?,?,?,?)");

st.setString(1, uid);
st.setString(2, pwd);
st.setString(3, Provider);
st.setString(4, lname);
st.setString(5, domain);
st.setString(6, dsize);
st.setTimestamp(7, t);
st.setTimestamp(8,tstamp.valueOf(xx));
String domai=" "+domain;
Statement stm;
try {
          Class.forName("com.mysql.jdbc.Driver");
       con= DriverManager.getConnection("jdbc:mysql://localhost:3306/"+Provider,"root","admin");

   String qry3="CREATE TABLE  "+domai+"(uid int(10) unsigned NOT NULL AUTO_INCREMENT,name varchar(50) CHARACTER SET latin1 DEFAULT NULL,file longblob,f_name varchar(100) CHARACTER SET latin1 DEFAULT NULL,access varchar(45) CHARACTER SET latin1 DEFAULT NULL,index1 varchar(45) CHARACTER SET latin1 DEFAULT NULL,bname varchar(45) CHARACTER SET latin1 DEFAULT NULL,author  varchar(45) CHARACTER SET latin1 DEFAULT NULL,cat varchar(45) CHARACTER SET latin1 DEFAULT NULL,enc varchar(45) CHARACTER SET latin1 DEFAULT NULL,PRIMARY KEY ( uid ),FULLTEXT KEY  Index_2  ( index1 ),FULLTEXT KEY  name (name),FULLTEXT KEY index1 (index1))ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci";    
       //String qry2="CREATE TABLE "+domai+"(uid int(10) unsigned NOT NULL AUTO_INCREMENT,name varchar(50) DEFAULT NULL ,file LONGBLOB,f_name varchar(100)DEFAULT NULL,access varchar(100)DEFAULT NULL,PRIMARY KEY (`uid`))";
                 
                 String path = request.getSession().getServletContext().getRealPath("/");   
    out.println(path);
    String patt=path.replace("\\build", "");
File dir = new File(patt+domain);  
dir.mkdir();
           stm = con.createStatement();
              stm.executeUpdate(qry3);
  //response.sendRedirect("reg.jsp");
              
}
catch (Exception e1) {
          out.println(e1);
           //response.sendRedirect("index_1.jsp?msg="+e1);
        }



      int i =st.executeUpdate();
    
       }
catch(Exception e)
        {
  out.println(e);
     msg="Already Exist "+ e;
     
            }
    


       }
       try{ Class.forName("com.mysql.jdbc.Driver");
       con= DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

               Statement stw =  con.createStatement();
               Statement stw1 =  con.createStatement();
                stw.executeUpdate("update cost set cost=cost-" + plancost + "  where uid='" + uid + "'");
                stw1.executeUpdate("update bank set money=money+" + plancost + "  where id='1'");
                 session.setAttribute("username",uid);
                session.setAttribute("data",Provider);
                session.setAttribute("tbl",lname);


              }catch(Exception w){
              out.println(w);
              msg="Already Exist "+ w;
              }


      }
                catch (Exception e) {
          out.println(e);
           msg="Already Exist "+ e;
          // response.sendRedirect("index_1.jsp?msg="+e);
        }
}}catch (Exception e1) {
         
    msg="Already Exist "+ e1;
    out.println("Already Exist "+ e1);
         //  response.sendRedirect("index_1.jsp?msg="+e1);
        }
if(msg!=null)
{
   response.sendRedirect("Register.jsp?"+msg);
}
else
{
    response.sendRedirect("hosting_1.jsp");
}
%>

 </table>
 </BODY>
</html>
