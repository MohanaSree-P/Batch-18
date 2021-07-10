/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mvinoth
 */
@WebServlet(urlPatterns = {"/Share_Video"})
public class Share_Video extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(true);
        
        try {
          String id,fname,rtime,uname,key,stime;
          id=request.getParameter("id");
            fname=request.getParameter("name");
              rtime=request.getParameter("rtime");
                uname=request.getParameter("usr");
                                 stime=request.getParameter("tim");
                                 final String ALPHA_NUM = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
                                 StringBuffer sb = new StringBuffer();
for (int i = 0; i < 5; i++) {
int ndx = (int) (Math.random() * ALPHA_NUM.length());
sb.append(ALPHA_NUM.charAt(ndx));
}
key=sb.toString();
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
Statement stmt=con.createStatement();
//System.out.println("insert into useraccess (User_name,Video_id,Video_name,rtime,s_time,key) values('"+uname+"','"+id+"','"+fname+"','"+rtime+"','"+stime+"','"+key+"')");
ResultSet rs=stmt.executeQuery("select * from useraccess where (Video_id='"+id+"' and  User_name='"+uname+"') or (s_time='"+stime+"' and Video_id='"+id+"') ");
if(rs.next())
{
    session.setAttribute("msg","Already set security this time or User" );
       ResultSet rs11=stmt.executeQuery("select count(*) as cc from useraccess where Video_id='"+id+"'  ");
       int cc1=0;
if(rs11.next())
{
    cc1=rs11.getInt("cc");
}
if(cc1<4)
{
         response.sendRedirect("Provider_Play.jsp");
}
else
{
      response.sendRedirect("pro_Share_Play.jsp");
}
}
else
{
    int cc=0;
    ResultSet rs1=stmt.executeQuery("select count(*) as cc from useraccess where Video_id='"+id+"'  ");
if(rs1.next())
{
    cc=rs1.getInt("cc");
}

if(cc<4)
{
int i=stmt.executeUpdate("insert into useraccess (User_name,Video_id,Video_name,rtime,s_time,key1,verify) values('"+uname+"','"+id+"','"+fname+"','"+rtime+"','"+stime+"','"+key+"','no')");
      if(i>0)
      {
         session.setAttribute("msg","Successfully Added" );
         response.sendRedirect("Provider_Play.jsp");
      }
      else
      {
         session.setAttribute("msg","Database Error" );
         response.sendRedirect("Provider_Play.jsp");  
      }
}else
{
     session.setAttribute("msg","Already set key Four user" );
         response.sendRedirect("pro_Share_Play.jsp");
}

}    } catch (ClassNotFoundException ex) {
                Logger.getLogger(Share_Video.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(Share_Video.class.getName()).log(Level.SEVERE, null, ex);
            }
     

        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
