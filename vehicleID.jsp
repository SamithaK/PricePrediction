<%-- 
    Document   : vehicleID
    Created on : Feb 25, 2016, 12:53:05 PM
    Author     : SAMITHA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          int id = Integer.parseInt(request.getParameter("id")); 

  
            /* TODO output your page here. You may use following sample code. */
    
            ArrayList al = null;
            ArrayList V_list = new ArrayList();
         ResultSet rs = DBLayer.DB.get().createStatement().executeQuery("select * from vehicle where idVehicle='"+id+"'");    
        
           while (rs.next()) {
                al = new ArrayList();
 
                out.println(rs.getString(1));
                out.println(rs.getString(2));
                out.println(rs.getString(3));
                out.println(rs.getString(4));
                out.println(rs.getString(5));
                out.println(rs.getString(6));
                out.println(rs.getString(7));
                out.println(rs.getBlob(8));
                al.add(rs.getString(1));
                al.add(rs.getString(2));
                al.add(rs.getString(3));
                al.add(rs.getString(4));
                al.add(rs.getString(5));
                al.add(rs.getString(6));
                al.add(rs.getString(7));
                System.out.println("al :: " + al);
                
                V_list.add(al);
                
            } 
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
%>
    </body>
</html>
