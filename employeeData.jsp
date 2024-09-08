<%-- 
    Document   : employeeData
    Created on : 13 Feb, 2024, 8:44:18 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
              body{
                  background-image: 
                      url('https://eskipaper.com/images/simple-backgrounds-1.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>
    </head>
    <body>
    <center>
        <h1><font color="white">Data</font></h1>
        <%
            try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/task2","root","");
          Statement st=con.createStatement();
          ResultSet rs=null;
          %>
       
          <table border="9">
                         
                     
                     <tbody>
                     <tr>
                         <td><font color="chocolate" size="5"><b>Employee Id:</b></font</td> 
                         <td><font color="chocolate" size="5"><b>Employee Name:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Username:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Email Id:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Gender:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Mobile No.:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Address:</b></font</td>
                         <td><font color="chocolate" size="5"><b>City:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Password:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Action:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Action:</b></font</td>
                         
                     </tr>
        <%
         String sql="Select * from employeedata";
          rs=st.executeQuery(sql);
          while(rs.next())
          {
            
            %>
                   
                    <tr>
                        <td><font color="white"><%=rs.getString("employeeid")%></font></td>
                        <td><font color="white"><%=rs.getString("name")%></font></td>
                      <td><font color="white"><%=rs.getString("username")%></font></td>
                        <td><font color="white"><%=rs.getString("emailid")%></font></td>
                        <td><font color="white"><%=rs.getString("gender")%></font></td>
                        <td><font color="white"><%=rs.getString("mobno")%></font></td>
                        <td><font color="white"><%=rs.getString("address")%></font></td>
                        <td><font color="white"><%=rs.getString("city")%></font></td>
                        <td><font color="white"><%=rs.getString("password")%></font></td>
                        
                        <td><font color=""><a href="editData.jsp?passId=<%=rs.getString("employeeid")%>"><font color="orange">Update</font></a></font></td>
                        <td><font color=""><a href="deleteData.jsp?passId=<%=rs.getString("employeeid")%>"><font color="orange">Delete</font></a></font></td>
                    </tr>
            
        <%    
        }
        con.close();
        }
         catch(Exception e)
          {
               out.print(e);
          }

        %>
                </tbody>
    </table><br><br>
     
    <a href="AdminLogin2.jsp"><font size="5" color="violet">back to admin login</font></a></center>  
        
        
    </center>
    </body>
</html>
