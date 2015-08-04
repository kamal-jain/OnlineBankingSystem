<%-- 
    Document   : login
    Created on : Aug 4, 2015, 12:06:49 AM
    Author     : Kamal Jain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.css">
        <title>Log in</title>
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
                    <li><a href="openAccount.jsp">OPEN ACCOUNT</a></li>
                    <li><a href="career.html">CAREER</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                    <li><a href="logout.jsp">LOG OUT</a></li>
                </ul>
            </nav>
        </header>
        <form action="submit.jsp">  
            <fieldset>
                <legend><span>Log In</span></legend>
                <label for="Account">
                    Account number
                    <input type="text" id="account" name="account"  placeholder="Enetr your Account number"/>    
                </label><br><br>
                <label for="Account">
                    Password
                    <input type="text" id="password" name="password" placeholder="Enter the password"/>    
                </label>
            </fieldset>
            <fieldset id="submitbutton">
            <input type="submit" id="submit" value="Submit" />
          </fieldset>

        </form>


    </body>

</html>
