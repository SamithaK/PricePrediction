/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DBLayer;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SAMITHA
 */
@WebServlet(name = "Vehicle", urlPatterns = {"/Vehicle"})
public class Vehicle extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
     int VYear = Integer.parseInt(request.getParameter("Year"));
     String Model= request.getParameter("Model");
     String Engine = request.getParameter("Engine");
     String TR= request.getParameter("Transmission");; //Transmission
     String ML= request.getParameter("Mileage");; // Mileage
     String User= request.getParameter("User");
     String price= request.getParameter("price");
     String img= request.getParameter("Image");
          Connection f = DB.get();
            Statement s = f.createStatement();
            s.executeUpdate("insert into Vehicle set Year='" + VYear + "',Model='" + Model + "',Transmission='" + TR + "',Engine='" + Engine + "',Mileage='" + ML + "',price='" + price + "',User='" + User + "',photo='" + img + "'");
        
               response.setContentType("text/html");  
               out.println("<script type=\"text/javascript\">");  
               out.println("alert('Your "+Model+" Successfuly added!');");  
               out.println("</script>");
               response.setHeader("Refresh", "2;AddVehicle.jsp");
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(Vehicle.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Vehicle.class.getName()).log(Level.SEVERE, null, ex);
           
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
        processRequest(request, response);
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
