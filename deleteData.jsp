<%-- 
    Document   : deleteData
    Created on : 17 Feb, 2024, 7:11:19 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
              body{
                  background-image: 
                      url('https://wallpapercave.com/wp/4d1Fdxt.png');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>
    </head>
    <body>
    <center>
        <%
            String eid=request.getParameter("passId");
            try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/task2","root","");
          Statement st=con.createStatement();
          
         String sql="delete from employeedata where employeeid="+eid;
         st.executeUpdate(sql);
         out.print("Data deleted successfully");
           con.close();
        }
         catch(Exception e)
          {
               out.print(e);
          }

            
            %>
            <br><br>  
             <a href="index.html">back to home page</a>
    </center>  </body>
</html>
