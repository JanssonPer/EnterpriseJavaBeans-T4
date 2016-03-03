<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Farmit</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<link rel="stylesheet" href="skeleton.css">
			<link rel="stylesheet" type="text/css" href="farmit.css" />
</head>
<body>

	<%@ page import="javax.servlet.http.*"%>
	<%@ page import="example.farm.model.*"%>



	<!-- Begin Wrapper -->
	<div id="wrapper">
		<a href="index.jsp"><img id="logga" src="signLogoFarm.png"
			height="120px" /> </a>
		<!-- Begin Header -->
		<div id="header"></div>
		<!-- End Header -->
		<!-- Begin Navigation -->
		<div>
			<%@ include file="includedivision.jsp"%>
		</div>
		<!-- End Navigation -->
		<!-- Begin Faux Columns -->
		<div id="faux">

			<div id="leftcolumn"></div>

			<div id="content">

				<div class="container">

					<h3>Update animal</h3>
					<%
						Animal a = (Animal) request.getAttribute("animal");
					%>
						<form action="/FarmClient/Farmlet" method="post">
							<label>Type of animal</label>
							<br />
							<input type="text" id="foundType" name="foundType"
								maxlength="222" readonly
								value="<%=a.getClass().getSimpleName()%>"> <br /> <label>Status</label><br />
								<select id="foundstatusAnimal" name="foundstatusAnimal">
									<%
										if (a.getStatusAnimal().equals("Healthy")) {
									%>
									<option selected value="Healthy">Healthy</option>
									<option value="Sick">Sick</option>
									<option value="Gluefactory">Gluefactory</option>
									<%
										}
										if (a.getStatusAnimal().equals("Sick")) {
									%>
									<option value="Healthy">Healthy</option>

									<option selected value="Sick">Sick</option>

									<option value="Gluefactory">Gluefactory</option>
									<%
										}
										if (a.getStatusAnimal().equals("Gluefactory")) {
									%>
									<option value="Healthy">Healthy</option>
									<option value="Sick">Sick</option>
									<option selected value="Gluefactory"><%=a.getStatusAnimal()%></option>
									<%
										}
									%>
							</select> <br> <label>IdAnimal</label> <br> <input type="text"
										name="foundidAnimal" maxlength="5" readonly
										value="<%=a.getIdAnimal()%>">
										 <br> <label>Name</label>
										<br /> <input type="text" name="foundname" maxlength="222" required value="<%=a.getName()%>"> <br> <label>Age</label>
										<br /> <input type="text" name="foundage" maxlength="2" required value="<%=a.getAge()%>"> <br> <label>Box</label>
										<br /> <input type="text" name="foundidBox"	maxlength="2" required value="<%=a.getBox().getIdBox()%>"> <br>
										<label id="food"> Food </label>
										 <br> <input type="text" name="foundfood" maxlength="2" required value="<%=a.getAmountOfFood()%>"> 
										 <br /><input type="text" name="foundHay" maxlength="2" required value="<%=a.getAmountOfHay()%>" />
												<br /> <br>
												<div class="row"></div> <button type="submit" value="update">Update</button>
																						<input name="operation" value="updateAnimal"
																						type="hidden">
						</form>
						<form action="/FarmClient/Farmlet" method="post">
							<button type="submit" value="find">Back</button>
							<input name="operation" value="find" type="hidden">
						</form>
						</div>
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
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
<script src="/FarmClient/myscripts.js"></script>
</html>
