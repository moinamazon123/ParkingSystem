/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.parking.src;

import com.google.gson.Gson;
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
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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
         
            String event = request.getParameter("event");
             Connection con = DBConnection.getDBConnection();
             HttpSession session = request.getSession();
              Statement st = null;
               ResultSet rs = null;
              int cartCount = 0;
            if(event.equals("login")){
                System.out.println("%%%%%%%%%%%%%%%%%% Event "+event);
                
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            boolean loginFlag = false;
            
             st = con.createStatement();
             rs = st.executeQuery("Select username,password from user where username='"+username+"' and password='"+password+"'");
            
            while(rs.next()){
                if(username.equals(rs.getString(1)) && password.equals(rs.getString(2))){
                    loginFlag = true;
                   // session.setAttribute("loginUser", username);
                   
                   
                }else{
                    loginFlag = false;
                     String jsonList = new Gson().toJson("Invalid credentials ");
       
      response.setContentType("application/json");
      response.getWriter().write(jsonList);
                }
                
            }
            
            /** Check Role of login User **/
            String rolename = null;
            int userId=0;
            String loginUser = null;
            rs = st.executeQuery("select u.username,rl.role_name,u.user_id  from parking.user u inner join parking.user_role ur on u.user_id=ur.user_id inner join parking.role rl on rl.role_id=ur.role_id  where u.username='"+username+"'");
             while(rs.next()){
                 
                 rolename = rs.getString(2);
                 userId = rs.getInt(3);
                 loginUser = rs.getString(1);
             }
             session.setAttribute("role", rolename);
                 session.setAttribute("loginUser", loginUser);
                    session.setAttribute("roleId", rolename);
            if(loginFlag){
      
                if(rolename.equals("ADMIN")){
                  //   response.sendRedirect("admin.jsp"); 
                    System.out.println("Login Successful as ADMIN");
                               RequestDispatcher dd = request.getRequestDispatcher("dashboard.jsp");

                                dd.forward(request, response);
                               
                     
                }
                if( rolename.equals("USER")){
                   //  response.sendRedirect("index.jsp");  
                   System.out.println("Login Successful as USER");
                             RequestDispatcher dd = request.getRequestDispatcher("dashboard.jsp");

                            dd.forward(request, response);
                }
                
               // request.getServletContext().getRequestDispatcher("/index.jp").forward(request,response);
              // response.sendRedirect("index.jsp");  
              
    
              
              
           
            } else {
                // request.getServletContext().getRequestDispatcher("/login.jp").forward(request,response);
                session.setAttribute("erMsg", "Invalid Credentials");
                RequestDispatcher dd = request.getRequestDispatcher("loginreg.jsp");

                            dd.forward(request, response);
               // response.sendRedirect("login.jsp?erMsg=Invalid Credentials");  
            }
            
            } else if(event.equals("register"))  {
      
     
      String query = " insert into user (username, address, password, repassword, phone,regDate)"
        + " values (?, ?, ?, ?, ? ,?)";
  int userId =0;
      // create the mysql insert preparedstatement
      PreparedStatement preparedStmt = con.prepareStatement(query);
      preparedStmt.setString (1, request.getParameter("username"));
      preparedStmt.setString (2, request.getParameter("address"));
      preparedStmt.setString   (3, request.getParameter("password"));
      preparedStmt.setString(4, request.getParameter("password_confirmation"));
      preparedStmt.setString    (5, request.getParameter("phone"));
        preparedStmt.setString    (6, new java.util.Date().toString());
       preparedStmt.execute();
       
     
       /** Fetching User id **/
       
      Statement userIdst = con.createStatement();
             rs = userIdst.executeQuery("Select user_id from user where username='"+request.getParameter("username")+"'");
      
          while(rs.next()){
                userId = rs.getInt(1);
            }
          
          /** Insert Into user roles table **/
          
           String rolequery = " insert into user_role (user_id,role_id)"
        + " values (?, ?)";
  
      // create the mysql insert preparedstatement
   PreparedStatement    preparedStmt1 = con.prepareStatement(rolequery);
      preparedStmt1.setInt (1, userId);
      preparedStmt1.setInt (2,3);
      
       preparedStmt1.execute();
        //  con.close();
          
          response.sendRedirect("loginreg.jsp?msg=Registration Successful ! Please Login");    
            
        }else if(event.equals("checkUsername")){
            
             String existingEmail =null;
                  Statement emailQuery = con.createStatement();
             rs = emailQuery.executeQuery("Select username from user where username='"+request.getParameter("username")+"'");
      
          while(rs.next()){
                existingEmail = rs.getString(1);
            }
                System.out.println("%%%%%%%%%%%%%%%%%% Event "+event+existingEmail);  
                if(existingEmail!=null) {
                   String jsonList = new Gson().toJson("username already taken");
       
      response.setContentType("application/json");
      response.getWriter().write(jsonList);
                }
            
            
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
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
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
