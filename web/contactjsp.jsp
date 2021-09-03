<%-- 
    Document   : contactjsp
    Created on : May 28, 2019, 2:57:54 PM
    Author     : user
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>contact</title>
    </head>
    <body>
        <%
            
         String name=request.getParameter("field1");
         String email=request.getParameter("field2");
         String msg=request.getParameter("field3");
         
         
            out.println();
           
            
 


try{
            
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection(  
        "jdbc:mysql://localhost/oldagehome","root","");  
        String sql1="insert into contact values(?,?,?)";
        PreparedStatement stmt=con.prepareStatement(sql1);  
        stmt.setString(1, name);
        stmt.setString(2, email);
        
        stmt.setString(3,msg);
        
        stmt.executeUpdate();
        
        %>
        
        <h2 style="text-align:center;padding-top:20px;">Your Message send successfully!</h2>
        <script type="text/javascript">
  var timer = 2; //seconds
    website = "http://localhost:8080/old_age_home/index.html";
  function delayer() {
    window.location = website;
  }
  setTimeout('delayer()', 1000 * timer);
  </script>
  <%        
        
        con.close();  

    }catch(Exception ae){ System.out.println(ae);
 } 
            %>
    </body>
</html>
