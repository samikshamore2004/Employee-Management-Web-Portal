<%-- 
    Document   : editData
    Created on : 13 Feb, 2024, 8:45:49 PM
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
        <%
        String un=(String)session.getAttribute("un2");
        String pass=(String)session.getAttribute("pass1");
        String eid=request.getParameter("passId");
        %>
         <h1><font color="orange"> Data Updation</font></h1>
        <%
            try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/task2","root","");
          Statement st=con.createStatement();
          ResultSet rs=null;
         String sql="Select * from employeedata where employeeid="+eid;
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
                              <td><font size="4" color="red"><b>Employee Id :</b></font></td>
                            <td><input type="text" name="eid" value="<%=rs.getString("employeeid")%>" required/></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="red"><b>Name :</b></font></td>
                            <td><input type="text" name="nm" value="<%=rs.getString("name")%>" required/></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="red"><b>Email Id :</b></font></td>
                            <td><input type="text" name="emid" value="<%=rs.getString("emailid")%>" required/></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="red"><b>Gender :</b></font></td>
                            <td><input type="text" name="gen" value="<%=rs.getString("gender")%>" required/></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="red"><b>Mobile No.</b></font></td>
                            <td><input type="text" name="mobileno" value="<%=rs.getString("mobno")%>" required/></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="red"><b>Address :</b></font></td>
                            <td><input type="text" name="address" value="<%=rs.getString("address")%>" required /></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="red"><b>City :</b></font></td>
                            <td><input type="text" name="city" value="<%=rs.getString("city")%>" required/></td>
                        </tr>
                         <tr>
                             <td><font size="4" color="red">Password :</b></font></td>
                            <td><input type="text" name="pass" value="<%=rs.getString("password")%>" required/></td>
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
               <br><br>
     
             
</center>   
    </body>
</html>

                   