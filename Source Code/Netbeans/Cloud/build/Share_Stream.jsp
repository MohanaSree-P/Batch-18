
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<html>
  <head>
    <title>Rotating a video</title>
   
   
  </head>
  <body > 
      <%
      


String provider=(String)session.getAttribute("user");

if(provider != null){
if(provider.equals("provider1")){

provider="access";
}

if(provider.equals("provider2")){

provider="server1";
}

if(provider.equals("provider3")){

provider="server2";
}

if(provider.equals("provider4")){

provider="spam";
}}
          String id=null,fname=null,rtime=null,time;
            
          
                         id=request.getParameter("id");
                          fname=request.getParameter("name");
                          rtime=request.getParameter("time");
                          time=request.getParameter("time1");
                           String st = rtime.substring(0, 2);
                               System.out.println("time1"+st);
                               int tim=Integer.parseInt(st);
                                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
Statement stmt=con.createStatement();
                                      ResultSet rs11=stmt.executeQuery("select count(*) as cc from useraccess where Video_id='"+id+"'  ");
       int cc1=0;
if(rs11.next())
{
    cc1=rs11.getInt("cc");
}
if(cc1<4)
{
       
}
else
{
      response.sendRedirect("pro_Share_Play.jsp?name="+fname+"&time="+time+"&id="+id);
}
          %>
          <form action="Share_Video" method="post">
          <table>
              <tr><td>File Id</td><td><input type="text" name="id" value="<%=id%>" readonly></td></tr>
               <tr><td>File Name</td><td><input type="text" name="name" value="<%=fname%>" readonly></td></tr>
                <tr><td>Run Time</td><td><input type="text" name="rtime" value="<%=rtime%>" readonly></td></tr>
              <tr><td>Select time</td><td>
              <select name="tim">
                  <%
                      for(int i=1;i<=tim;i++)
                  {%>
                  <option value="<%=i%>"><%=i%></option>
                  <%                      
                  }
                      %>
              </select></td></tr>
              <tr><td>Select User</td><td>
                      
                      <%
                      
ResultSet rsx=stmt.executeQuery("select usr_id from add_ins where ins='"+request.getParameter("cat")+"' and  provider='"+session.getAttribute("usrid")+"'");
                      %>
                      <select name="usr" >

<%
  while(rsx.next())
   {
    String x=rsx.getString(1);
   %>
<option <%
           if(st !=null && st.equals(x))
   out.println(x);
      %>
    ><%=x%></option>
<%
   }
   %>
</select>
                  </td></tr>
              <tr><td><input type="submit" value="Add"></td></tr>
          </table>
  </form>
  </body>
</html>