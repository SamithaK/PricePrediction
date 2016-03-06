<%-- 
    Document   : SessionPage
    Created on : Feb 9, 2016, 10:21:12 AM
    Author     : SAMITHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session</title>
    <link rel="stylesheet" href="css/Mystyle.css" />
    </head>
    <body>
                   <%
     
         HttpSession httpSession = request.getSession(true);

         Object sessionUser =  httpSession.getAttribute("UserName");
         Object sessionType = httpSession.getAttribute("UserType");
         Object sessionID =  httpSession.getAttribute("idUser");
         if (sessionUser == null || sessionType == null){
            // response.sendRedirect("Login.jsp");
             %>
             <%@ include file="Login.jsp"%>
        <% } else {
            //out.print(sessionUser.toString());
             %>
             <div style="float: right">
            
                 <label> Welcome : <%
     
             out.print(sessionUser);
      
                %> </label>
        <label> ID NO:
       <% 
        out.print(sessionID);
        
       %>    
        <script>
           function clear(){
           document.location.href ="http://localhost:8080/Web_temp/clear.jsp";
       }
       </script>
        </label>
       <label>   <% 
       out.print(sessionType);
       %>   </label>
       <form action="clear.jsp">
           <input class="logbutton medium" type="submit" value="Logout" id="logout">
       </form>
   
        <br>
                </div>
             
             <%
            
         }
                %>
                

                
    </body>
</html>
