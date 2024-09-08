<%-- 
    Document   : EmployeeRegistration
    Created on : 13 Feb, 2024, 6:38:34 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Registration</title>
        <style>
              body{
                  background-image: 
                      url('https://wallpapercave.com/wp/wp4076090.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>
    </head>
    <body>
    <center>
        <form action="InsertEmployeeData.jsp">
       
            <h1>Employee Registration</h1>
            
            <table border="0">          
                <tbody>
                    
                  
                    <tr>
                        <td>Employee ID:</td>
                        <td><input type="text" name="id" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Name Of Employee:</td>
                        <td><input type="text" name="name" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="username" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Email Id:</td>
                        <td><input type="email" name="email" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Select Gender:</td>
                        <td><input type="radio" name="gender" value="Male" />Male<input type="radio" name="gender" value="Female" />Female<input type="radio" name="gender" value="Other" />Other</td>
                    </tr>
                    <tr>
                        <td>Mobile No.</td>
                        <td><input type="number" name="mobno" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td><textarea name="add" rows="4" cols="20" required>
Enter Address


                            </textarea></td>
                    </tr>
                    <tr>
                        <td>Select City:</td>
                        <td><select name="city" >
                                 <option value="Akola">Akola</option>
                                <option value="Amravati">Amravati</option>
                                <option value="Nagpur">Nagpur</option>
                                <option value="Nashik">Nashik</option>
                                <option value="Pune">Pune</option>
                                <option value="wardha">Wardha</option>
                                <option value="Yavatmal">Yavatmal</option>
                            </select></td>
                    </tr>
                </tbody>
            </table><br><br>
            <tr><td>   <input type="reset" value="clear" />  <input type="submit" value="submit" /></td></tr>
        </form>
    </center>
    </body>
</html>
