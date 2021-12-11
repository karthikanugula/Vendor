<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
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
		<table class="table">
		   <thead>
				<tr>
					<th>ID</th>
					<th>CODE</th>
					<th>NAME</th>
					<th>TYPE</th>
					<th>EMAIL</th>
					<th>PHONE</th>
					<th>ADDRESS</th>
				</tr>
			</thead>
			<c:forEach items="${vendorDisplay}"  var="vendor">
			<tbody>
				<tr>
					<td>${vendor.id}</td>
					<td>${vendor.code}</td>
					<td>${vendor.name}</td>
					<td>${vendor.type}</td>
					<td>${vendor.email}</td>
					<td>${vendor.phone}</td>
					<td>${vendor.address}</td>
					<td><a class="btn btn-danger" href="deleteVendor?id=${vendor.id}" role="button" aria-pressed="true">Delete</a></td>
					<td><a class="btn btn-warning" href="editVendors?id=${vendor.id}" role="button" aria-pressed="true">Edit</a></td>
				</tr>
			</tbody>
			</c:forEach>
		</table>

</body>
</html>