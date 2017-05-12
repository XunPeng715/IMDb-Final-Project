<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/main.css"/>" />

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Browse Movie</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<jsp:include page="navbar.jsp" />
	<h1>Browse Movie</h1>
	<div class="center-block">
	<h1>Browse Movie</h1>
		<h2>Please enter keywords:</h2>
		<br />
		<button class="btn btn-primary" type="button" data-toggle="collapse"
			data-target="#title" aria-expanded="false" aria-controls="title">
			+title</button>
		<button class="btn btn-primary" type="button" data-toggle="collapse"
			data-target="#director" aria-expanded="false"
			aria-controls="director">+director</button>
		<button class="btn btn-primary" type="button" data-toggle="collapse"
			data-target="#actor" aria-expanded="false" aria-controls="actor">
			+actor</button>
		<button class="btn btn-primary" type="button" data-toggle="collapse"
			data-target="#actress" aria-expanded="false" aria-controls="actress">+actress</button>
		<button class="btn btn-primary" type="button" data-toggle="collapse"
			data-target="year" aria-expanded="false" aria-controls="year">+year</button>
		<form id='form' action="${contextPath}/movie/search.htm" method="POST">
			<div class="collapse" id="title">
				<div class="form-group">
					<label for="title">title</label> <input type="text" name="title"
						class="form-control" id="title" placeholder="title">
				</div>

			</div>
			<div class="collapse" id="director">
				<div class="form-group">
					<label for="director">director</label> <input type="text"
						name="director" class="form-control" id="director"
						placeholder="director">
				</div>
			</div>
			<div class="collapse" id="actor">
				<div class="form-group">
					<label for="actor">actor</label> <input type="text" name="actor"
						class="form-control" id="actor" placeholder="actor">
				</div>
			</div>

			<div class="collapse" id="actress">
				<div class="form-group">
					<label for="actress">actress</label> <input type="text"
						name="actress" class="form-control" id="actress"
						placeholder="actress">
				</div>
			</div>
			<div class="collapse" id="year">
				<div class="form-group">
					<label for="year">year</label> <input type="text" name="year"
						class="form-control" id="year" placeholder="year">
				</div>
			</div>
			<br><br>
			<input class="btn btn-primary" type="submit" value="Search Movie" />
		</form>
	</div>
</body>
</html>