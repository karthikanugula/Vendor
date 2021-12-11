<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<form action="updateVendor" method="post">
		<table class="table">
			<!-- <thead>
				<tr>
					<th>ID</th>
					<th>CODE</th>
					<th>NAME</th>
					<th>TYPE</th>
					<th>EMAIL</th>
					<th>PHONE</th>
					<th>ADDRESS</th>
				</tr>
			</thead> -->
			<tbody>
				<tr>
					<td>ID:</td>
					<td><input type="text" name="id" value= "${vendorid.id}" readonly></td>
				</tr>
				<tr>
					<td>CODE:</td>
					<td><input type="text" name="code" value= "${vendorid.code}"></td>
				</tr>
				<tr>
					<td>NAME:</td>
					<td><input type="text" name="name" value= "${vendorid.name}"></td>
				</tr>
				<tr>
					<td>TYPE</td>
					<td><select class="form-select"
						aria-label="Default select example" name="type">
							<option selected>Please select type</option>
							<option ${vendorid.type=='REGULAR'?'selected':''}>Regular</option>
							<option ${vendorid.type=='CONTRACT'?'selected':''}>Contract</option>
					</select></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="email" value= "${vendorid.email}"></td>
				</tr>
				<tr>
					<td>PHONE:</td>
					<td><input type="text" name="phone" value= "${vendorid.phone}"></td>
				</tr>
				<tr>
					<td>ADDRESS:</td>
					<td><textarea class="form-control rounded-0"  name = "address"  rows="5" ></textarea></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" value="Update">
	</form>
	<a href="displayVendor">View All Vendors</a>
</body>
</html>