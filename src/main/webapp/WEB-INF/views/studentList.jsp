<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<title>Students List Directory</title>
<style type="text/css">
.studentheader {
	text-align: center;
	veritcal-align: center;
	background: #1abc9c;
	color: white;
	font-size: 30px;
}
#logout {
    float: right;
    margin-left: -50%;
}
</style>
</head>
<body>

	<div class="container">

		<h3 class="studentheader">Students Directory List</h3>
		<hr>
		
			<a href="/StudentManagement/student/studentFormForAdd"
				class="btn btn-primary btn-sm mb-3"> Add New Student </a>
			<a href="/StudentManagement/logout" 
				class="btn btn-primary btn-sm mb-3 mx-auto" id="logout"> Logout </a>

		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Course</th>
					<th>Country</th>
					<th>Action</th>

				</tr>
			</thead>

			<tbody>
				<c:forEach items="${Students}" var="tempStudent">
					<tr>
						<td><c:out value="${tempStudent.firstName}" /></td>
						<td><c:out value="${tempStudent.lastName}" /></td>
						<td><c:out value="${tempStudent.course}" /></td>
						<td><c:out value="${tempStudent.country}" /></td>
						<td>
							<!-- Add "update" button/link to perform update student action -->

							<a
							href="/StudentManagement/student/studentFormForUpdate?student_Id=${tempStudent.id}"
							class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link to perform delete student action -->
							<a
							href="/StudentManagement/student/delete?student_Id=${tempStudent.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this Student?'))) return false">
								Delete </a>

						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>