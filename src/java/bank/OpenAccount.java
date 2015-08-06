package bank;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import bank.dbconnection;
import bank.AccountHolder;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kamal Jain
 */
public class OpenAccount extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet signup</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet signup at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
        String email = request.getParameter("email");
        String firstName = request.getParameter("fname");
        String lastName = request.getParameter("lname");
        String password = request.getParameter("password");
        String cpassword = request.getParameter("cpassword");
        String username = request.getParameter("username");

        PrintWriter out = response.getWriter();
        if (email != null && firstName != null && lastName != null && password != null && username != null) {
            if (password.equals(cpassword)) {
                AccountHolder A = new AccountHolder(email, firstName, lastName, password, username);
                dbconnection conn = new dbconnection();
                Connection con = conn.getConnection();
                try {
                    if (con != null) {
                        String query = "INSERT INTO accountholder (lastName, firstName, username, password, email) VALUES(?,?,?,?,?)";
                        PreparedStatement stmt = con.prepareStatement(query);
                        stmt.setString(1, A.getLastName());
                        stmt.setString(2, A.getFirstName());
                        stmt.setString(3, A.getUsername());
                        stmt.setString(4, A.getPassword());
                        stmt.setString(5, A.getEmail());
                        stmt.executeUpdate();
                        response.sendRedirect("index.html");
                        out.println("You have been successfully signed up");

                    } else {
                        out.println("Error in database connection");
                    }
                } catch (SQLException e) {
                    out.println("Something is wrong");
                }
            } else {
                out.println("Password do not match");
            }
        } else {

            out.println("Please enter the values before submit");
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
