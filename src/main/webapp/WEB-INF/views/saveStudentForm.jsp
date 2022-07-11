<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Save New Student Details</title>
<style type="text/css">
.studentheader {
	text-align: center;
	veritcal-align: center;
	background: #1abc9c;
	color: white;
	font-size: 30px;
}
</style>
</head>

<body>

	<div class="container">

		<h3 class="studentheader">Student List Directory</h3>
		<hr>

		<p class="h4 mb-4">Student Details</p>

		<form action="/StudentManagement/student/save" method="POST">

			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${NewStudent.id}" />

			<div class="form-inline">
				<input type="text" name="firstName" value="${NewStudent.firstName}"
					class="form-control mb-4 col-4"
					placeholder="Enter Student Frist Name">

			</div>

			<div class="form-inline">

				<input type="text" name="lastName" value="${NewStudent.lastName}"
					class="form-control mb-4 col-4"
					placeholder="Enter Student Last Name">

			</div>

			<div class="form-inline">

				<input type="text" name="course"
					value="${NewStudent.course}" class="form-control mb-4 col-4"
					placeholder="Enter Student Course">

			</div>
			<div class="form-inline">

				<input type="text" name="country" value="${NewStudent.country}"
					class="form-control mb-4 col-4" placeholder="Enter Student Country">

			</div>

			<button type="submit" class="btn btn-info col-2">Submit</button>

		</form>

		<hr>
		<a href="/StudentManagement/student/list">Back to Students List</a>

	</div>
</body>

</html>