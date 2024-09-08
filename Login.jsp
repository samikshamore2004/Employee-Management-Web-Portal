<%-- 
    Document   : Login
    Created on : 13 Feb, 2024, 6:43:59 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
              body{
                  background-image: 
                      url('https://wallpapercave.com/wp/wp4182080.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>
    </head>
    <body>
    <center>
        <h1><font color="orange">Login To:</font></h1>
        <%
         String un=(String)session.getAttribute("un2");
         String pass=(String)session.getAttribute("pass2");
         String emid=(String)session.getAttribute("emid2");
            session.setAttribute("un3",un);
            session.setAttribute("pass3",pass);
             session.setAttribute("emid3",emid);
        %>
        
        <br><br><br>
        <a href="AdminLogin.jsp"><b><font size="5" color="white">👉 Admin Login</font></b></a><br><br>
        <a href="EmployeeLogin.jsp"><b><font size="5" color="white">👉 Employee Login</font></b></a>
    </center>
    </body>
</html>
