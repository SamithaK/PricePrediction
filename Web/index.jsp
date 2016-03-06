<!DOCTYPE HTML>
<!--
	Imagination by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Home</title>
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
		</noscript>
       </head>
	<body class="homepage">

	<div id="header-wrapper">
		<!-- Header -->
                 
			<div id="header">
                            <br>
                            
                   
				<div class="container">
					
					<!-- Logo -->
						<div id="logo">
                                                                                                    
							<h1><a href="#">VSS</a></h1>
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
						<header>
							<h2>Vehicle</h2>
							<span class="byline">Search your dream vehicle</span>
						</header>
                                                <%
                                                 if (sessionUser == null || sessionType == null){%>
<input class="button medium" value="Please register if you don't have an account" onclick="window.open('resgister.jsp','blank','width: 400, height:400')" type="button"/>
                                                <% } %>
                                        </section>	
				</div>
			</div>
		<!-- /Banner -->
     </div>
              <!-- Extra -->
		<div id="extra">
			<div class="container">
				<div class="row">
					<section class="3u">
						<header>
							<h2>Recent Vehicles </h2>
						</header>
						<span class="fa fa-wrench"></span>
						<p>Descriptions.</p>
					</section>
					<section class="3u">
						<header>
							<h2>Recent Vehicles </h2>
						</header>
						<span class="fa fa-wrench"></span>
						<p>Descriptions.</p>
                                        </section>
					<section class="3u">
						<header>
							<h2>Recent Vehicles </h2>
						</header>
						<span class="fa fa-wrench"></span>
						<p>Descriptions.</p>
					</section>
					<section class="3u">
						<header>
							<h2>Recent Vehicles </h2>
						</header>
						<span class="fa fa-wrench"></span>
						<p>Descriptions.</p>
					</section>
				</div>
				<a href="AddVehicle.jsp" class="button medium">Advertise your Vehicle</a>
			</div>
		</div>

	<!-- /Extra -->

	<!-- Main -->
		<div id="main">
		
			<div class="container">

				<section>
					<header>
						<h2>Trending cars in Sri Lanka</h2>
						<span class="byline">Most Popular</span>
					</header>
				</section>

				<div class="row">
					<section class="6u right">
						<a href="#" class="image full"><img src="images/pics05.jpg" alt=""></a>
						<p>This is <strong>Imagination</strong>, a responsive HTML5 site template freebie by <a href="http://templated.co">TEMPLATED</a>. Released for free under the <a href="http://templated.co/license">Creative Commons Attribution</a> license, so use it for whatever (personal or commercial) &ndash; just give us credit! Check out more of our stuff at <a href="http://templated.co">our site</a> or follow us on <a href="http://twitter.com/templatedco">Twitter</a>.</p>
					</section>				
					<section class="6u left">
						<a href="#" class="image full"><img src="images/pics06.jpg" alt=""></a>
						<p>Duis pretium velit ac mauris. Proin eu wisi suscipit nulla suscipit interdum. Pellentesque adipiscing purus ac magna. Pellentesque habitant morbi tristique senectus aenean lectus lorem, imperdiet at, ultrices eget, ornare et, wisi purus ac magna. Pellentesque habitant morbi</p>
					</section>
				</div>
				<div class="divider"></div>
				<a href="VehicleSearch.jsp" class="button medium">View Your Recommendations </a>		
			</div>
		</div>
	<!-- /Main -->

	<!-- Featured -->
<!--		<div id="featured">
			<div class="container">
				<section>
					<header>
						<h2>Fusce ultrices fringilla metus</h2>
						<span class="byline">Posuere eleifend odio quisque semper mattis</span>
					</header>
				</section>
				<div class="row">
					<section class="4u">
						<a href="#" class="image full"><img src="images/pics01.jpg" alt=""></a>
						<p>Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus.</p>
						<p><a href="#" class="button">View Full Details</a></p>
					</section>
					<section class="4u">
						<a href="#" class="image full"><img src="images/pics03.jpg" alt=""></a>
						<p>Pellentesque tristique ante ut risus. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus.</p>
						<p><a href="#" class="button">View Full Details</a></p>
					</section>
					<section class="4u">
						<a href="#" class="image full"><img src="images/pics04.jpg" alt=""></a>
						<p>Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus.</p>
						<p><a href="#" class="button">View Full Details</a></p>
					</section>
				</div>
			</div>
		</div>-->
	<!-- /Featured -->


	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
			Design: <a href="">Samitha Kahawala</a>	
                        </div>
		</div>


	</body>
</html>