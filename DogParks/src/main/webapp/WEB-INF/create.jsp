<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a dog park!</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="navbar.jsp" />
	<main class="container-fluid">
		<h1>Add a park!</h1>
		Do you know of a park that we are missing? Please update our list below and be sure to add your rating!
		<div>
			<form action="createPark.do" method="POST">
			<br>Name: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name">
			<br>Address: <input type="text" name="streetAddress">
			<br>City: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="city">
			<br>Zip code: <input type="number" name="postalCode">
			<br>Rating:<br>  <input type="radio" id="rating" name="rating" value="1">
			<label for="1"> 1 star</label> <br>
			<input type="radio" id="rating" name="rating" value="2">
			<label for="2"> 2 star</label> <br>
			<input type="radio" id="rating" name="rating" value="3">
			<label for="3"> 3 star</label> <br>
			<input type="radio" id="rating" name="rating" value="4">
			<label for="4"> 4 star</label> <br>
			<input type="radio" id="rating" name="rating" value="5">
			<label for="5"> 5 star</label> 	<br><br>
			<input type="submit" value="Add this park!" />
			</form>
		</div>
	</main>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>