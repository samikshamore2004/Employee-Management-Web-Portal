<%-- 
    Document   : AdminLogin1
    Created on : 13 Feb, 2024, 6:51:52 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login1</title>
        <style>
              body{
                  background-image: 
                      url('https://png.pngtree.com/thumb_back/fh260/background/20210915/pngtree-geometric-pattern-white-gold-minimalist-creative-background-image_879782.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>
    </head>
    <body>
    <center>
        
        <br><br>
        <%
        String nm=request.getParameter("name");
        String p=request.getParameter("password");
       
         if(nm.equalsIgnoreCase("admin") && p.equals("admin123"))
            {
                response.sendRedirect("AdminLogin2.jsp");
            }
            else
            {
                response.sendRedirect("Errorpage.jsp");
            }
            
        %>
       
    </center>
    </body>
</html>
