/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.parking.src;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author moin
 */
@WebServlet(name = "ParkingServlet", urlPatterns = {"/ParkingServlet"})
public class ParkingServlet extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             Connection con = DBConnection.getDBConnection();
             HttpSession session = request.getSession();
              Statement st = null;
               ResultSet rs = null;
               int freeParking =0;
               int parkingCreated =0;
               st = con.createStatement();
          rs = st.executeQuery("select total_free,parking_created from bulding_floor_map where bulding_no='"+ request.getParameter("buildNo")+"' and floor_no="+ request.getParameter("floorNo") );
             while(rs.next()){
                 
                 freeParking = rs.getInt(1);
                 parkingCreated = rs.getInt(2);
                
             } 
            
      String query = " UPDATE bulding_floor_map SET bulding_no =? , floor_no=? ,total_free=?,parking_created=?, description=? WHERE bulding_no =? AND floor_no=? ";
              
  int userId =0;
      // create the mysql insert preparedstatement
      PreparedStatement preparedStmt = con.prepareStatement(query);
      preparedStmt.setString (1, request.getParameter("buildNo"));
      preparedStmt.setInt (2,  Integer.parseInt(request.getParameter("floorNo")));

      preparedStmt.setInt   (3,  Integer.parseInt(request.getParameter("parkingSpace"))+freeParking);
      preparedStmt.setInt(4, Integer.parseInt(request.getParameter("parkingSpace"))+parkingCreated);
      preparedStmt.setString    (5, request.getParameter("parkingSpaceDesc"));
          preparedStmt.setString (6, request.getParameter("buildNo"));
      preparedStmt.setInt (7,  Integer.parseInt(request.getParameter("floorNo")));
      
   int rowsAffecrted =   preparedStmt.executeUpdate();
       if(rowsAffecrted>0) {
         RequestDispatcher dd = request.getRequestDispatcher("createParking.jsp?msg=Parking allotted Successfully");

                                dd.forward(request, response);
       } 
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
        } catch (SQLException ex) {
                 RequestDispatcher dd = request.getRequestDispatcher("createParking.jsp?ermsg="+ex.getMessage());

                                dd.forward(request, response);
            Logger.getLogger(ParkingServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
              RequestDispatcher dd = request.getRequestDispatcher("createParking.jsp?ermsg="+ex.getMessage());

                                dd.forward(request, response);
            Logger.getLogger(ParkingServlet.class.getName()).log(Level.SEVERE, null, ex);
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
