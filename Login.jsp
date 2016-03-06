

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
      
      <link rel="stylesheet" href="css/Mystyle.css" />
         <script>
            function submitClick(){   
          
                    document.location.href = "http://localhost:8080/VSS/Login?UserName="
                            + document.getElementById("txtUsername").value 
                            + "&password=" 
                            +  document.getElementById("txtPassword").value; 
            }
                    </script>
        
    </head>
    <body>

     
        <div style="float: right">
            
            <table>
             
                <tr>
                    <td>User Name</td>
                    <td><input id="txtUsername" type="text" value="" size="25" required /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input id="txtPassword" type="password" value="" size="25" pattern="[A-Za-z]"  required /></td>
                </tr>
        </table>
            <input class="logbutton medium" type="button" value="Sign In" onclick="submitClick()" name="signin" />
                  
                <div>
                    <p></p>
                </div>
      
                </div>
        <script src="Js/Main.js"></script>
     </body>
</html>
