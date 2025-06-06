<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add a new slot</title>
<style type="text/css">
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 24px;
	text-align: center;
}

.input {
	height: 20px;
	width: 300px;
	padding: 8px;
}
</style>
</head>
<body>
	<%
	HttpSession sessionObj = request.getSession(false);
	if (sessionObj == null || sessionObj.getAttribute("username") == null) {
		response.sendRedirect("login.jsp?error=Please login first.");
	}
	%>
	<jsp:include page="admin-header.jsp"></jsp:include>
	<h2>Add new Slot</h2>
	<div class="formdiv">
		<form action="new-slot" method="post">
			<table>
				<tbody>
					<tr>
						<td><label for="slot_name">Slot Name</label></td>
						<td><input type="text" id="slot_name" class="input"
							name="slot_name"></td>
					</tr>
					<tr>
						<td><label for="slot_location">Slot Location</label></td>

						<td><input id="slot_location" name="slot_location"
							style="width: 300px; padding: 8px"></td>
					</tr>

					<tr>
						<td><label for="vehicle_type">Vehicle Type</label></td>
						<td><label> <input type="radio" id="vehicle_bike"
								value="bike" name="vehicle_type"> Bike
						</label> <label> <input type="radio" id="vehicle_car" value="car"
								name="vehicle_type"> Car
						</label> <label> <input type="radio" id="vehicle_truck"
								value="truck" name="vehicle_type"> Truck
						</label></td>
					</tr>

					<tr>
						<td><label for="slot_price">Price per hour</label></td>
						<td><input type="text" id="slot_price" class="input"
							name="slot_price"></td>
					</tr>

					<tr>
						<td colspan="2"><button type="submit">SAVE</button></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>