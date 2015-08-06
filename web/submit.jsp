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
                    <li><a href="career.html">CAREER</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                    <li><a href="index.html">LOG OUT</a></li>
                    <li><a href="account.jsp">Account Details</a></li>
                </ul>
            </nav>
        </header>

        <h1> you are successfully logged in !</h1>
        <div> 
            <table>
                <tr><td>Account Number</td> <td>1234578</td></tr>
                <tr> <td>First name</td> <td> Kamal </td>  </tr>
                <tr> <td>Last Name</td><td>Jain </td> </tr>
                <tr> <td>User name</td><td> kamal_jain</td> </tr>
            </table>
        </div>
        
    </body>
</html>
