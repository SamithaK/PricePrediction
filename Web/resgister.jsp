<%-- 
    Document   : resgister
    Created on : Mar 3, 2016, 12:09:53 PM
    Author     : SAMITHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/Mystyle.css" />
      <link rel="stylesheet" href="css/skel-noscript.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-desktop.css" />
        <title>Register</title>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		</noscript>
    </head>
    <body>
        <br/><br/>
        <br/>
        <div style="width: 30%;  background-color: #f5f5f5; margin: auto; text-align: center">
            <form name="Reg" action="reg" method="POST">
                <br/>
                <h1 style="font-size: 180%; text-align: center"> Please Register</h1>
                <br/><br/>
                <label>User Name:</label><br/>
                <input type="text" name="username" value="" size="30" /><br/> 
                <label>Telephone</label><br/>
                <input type="tel" name="telephone" value="" size="30" /><br/> 
                <label>City</label><br/>
                <input type="text" name="city" value="" size="30" /><br/> 
                <label>Email</label><br/>
                <input type="email" name="email" value="" size="30" /><br/> 
                <label>Password</label><br/>
                <input type="password" name="password" value="" size="30" /><br/> <br/> 
                <input type="submit" value="Resgister" name="Resgister" /><br/> <br/> 
            </form>
           
        </div>
      
    </body>
</html>
