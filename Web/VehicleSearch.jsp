<%-- 
    Document   : VehicleSearch
    Created on : Feb 19, 2016, 11:05:12 AM
    Author     : SAMITHA
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Vehicle search</title>
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
	<body>

	<div id="header-wrapper">

		<!-- Header -->
			<div id="header">
				<div class="container">
						
					<!-- Logo -->
						<div id="logo">
							<h1><a href="#">Search Vehicle</a></h1>
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
                                    <span class="fa fa-cubes"><%@ include file="SessionPage.jsp"%></span>
				</div>
			</div>
		<!-- /Banner -->

	</div>

	<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row">
		
					<div class="3u">
						<section class="sidebar">
							<header>
								<h2>Your Requirments</h2>
							</header>
							
							 <form  name="VehicleInfo" action="Recomender" >
                                                        <p>Vehicle Informations</p><br>
                                                        <hr/>
                                                        <br>
                                                        <label>Please Select Vehicle Body Style:</label><br>
                                                        <select name="btype" required>
                                                            <option>Couple</option>
                                                            <option>Saloon</option>
                                                            <option>Hatchback</option>
                                                            <option>FullSizeVan</option>
                                                            <option>StationWagon</option>
                                                            <option>SUV</option>
                                                        </select><br>
                                                        <label>Amount of people should seat: </label><br>
                                                       <select name="people" required>
                                                            <option>2</option>
                                                            <option>4-5</option>
                                                            <option>6</option>
                                                            <option>8</option>
                                                        </select><br>
                                                        <label>Please Select Transmission type</label><br>
                                                        <select name="Transmission" required>
                                                           <option>Auto</option>
                                                            <option>Manual</option>
                                                        </select>
                                                        <br>
                                                        <label>Please Select Engine Type</label><br>
                                                        <select name="engine" required>
                                                            <option>Diesel</option>
                                                            <option>Hybrid</option>
                                                            <option>Petrol</option>
                                                       </select><br>
                                                        <label>Drive</label><br>
                                                        <select name="drive" required>
                                                            <option>FrontWheel</option>
                                                            <option>RearWheel</option>
                                                            <option>FourWheel</option>
                                                       </select><br>
                                                        <br>
                                                        <input type="submit" value="View recormendetion" />
                                                    </form>
							
						</section>
<!--						<section class="sidebar">
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
						</section>-->
					</div>
				
					<div class="9u skel-cell-important">
						<section>
							<header>
								<h2>Integer gravida nibh quis urna</h2>
								<span class="byline">Augue praesent a lacus at urna congue rutrum</span>
							</header>
        
            <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("Vehicle_List") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("Vehicle_List");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "#eeffee";
                        }
                        count++;
                        ArrayList V_list = (ArrayList) itr.next();
                        
            %>
            
            <section class="sidebar">
	<header>
              
            <a href="UserVehicle.jsp?id=<%=V_list.get(0)%>"<h2><%=V_list.get(2)%></h2></a>
              
<!--               <div align="left">Image: <%//=V_list.get(8)%></div>-->
	</header>
     
      <table width="80%" style="border:thick" onMouseMove="this.bgColor='#F1F1F1'" onMouseout="this.bgColor='transparent'">
            <tr>
        <td width="28%" rowspan="4" align="center" valign="middle"><%//=V_list.get(0)%><a href="UserVehicle.jsp?id=<%//=V_list.get(0)%>"></a></td>
        <td colspan="3" style="font-size:14pt;" valign="middle"><a href='UserVehicle.jsp?id=<%//=V_list.get(0)%>'></td>
        <td width="1%"></td>
    </tr>
    <tr>
        <td colspan="2" style="font-size:12pt" valign="middle"><%=V_list.get(1)%> <%=V_list.get(2)%></td>
        <td align="right" style="color:#F90" valign="middle">CONTACT SELLER</td>
        <td width="1%" valign="middle"></td>
    </tr>
    <tr>
        <td width="20%" style="font-size:10pt;" valign="middle">Transmission: <%=V_list.get(3)%></td>
        <td width="25%" style="font-size:10pt;" valign="middle">Millage: <%=V_list.get(5)%> Kilometers</td>
        <td align="right" style="font-size:10pt;" valign="middle"><%=V_list.get(7)%></td>
        <td width="1%" style="font-size:10pt;" valign="middle"></td>
    </tr>
    <tr>
        <td style="font-size:10pt;">Fuel Type: Deisel</td>
        <td style="font-size:10pt;">Engine Capacity: <%=V_list.get(4)%></td>
        <td align="right" style="font-size:10pt;"></td>
        <td width="1%" style="font-size:10pt;"></td>
    </tr>
</table>     
                <hr>
            </section>
          
            
            <%
                    }
                }
                if (count == 0) {
            %>
          
            <p><b>No Record Found..</b></p>
            
            <%            }
            %>
        
                                                    
                                                    
                                                    
                                                    
                                                    
							</section>
					</div>
					
				</div>
			</div>
		</div>
	<!-- Main -->

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href="">Samitha Kahawala</a></div>
		</div>


	</body>
</html>