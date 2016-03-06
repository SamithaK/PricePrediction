/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DBLayer;

import com.sun.corba.se.spi.protocol.RequestDispatcherDefault;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SAMITHA
 */
@WebServlet(name = "ViewVehicle", urlPatterns = {"/ViewVehicle"})
public class ViewVehicle extends HttpServlet {

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
    
//        Connection conn = null;
//        String url = "jdbc:mysql://localhost:3306/";
//        String dbName = "VSS";
//        String driver = "com.mysql.jdbc.Driver";
//        String userName = "root";
//        String password = "123";
//        Statement st;
          int VYear = Integer.parseInt(request.getParameter("year")); 
     //String Model= request.getParameter("Model");
     String name = request.getParameter("name");
     String TR= request.getParameter("Transmission"); //Transmission
     String ML= request.getParameter("Mileage"); // Mileage
     String User= request.getParameter("User");
         try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
    
            ArrayList al = null;
            ArrayList V_list = new ArrayList();
        ResultSet rs = DBLayer.DB.get().createStatement().executeQuery("select *from Vehicle where Model like '" + name +"%");  
        
           while (rs.next()) {
                al = new ArrayList();
 
                out.println(rs.getString(1));
                out.println(rs.getString(2));
                out.println(rs.getString(3));
                out.println(rs.getString(4));
                out.println(rs.getString(5));
                out.println(rs.getString(6));
                out.println(rs.getString(7));
                out.println(rs.getString(8));
                out.println(rs.getBlob(9));
//                al.add(rs.getString(1));
//                al.add(rs.getString(2));
//                al.add(rs.getString(3));
//                al.add(rs.getString(4));
//                al.add(rs.getString(5));
//                al.add(rs.getString(6));
//                al.add(rs.getString(7));
//                al.add(rs.getString(8));
//                al.add(rs.getBlob(9));
//                System.out.println("al :: " + al);
//                V_list.add(al);
            } 
           
//           request.setAttribute("Vehicle_List", V_list);
//           RequestDispatcher view = request.getRequestDispatcher("/Vehicles.jsp");
//           view.forward(request, response);
        
            
        }
           catch (Exception e) {
            e.printStackTrace();
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
