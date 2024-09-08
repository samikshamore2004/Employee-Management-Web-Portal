<%-- 
    Document   : finalUpdate
    Created on : 14 Feb, 2024, 8:43:22 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Final Update</title>
        <style>
              body{
                  background-image: 
                      url('https://cdn.wallpapersafari.com/36/49/TQPcRi.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>
    </head>
    <body>
    <center>
        <%
        String id1=request.getParameter("eid1");
         String id2=request.getParameter("eid");
          String n=request.getParameter("nm");
          String ed=request.getParameter("emid");
          String g=request.getParameter("gen");
           String mb=request.getParameter("mobileno");
            String add=request.getParameter("address");
           String ct=request.getParameter("city");
           String pa=request.getParameter("pass");
           PreparedStatement ps=null;
           try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/task2","root","");
               String sql="Update employeedata set employeeid=?,name=?,emailid=?,gender=?,mobno=?,address=?,city=?,password=? where employeeid="+id1;
              ps=con.prepareStatement(sql);
              ps.setString(1,id2 );
              ps.setString(2, n);
              ps.setString(3,ed );
              ps.setString(4,g);
              ps.setString(5,mb );
              ps.setString(6,add);
              ps.setString(7, ct);
              ps.setString(8, pa);
              int i=ps.executeUpdate();
              if(i>0)
              {
                  out.print("Employee record update successfully");
              }
              else
              {
                  out.print("Problem in updating record!");
              }
              con.close();
              
           }
           catch(Exception e)
           {
               out.print(e);
           }
        %>
        <br><br>
        <a href="index.html"><font size="5">Log out</font></a>
    </center>
    </body>
</html>
