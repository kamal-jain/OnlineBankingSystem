<%-- 
    Document   : submit
    Created on : Aug 4, 2015, 12:13:44 AM
    Author     : Kamal Jain 
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="bank.dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.css">

        <title>Account Information</title>
    </head>
    <body>

        <header>
            <img src="images/logo.jpg" alt="XYZ Bank" height="80">
            <hgroup>
                <h1>XYZ Bank Ltd.</h1>
            </hgroup>
            <nav> 
                <ul>
                    <li><a href="index.html">HOME</a></li>
                    <li><a href="login.jsp">LOG IN</a></li>
                    <li><a href="openaccount.jsp">OPEN ACCOUNT</a></li>
                    <li><a href="career.html">CAREER</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                    <li><a href="logout.jsp">LOG OUT</a></li>
                </ul>
            </nav>
        </header>

        <h1> you are successfully logged in !</h1>
        <%
            String account = request.getParameter("uid");
            String password = request.getParameter("password");
            int count = 0;
            dbconnection conn = new dbconnection();
            Connection con = conn.getConnection();
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            if ((password.equals("admin") && account.equals("admin"))) {
                response.sendRedirect("admin.jsp");
            }
            try {
                if (con != null) {
                    String query = "SELECT * FROM accountholder WHERE username = ? and password = ?";
                    PreparedStatement stmt = con.prepareStatement(query);
                    stmt.setString(1, account);
                    stmt.setString(2, password);

                    ResultSet rs = stmt.executeQuery();
                    rs.next();
                    count = rs.getInt("count");
                    out.println(count);
                    if (count == 1) {
                        HttpSession session = request.getSession();
                        session.setAttribute("username", account);
                        response.sendRedirect("submit.jsp");
                    } else {

                        request.setAttribute("errorMessage", "Sorry Account number or Password are incorrect!");
                        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                        rd.include(request, response);

                    }
                } else {
                    out.println("Error in database connection");
                }
            } catch (SQLException e) {
                out.println(e.getMessage());
                out.println(e.getErrorCode());
                out.println(e.getSQLState());

            }


        %>
    </body>
</html>
