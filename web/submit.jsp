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

        <header><!-- header starts here-->
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
                </ul>
            </nav>
        </header><!-- Header ends here -->

        <h1><%= session.getAttribute("username") %> you are successfully logged in !</h1>
        <div> 
            <%
                   dbconnection conn = new dbconnection();
                   Connection con = conn.getConnection();    
                   try {
                        if(con != null) {
                        
                            String query = "SELECT uid,firstname,lastname,email FROM accountholder WHERE username = ?";
                            PreparedStatement stmt = con.prepareStatement(query);
                            stmt.setString(1, session.getAttribute("username").toString());
                            ResultSet result1=stmt.executeQuery();
                            if(result1.next()){
                                
                   %>
            <h3>
                   <table>
                <tr><td>Account Number :</td><td> <%= result1.getInt("uid") %></td> </tr>
                <tr> <td>First name :</td> <td> <%= result1.getString("firstname") %></td>  </tr>
                <tr> <td>Last Name :</td><td> <%= result1.getString("lastname") %></td></tr>
                <tr> <td>Email :</td><td> <%= result1.getString("email") %></td></tr>
            </table>
            </h3>
            <%                            
                            }

                ResultSet rs = stmt.executeQuery();
                        
                        }else { out.println("Error in database connection"); }
                   }catch(Exception e) {
                   
                   }
            %>
            
            
        </div>
        
    </body>
</html>
