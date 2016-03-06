<%-- 
    Document   : UserVehicle
    Created on : Feb 20, 2016, 7:17:17 AM
    Author     : SAMITHA
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehicle Informations</title
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
							<h1><a href="#">Imagination</a></h1>
						</div>
					
					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li class="active"><a href="index.jsp">Homepage</a></li>
								<li><a href="Vehicles.jsp">Select Your Vehicle</a></li>
								<li><a href="AddVehicle.jsp">Advertise your Vehicle</a></li>
								<li><a href="VehiclePrice.jsp">Vehicle valuation</a></li>
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
                                
      <div id="main">
		
			<div class="container">
                                
 	<div class="row">
					<section>
						<header>
							<h2>Vehicle suggesting system </h2>
							<span class="byline">Vehicle inforamation</span>
						</header>
                                            
 <%
//        int id = Integer.parseInt(request.getParameter("id"));
          int id = 1;

  
            /* TODO output your page here. You may use following sample code. */
    
    //        ArrayList al = null;
         //   ArrayList V_list = new ArrayList();
         ResultSet rs = DBLayer.DB.get().createStatement().executeQuery("select * from vehicle where idVehicle='"+id+"'");    
        
           while (rs.next()) {
             //   al = new ArrayList();
   
%>          
         

    	<header>
         <h2><%=rs.getString(2)%></h2><br/>
         <h2><%=rs.getString(1)%></h2><br/>
         <h2><%=rs.getString(3)%></h2><br/>
         <h2><%=rs.getString(5)%></h2><br/>
	</header>
              <table width="80%" style="border:thick" onMouseMove="this.bgColor='#F1F1F1'" onMouseout="this.bgColor='transparent'">
            <tr>
        <td width="28%" rowspan="4" align="center" valign="middle"><%//=V_list.get(0)%><a href="UserVehicle.jsp?id=<%//=V_list.get(0)%>"></a></td>
        <td colspan="3" style="font-size:14pt;" valign="middle"><a href='UserVehicle.jsp?id=<%//=V_list.get(0)%>'></td>
        <td width="1%"></td>
    </tr>
    <tr>
        <td colspan="2" style="font-size:12pt" valign="middle"><%=rs.getString(2)%> <%=rs.getString(2)%></td>
        <td align="right" style="color:#F90" valign="middle">CONTACT SELLER</td>
        <td width="1%" valign="middle"></td>
    </tr>
    <tr>
        <td width="20%" style="font-size:10pt;" valign="middle">Transmission: <%=rs.getString(2)%></td>
        <td width="25%" style="font-size:10pt;" valign="middle">Millage: <%=rs.getString(2)%> Kilometers</td>
        <td align="right" style="font-size:10pt;" valign="middle"><%=rs.getString(2)%></td>
        <td width="1%" style="font-size:10pt;" valign="middle"></td>
    </tr>
    <tr>
        <td style="font-size:10pt;">Fuel Type: Deisel</td>
        <td style="font-size:10pt;">Engine Capacity: <%=rs.getString(2)%></td>
        <td align="right" style="font-size:10pt;"></td>
        <td width="1%" style="font-size:10pt;"></td>
    </tr>
    
</table>
<% } %>
						</section>
				</div>
                                
                                
          
                        </div>
          
      </div>

    </body>
</html>
