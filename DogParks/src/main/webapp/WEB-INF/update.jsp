<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update or Delete Park</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<main class="container-fluid">
		<h2>Update Park Details</h2>

		<div>
			Park ID: ${park.id }<br>
			<form action="updatePark.do" method="POST">
				<br> 
				Name: &emsp;&emsp;&emsp;<input type="text" name="name" value="${park.name }" /><br>
				Street Address: <input type="text" name="streetAddress"
					value="${park.streetAddress }" /><br> 
				City: &emsp;&emsp;&emsp;&nbsp; <input type="text"
					name="city" value="${park.city }" /><br> 
				Zip Code:&emsp;&emsp; <input
					type="text" name="postalCode" value="${park.postalCode }" /><br>
				Park Rating:  <input type="number" name="rating"
					value="${park.rating }" /> 1-5<br> 
					<input type="hidden" name="id" value="${park.id }" /> <br> 
					<br><input type="submit"value="Submit" />
			</form>
			<br>
			<hr>
			<br>
			<br>
			<h2>Delete this park?</h2>
			<br>
			<form action="deletePark.do" method="POST">
				<input type="hidden" name="id" value="${park.id }" /> <input
					type="submit" value="Delete this park" />
			</form>

		</div>
	</main>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>