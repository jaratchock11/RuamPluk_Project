/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project.controller;

import com.project.model.UserClass;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kamolnawin
 */
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
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        String userName = request.getParameter("userName");
        String userPass = request.getParameter("userPass");
        String message = "";
        if (userName != null && userPass != null){
            List<UserClass> userClass=null;
           try {
               userClass = UserClass.FindByName(userName);
           } catch (ClassNotFoundException ex) {
               Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
           }
            if (userClass !=null){
                if(userClass.get(0).getUserPass().equals(userPass)){
                    request.getSession().setAttribute("user", userClass.get(0));
                    String target = request.getParameter("target");
                    
                    if(target==null || target.trim().length()==0){
                        target = "/home.jsp";
                    }
                    getServletContext().getRequestDispatcher(target).forward(request, response);
                    return ;
                }else{
                    message = "Invalid password";
                }
            }else{
                message = "User " +userName+ " IS NOT FOUND !!!";
            }
        }
        request.setAttribute("message", message);
        getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
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
