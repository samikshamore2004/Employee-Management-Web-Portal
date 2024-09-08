<%-- 
    Document   : AdminLogin
    Created on : 13 Feb, 2024, 6:47:57 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
       <style>
              body{
                  background-image: 
                      url('https://cdn.wallpapersafari.com/83/57/qfkSeo.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>

    </head>
    <body>
    <center>
        <h1><font color="brown">Admin Login</font></h1>
        <form action="AdminLogin1.jsp">
            <br><br>
            <table border="0">
                <tbody>
                    <tr>
                        <td><font color="white">Admin Name:</font></td>
                        <td><font color="white"><input type="text" name="name" value="" required/></font></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><font color="white">Password:</td>
                        <td><font color="white"><input type="password" name="password" value="" required/></font></td>
                    </tr>
                </tbody>
            </table>
            <br>
     
        <input type="submit" value="submit" />
        
        </form>
    </center>
    </body>
</html>
