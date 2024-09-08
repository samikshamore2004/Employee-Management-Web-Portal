<%-- 
    Document   : insertEmployeeData
    Created on : 14 Feb, 2024, 6:56:45 AM
    Author     : Dell
--%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Employee Data</title>
        <style>
              body{
                  background-image: 
                      url('https://images8.alphacoders.com/429/429165.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>
    </head>
    <body>
    <center>
         <%
            try{
         String id=request.getParameter("id");
         String nm=request.getParameter("name");
         String un=request.getParameter("username");
         String  pass=request.getParameter("password");
         String em=request.getParameter("email");
         String gen=request.getParameter("gender");
         String mb=request.getParameter("mobno");
         String ad=request.getParameter("add");
         String city=request.getParameter("city");
         session.setAttribute("un1", un);
         session.setAttribute("pass1", pass);
         session.setAttribute("emid1",id);
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/task2", "root","");
         Statement st=con.createStatement();
         String sql="insert into employeedata(employeeid,name,username,emailid,gender,mobno,address,city,password)values('"+id+"','"+nm+"','"+un+"','"+em+"','"+gen+"','"+mb+"','"+ad+"','"+city+"','"+pass+"')" ;  
         st.executeUpdate(sql);
         out.print("Data inserted successfully");
          con.close();  
            }
            catch(Exception e)
            {
                out.print(e);
            }
            %>
            <br><br>
            <a href="index.html"><b><font size="5" color="pink">back to home page</font></b></a>
    </center>
    </body>
</html>
 
            