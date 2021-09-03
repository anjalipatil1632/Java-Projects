<%-- 
    Document   : donatejsp
    Created on : May 29, 2019, 12:19:57 PM
    Author     : user
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>donate</title>
    </head>
    <body>
          <%
            
         String name=request.getParameter("t1");
         String add=request.getParameter("t2");
         String pincode=request.getParameter("t3");
         String city=request.getParameter("t4");
         String state=request.getParameter("t5");
         String country=request.getParameter("t6");
         String phn=request.getParameter("t7");
         String email=request.getParameter("t8");
         String notes=request.getParameter("t9");
         
         String Breakfast=request.getParameter("t22");
         String Lunch=request.getParameter("t24");
         String Full=request.getParameter("t28");
         String Medicines=request.getParameter("t30");
         String Orphan=request.getParameter("t32");
         String Recurring_Expensescountry=request.getParameter("t34");
         String Building=request.getParameter("t36");
         String General=request.getParameter("t38");
         String Total_Quantity=request.getParameter("t39");
         String Order_Total=request.getParameter("t40");
         
         
         
            out.println();
            
            
 


try{
            
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection(  
        "jdbc:mysql://localhost/oldagehome","root","");  
        String sql1="insert into donate values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement stmt=con.prepareStatement(sql1);  
        stmt.setString(1, name);
        stmt.setString(2, add);
        stmt.setString(3, pincode);
        stmt.setString(4, city);
        stmt.setString(5, state);
        stmt.setString(6, country);
        stmt.setString(7, phn);
        stmt.setString(8, email);
        stmt.setString(9, notes);
        
        stmt.setString(10, Breakfast);
        stmt.setString(11, Lunch);
        stmt.setString(12, Full);
        stmt.setString(13, Medicines);
        stmt.setString(14, Orphan);
        stmt.setString(15, Recurring_Expensescountry);
        stmt.setString(16, Building);
        stmt.setString(17, General);
        stmt.setString(18, Total_Quantity);
        stmt.setString(19, Order_Total);
        
        
        stmt.executeUpdate();
        
         %>
        
        <h2 style="text-align:center;padding-top:20px;">THANK YOU FOR YOUR SUPPORT!!!</h2>
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
