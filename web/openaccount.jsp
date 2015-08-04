<%-- 
    Document   : openaccount
    Created on : Aug 4, 2015, 1:31:20 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.css">
        <title>Open Account</title>
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
                    <li><a href="openAccount.html">OPEN ACCOUNT</a></li>
                    <li><a href="interest.html">INTEREST PLANS</a></li>
                    <li><a href="career.html">CAREER</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                    <li><a href="logout.jsp">LOG OUT</a></li>
                </ul>
            </nav>
        </header>
        <div id="content">
            <div style="margin-left: 40px">
                <form action="signup" method="post">
                    <label for="fname">First Name:</label>
                    <input type="text" name="fname" style="margin-left: 50px"><br/><br/>
                    <label for="lname">Last name:</label>
                    <input type="text" name="lname" style="margin-left: 55px"><br><br/>
                    <label for="username">Username:</label>
                    <input type="text" name="username" style="margin-left: 55px"><br><br/>
                    <label for="password">Password:</label>
                    <input type="password" name="password" style="margin-left: 60px"><br><br/>
                    <label for="cpassword">Confirm Password:</label>
                    <input type="password" name="cpassword" ><br><br/>
                    <label for="email">Email Id:</label>     
                    <input type="email" name="email" style="margin-left: 70px"><br><br/>
                    <label for="phone">Phone :</label>
                    <input type="tel" name="phone" style="margin-left: 80px"><br><br/>    

                    <input type="submit" value="Submit" id="submit">        
                </form><br/><br/><br/>   
            </div><!-- closing form_style tag-->      
        </div><!-- closing content div-->      
    </div><!--close site_content-->	
    <footer id="footer">
        <p>&copy; 2015, Lambton College, Kamal Jain</p>
    </footer>

</div><!--close main-->	
</body>
</html>
