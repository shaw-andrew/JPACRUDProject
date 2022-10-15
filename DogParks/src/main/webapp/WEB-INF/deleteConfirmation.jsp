<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Confirmation</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="navbar.jsp" />
	<main class="container-fluid">
		<h1>Delete Confirmation</h1>

		<div>
		<c:choose>
		<c:when test="${confirm == true }">
		<p>The park you selected was deleted successfully</p>
		</c:when>
		<c:otherwise>
		<p>The park you selected could not be deleted. An error occurred. Please try again. </p>
		</c:otherwise>
		</c:choose>
	
		</div>
		
	</main>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>