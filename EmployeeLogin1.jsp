<%-- 
    Document   : EmployeeLogin1
    Created on : 14 Feb, 2024, 7:48:21 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Login1</title>
        <style>
              body{
                  background-image: 
                      url('https://wallpapercave.com/wp/wp2610929.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>
    </head>
    <body>
    <center>
        <h1>Update Form</h1>
       <%
           String usn= request.getParameter("uname");
           String pass=request.getParameter("password");
           String emid=request.getParameter("empid");
        String un1=(String)session.getAttribute("un3");
        String pass1=(String)session.getAttribute("pass3");
       String emid1=(String)session.getAttribute("emid3");
       %>
       
       
       
       <%
       
           try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/task2","root","");
          Statement st=con.createStatement();
          ResultSet rs=null;
         String sql="Select * from employeedata where employeeid="+emid;
         
          rs=st.executeQuery(sql);
          while(rs.next())
          {
            
            %>
            <form action="finalUpdate.jsp">
             
                <table border="0">
                    
                    <tbody>
                        <tr>
                            <td></td>
                            <td><input type="hidden" name="eid1" value="<%=rs.getString("employeeid")%>" /></td>
                        </tr>
                          <tr>
                              <td><font size="4" color="">Employee Id:</font></td>
                            <td><input type="text" name="eid" value="<%=rs.getString("employeeid")%>" /></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="">Name:</font></td>
                            <td><input type="text" name="nm" value="<%=rs.getString("name")%>" /></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="">Email Id:</font></td>
                            <td><input type="text" name="emid" value="<%=rs.getString("emailid")%>" /></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="">Gender:</font></td>
                            <td><input type="text" name="gen" value="<%=rs.getString("gender")%>" /></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="">Mobile No.</font></td>
                            <td><input type="text" name="mobileno" value="<%=rs.getString("mobno")%>" /></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="">Address</font></td>
                            <td><input type="text" name="address" value="<%=rs.getString("address")%>" /></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="">City:</font></td>
                            <td><input type="text" name="city" value="<%=rs.getString("city")%>" /></td>
                        </tr>
                         <tr>
                            <td><font size="4" color="">Password:</font></td>
                            <td><input type="text" name="pass" value="<%=rs.getString("password")%>" /></td>
                        </tr>
                        
                    </tbody>
                </table><br>
                <input type="submit" value="update">

           </form>  
             <%    
        }        
       %>
        </tbody>
    </table>
          <%
        con.close();
        }
         catch(Exception e)
          {
               out.print(e);
          }

        %>
</center>
    </body>
</html>
