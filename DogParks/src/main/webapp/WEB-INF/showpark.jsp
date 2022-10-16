<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Park Info</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<main class="container-fluid">
		
		<div class="bg-image"
			
			style="background-image: url('${park.img}'); background-size: cover; position: relative; background-repeat: no-repeat">
	
			<div class="container">
				<div class="row">
					<div class="col"></div>
					<div class="col-6">
						<h1>Park Details</h1>
						<hr>
						<h5>${park.name}<br>
						</h5>
						<hr>
						<h6>Located in: ${park.city}</h6>

						<blockquote>${park.description }</blockquote>
						<p>Address: ${park.streetAddress }
						<p>Rating: ${park.rating }
						<p>Park ID: ${park.id }</p>
						
						<form action="updateOrDelete.do" method="GET">
							<input type="hidden" name="id" value="${park.id }" /> <input
								type="submit" value="Update or Delete Park" />
						</form>
					</div>
					<div class="col"></div>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>