<%-- 
    Document   : EmployeeLogin
    Created on : 13 Feb, 2024, 6:53:29 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Login</title>
        <style>
              body{
                  background-image: 
                      url('https://www.fg-a.com/wallpapers/2018-white-texture-background-image.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>
    </head>
    <body>
    <center>
        <form action="EmployeeLogin1.jsp">
            <h1>Employee Login</h1>
        <%
        String un1=(String)session.getAttribute("un3");
        String pass1=(String)session.getAttribute("pass3");
        String emid1=(String)session.getAttribute("emid3");
        session.setAttribute("un3",un1);
        session.setAttribute("pass3",pass1);
         session.setAttribute("emid3",emid1);
        %>
       <table border="0">
           
            <tbody>
                 <tr>
                    <td>Enter ID:</td>
                    <td><input type="text" name="empid" value="" required/><font color="orange">(Enter Registered ID Only)</font></td>
                </tr>
                <tr>
                    <td>Enter Username:</td>
                    <td><input type="text" name="uname" value="" require/></td>
                </tr>
                <tr>
                    <td>Enter Password:</td>
                    <td><input type="password" name="password" value="" required/></td>
                </tr>
               
            </tbody>
        </table><br><br>
        <input type="submit" value="submit" />
        </form>
    </center>
    </body>
</html>
 