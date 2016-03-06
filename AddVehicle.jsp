<!DOCTYPE HTML>
<!--
	Imagination by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Add Vehicles</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
                        <link rel="stylesheet" href="css/Mystyle.css" />
		</noscript>
	</head>
	<body>
	<div id="header-wrapper">
		<!-- Header -->
                 
			<div id="header">
                            <br>
                            
                   
				<div class="container">
					
					<!-- Logo -->
						<div id="logo">
                                                                                                    
							<h1><a href="#">Add vehicles</a></h1>
                                                        <div style="float: right"></div> 
						</div>
					
					<!-- Nav -->  
                                        
                                                                              
						<nav id="nav">
                                                    
							<ul>
							     <li class="active"><a href="index.jsp">Homepage</a></li>
								<li><a href="Vehicles.jsp">Select Your Vehicle</a></li>
								<li><a href="AddVehicle.jsp">Advertise your Vehicle</a></li>
								<li><a href="UserProfile.jsp">Users Profile</a></li>
                                                                
							</ul>
                                                    
						</nav>
	
				</div>
                           
			</div>
		<!-- Header -->

		<!-- Banner -->
                
			<div id="banner">
                             
				<div class="container">
	 
					<section>
                                            
						<span class="fa fa-cubes"><%@ include file="SessionPage.jsp"%></span>
						
                                              
                                        </section>	
				</div>
			</div>
		<!-- /Banner -->
     </div>
	<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row">
		
					<div class="9u skel-cell-important">
						<section>
							
             <%
                          if (sessionUser == null || sessionType == null){
             %>
            
           <h2>Please Sign In to your Account from above</h2>
	<input class="button medium" value="Please register if you don't have an account" onclick="window.open('resgister.jsp','blank','width: 400, height:400')" type="button"/>
             
        <% } else {
            //out.print(sessionUser.toString());
             %>
             
             <header>
	     <h2>Please add your vehicle information</h2>
	 <span class="byline">Enter below fields</span>
             </header>
             <form  name="VehicleInfo" action="Vehicle" method="POST">
                                                        <p>Vehicle Informations</p><br>
                                                        <hr/>
                                                        <br>
                                                        <label>Please enter Year</label><br>
                                                        <input type="text" name="Year"  value="" size="40"  required title="Please enter a year" pattern="\d{4}" /><br>
                                                        <label>Please enter Model</label><br>
                                                        <input type="text" name="Model"  value="" size="40"   required /><br>
                                                        <label>Please enter Engine CC</label><br>
                                                        <input type="text" name="Engine"  value="" size="40" required /><br>
                                                        <label>Please enter Transmission type</label><br>
                                                        <select name="Transmission" required>
                                                            <option>Select</option>
                                                            <option>Auto</option>
                                                            <option>Manual</option>
                                                        </select>
                                                        <br>
                                                        <label>Please enter Mileage</label><br>
                                                        <input type="text" name="Mileage"  value="" size="40" required /><br>
                                                        <label>Please enter your Price</label><br>
                                                        <input type="text" name="price"  value="" size="40" required /><br>
                                                        <label>User</label><br>
                                                        <input type="text" name="User"  value="<%=sessionUser %>" size="40" required /><br>
                                                        <br>
                                                        <input type="file" name="Image" /><br>
                                                        <br>
                                                        <input type="submit" value="Add Vehicle" />
                                                    </form>
                                                  <% } %>
							</section>
					</div>
					
<!--					<div class="3u">
						<section class="sidebar">
							<header>
								<h2>Feugiat Tempus</h2>
							</header>
							<ul class="default">
								<li><a href="#">Maecenas luctus lectus at sapien</a></li>
								<li><a href="#">Etiam rhoncus volutpat erat</a></li>
								<li><a href="#">Donec dictum metus in sapien</a></li>
								<li><a href="#">Nulla luctus eleifend purus</a></li>
								<li><a href="#">Maecenas luctus lectus at sapien</a></li>
							</ul>
						</section>
						<section class="sidebar">
							<header>
								<h2>Nulla eleifend</h2>
							</header>
							<ul class="default">
								<li><a href="#">Maecenas luctus lectus at sapien</a></li>
								<li><a href="#">Donec dictum metus in sapien</a></li>
								<li><a href="#">Integer gravida nibh quis urna</a></li>
								<li><a href="#">Etiam posuere augue sit amet nisl</a></li>
								<li><a href="#">Mauris vulputate dolor sit amet nibh</a></li>
							</ul>
						</section>
					</div>-->
				
				</div>
			</div>
		</div>
	<!-- Main -->

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href="">Samitha Kahawala</a>
			</div>
		</div>


	</body>
</html>