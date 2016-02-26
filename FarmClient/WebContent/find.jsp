<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Farmit</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="javascript" src="script.js"> </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="farmit.css" />
</head>
<body>

<%@ page import="javax.servlet.http.*" %>
<%@ page import="example.farm.model.*" %>



	<!-- Begin Wrapper -->
	<div id="wrapper">
		<a href="index.jsp"><img id="logga" src="farmitLogga.jpg"
			height="100px" /> </a>
		<!-- Begin Header -->
		<div id="header">

			<h1>
			Control your farm 
			</h1>
		</div>
		<!-- End Header -->
		<!-- Begin Navigation -->
		<div id="navigation">
			<a href="index.jsp">Home</a> <a href="create.jsp">Add</a> <a
				href="find.jsp">Find</a> 
		</div>
		<!-- End Navigation -->
		<!-- Begin Faux Columns -->
		<div id="faux">

			<div id="leftcolumn"></div>

			<div id="content">

				<div class="container">
							
							<h3>Find Animal</h3>

							<form action="/FarmClient/Farmlet" method="post">
									<label>Find by Animal id</label>
									<br>
									<input type="numbers" name="findIdAnimal" maxlength="5" required>
									<button type="submit" value="btn_findByIdAnimal">Find</button>
									<input name="operation" value="findByIdAnimal" type="hidden">
							</form>
							<h3>Find Food</h3>
							<form action="/FarmClient/Farmlet" method="post">
									<label>Find by Food name</label>
									<br>
									<input type="text" name="findFoodName" maxlength="5" required>
									<button type="submit" value="btn_findByFoodName">Find</button>
									<input name="operation" value="findByFoodName" type="hidden">
							</form>
							<h3>Find Building</h3>
							<form action="/FarmClient/Farmlet" method="post">
									<label>Find by Building Id</label>
									<br>
									<input type="text" name="findIdBuilding" maxlength="5" required>
									<button type="submit" value="btn_findIdBuilding">Find</button>
									<input name="operation" value="findByIdBuilding" type="hidden">
							</form>
							<h3>Find Boxes</h3>
							<form action="/FarmClient/Farmlet" method="post">
									<label>Find by Box Id</label>
									<br>
									<input type="text" name="findIdBox" maxlength="5" required>
									<button type="submit" value="btn_findIdbox">Find</button>
									<input name="operation" value="findByIdBox" type="hidden">
							</form>

				</div>
			</div>
			<!-- End Content Column -->
			<!-- Begin Right Column -->
			<div id="rightcolumn"></div>
			<!-- End Right Column -->
		</div>
		<!-- End Faux Columns -->
		<!-- Begin Footer -->
		<div id="footer">farm life</div>
		<!-- End Footer -->
	</div>
	<!-- End Wrapper -->
</body>
</html>