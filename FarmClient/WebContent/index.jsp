<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Farmit</title>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"
			href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

			<meta http-equiv="Content-Type"
				content="text/html; charset=iso-8859-1" />
			<link rel="stylesheet" href="skeleton.css">
				<link rel="stylesheet" type="text/css" href="farmit.css" />
</head>
<body>
	<%@ page import="javax.servlet.http.*"%>

	<%@ page import="java.util.*"%>
	<%@ page import="example.farm.model.*"%>
	<!-- Begin Wrapper -->
	<div id="wrapper">

		<!-- Begin Header -->
		<div id="header">

			<!-- End Header -->
			<!-- Begin Navigation -->
			<div>
				<%@ include file="includedivision.jsp"%>
			</div>
			<!-- End Navigation -->
			<!-- Begin Faux Columns -->
			<div id="faux">
					<%@ include file="includeleft.jsp"%>

				<div id="content">
					<h1>Information</h1>
					<br />
					<div style="width: 65%">
						<canvas id="canvas" height="400" width="400"></canvas>
					</div>

					<%
						List<Food> foods = (List<Food>) request.getAttribute("allFood");
						int hay = 0;
						int oat = 0;
						int powerfeed = 0;
			
						for (Food f : foods) {
							if (f.getNameFood().equals("powerfeed")) {
								powerfeed = f.getAmount();
							} else if ((f.getNameFood().equals("oats"))) {
								oat = f.getAmount();
							} else {
								hay = f.getAmount();
							}
						
						}
					%>

					<input type="number" id="powerfeed" value="<%=powerfeed%>" hidden>
						<input type="number" id="oat" value="<%=oat%>" hidden> <input
							type="number" id="hay" value="<%=hay%>" hidden> <script>
								var randomScalingFactor = function() {
									return Math.round(Math.random() * 100)
								};
								var hay = document.getElementById("hay").value;
								var oat = document.getElementById("oat").value;
								var powerfeed = document
										.getElementById("powerfeed").value;
								var barChartData = {
									labels : [ "PowerFeed", "Oats", "Hay" ],
									datasets : [

									{
										fillColor : "rgba(65, 154, 18, 0.38)",
										strokeColor : "rgba(220,220,220,0.8)",
										highlightFill : "rgba(65, 154, 18, 0.38)",
										highlightStroke : "rgba(220,220,220,1)",
										data : [ powerfeed, oat, hay ]
									}

									]

								}
								window.onload = function() {
									var ctx = document.getElementById("canvas")
											.getContext("2d");
									window.myBar = new Chart(ctx).Bar(
											barChartData, {
												scaleOverride : true,
												scaleSteps : 10,
												scaleStepWidth : 100,
												scaleStartValue : 0,

												responsive : true
											});
								}
							</script>
								
								<%if(request.getAttribute("msgKill")==null){
									 }else{ %>
									 	<center><%=request.getAttribute("msgKill")%></center><%
									}%>
				</div>
				<!-- End Content Column -->
				<!-- Begin Right Column -->
<%@ include file="includeright.jsp"%>

				
			<!-- End Faux Columns -->
			<!-- Begin Footer -->
		<%@ include file="includefooter.jsp"%>
		<!-- End Wrapper -->
</body>
<script src="/FarmClient/Chart.js"></script>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
<script src="/FarmClient/myscripts.js"></script>
</html>
