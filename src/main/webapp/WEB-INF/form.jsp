<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<title>Omikuji Form</title>
</head>
<body>
	<div class="container">
	<h1>Send an Omikuji</h1>
	<form action="/omikuji" method = "post">
		<select class="form-select" name="number">
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
		</select> 
    <label class="form-label" for="">Enter a name of any city:</label> 
		<input class="form-control" type="text" name="city">
		<label class="form-label" for="">Enter the name of any real person</label> 
		<input class="form-control" type="text" name="person"> 
		<label class="form-label" for="">Enter professional endeavor or hobby</label> 
		<input class="form-control" type="text" name="hobby"> 
		<label class="form-label" for="">Name any type of living thing:</label> 
		<input class="form-control" type="text" name="noun"> 
		<label class="form-label" for="">Say something nice to someone:</label>
		<textarea class="form-control" name="nice" id="" cols="30" rows="10"></textarea>
		<p>Send and show a friend!</p>
		<input class="btn btn-danger" type="submit" value="Send">
	</form>
	</div>
</body>
</html>