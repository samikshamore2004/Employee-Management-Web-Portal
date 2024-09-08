<%-- 
    Document   : callAllData
    Created on : 13 Feb, 2024, 9:18:35 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Call All Data</title>
        <style>
              body{
                  background-image: 
                      url('https://cdn.photoroom.com/v1/assets-cached.jpg?path=backgrounds_v3/white/Photoroom_white_background_extremely_fine_texture_only_white_co_d0e2fa82-7e61-4f46-a802-18c528239dfd.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>
    </head>
    <body>
    <center>
       <%
        String sid=request.getParameter("passId");
        out.print(sid);
        %>  
    </center>
    </body>
</html>
