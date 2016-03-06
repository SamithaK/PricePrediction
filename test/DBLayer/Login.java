/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DBLayer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author SAMITHA
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            
            String un = request.getParameter("UserName");
            String pw = request.getParameter("password");
           out.println(un);
           out.println(pw);
             
   
      
        
   String UserType="";
    int idUser=0;
    String Name="";
    String Bname="";
            
            ResultSet rs = DBLayer.DB.get().createStatement().executeQuery("select * from user where UserName='" + un + "' and password='" + pw + "'");
            if (rs.next()) {
                HttpSession session = request.getSession();
                
                 int cookieIndex = -1;
                
           for(int i = 0; i < request.getCookies().length; i++ ) {
           if( request.getCookies()[i].getName().equals("user")) {
               cookieIndex = i;
           }
        }
                
               session.setAttribute("idUser", rs.getString("idUser")); 
               session.setAttribute("UserName", rs.getString("UserName"));  
               session.setAttribute("Password", rs.getString("Password")); 
               session.setAttribute("UserType", rs.getString("UserType")); 
               
               Cookie myCookie = new Cookie("UserType", UserType);
            //   Cookie myCookie1 = new Cookie("idUser", idUser);
                Cookie myCookie2 = new Cookie("UserName", Name);
               // Cookie myCookie3 = new Cookie("Bname",Bname);
                myCookie.setMaxAge(1000);

                response.addCookie(myCookie);
           //     response.addCookie(myCookie1);
                response.addCookie(myCookie2);
               
               response.addCookie(myCookie);
               
               response.sendRedirect("index.jsp");
//                
            } else {
                response.setContentType("text/html");  
               out.println("<script type=\"text/javascript\">");  
               out.println("alert('Username or password is incorrect!');");  
               out.println("</script>");
               response.setHeader("Refresh", "2;Login.jsp");
             //  response.sendRedirect("http://localhost:8080/OOP/Login.jsp");
            }
        }
        catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
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
