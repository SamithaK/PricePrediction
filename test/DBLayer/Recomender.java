/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DBLayer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.sql.ResultSet;
import java.util.ArrayList;
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
@WebServlet(name = "Recomender", urlPatterns = {"/Recomender"})
public class Recomender extends HttpServlet {


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
    String model="";
     String bstyle = request.getParameter("bstyle");
     String amount= request.getParameter("people"); //Transmission
     String tr= request.getParameter("Transmission"); // Mileage
     String engine= request.getParameter("engine");
     String drive= request.getParameter("drive");
         try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
    
            ArrayList al = null;
            ArrayList V_list = new ArrayList();
         //ResultSet rs = DBLayer.DB.get().createStatement().executeQuery("select model from vsugest where bstyle='" + bstyle + "' and people='" + amount + "'and transmission='" + tr + "'and engine='" + engine + "'and drive='" + drive +"'");    
     //   ResultSet rs = DBLayer.DB.get().createStatement().executeQuery('SELECT model FROM vsugest WHERE bstyle="%s" AND people="%amount" AND transmission="%s" AND engine="%s" AND drive="%s"', bstyle, amount, tr, engine, drive);    
      //  ResultSet rs = DBLayer.DB.get().createStatement().executeQuery
//        ('SELECT model FROM vsugest WHERE bstyle="%s" AND people="%s" AND transmission="%s" AND engine="%s" AND drive="%s"', bstyle, amount, tr, engine, drive);
//         
//      //   ResultSet rs = DBLayer.DB.get().createStatement().executeQuery String.format('SELECT model FROM vsugest WHERE bstyle="%s" AND people="%amount" AND transmission="%s" AND engine="%s" AND drive="%s"', bstyle, amount, tr, engine, drive);
//         
//         
//           while(rs.next())
//        {
//            al = new ArrayList();
// 
//            model = rs.getString("model");
//            System.out.print(model);
//            out.println(rs.getString("model"));
//            al.add(rs.getString("model"));
//            
//        }
//       
           
//           request.setAttribute("Vehicle_List", V_list);
//           RequestDispatcher view = request.getRequestDispatcher("/VehicleSearch.jsp");
//           view.forward(request, response);
//        
            
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
