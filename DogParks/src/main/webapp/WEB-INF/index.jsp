<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Front Range Dog Parks</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<jsp:include page="navbar.jsp" />

	<main class="container-fluid">

		<h1>Front Range Dog Parks</h1>

		<form action="getPark.do" method="GET">
			Park ID: <input type="text" name="pid" class="form-control"/> <input type="submit"
				value="Show Park" class="btn btn-primary" /> 
				</form>
		<hr>
		<table class="table table-striped table-hover">
			<thead class="table-dark">
				<tr>
					<th>Name</th>
					<th>City</th>
					<th>Rating</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="park" items="${dogParks}">
					<tr>
						<td><a href="getPark.do?pid=${park.id }">${park.name}</a></td>
						<td>${park.city}</td>
						<td>${park.rating}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</main>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>