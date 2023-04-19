<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/css/main.css"/>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<a href="/">Back to the shows</a>
		<h1>Edit a show</h1>
	    <form:form action="/shows/process/edit/${show.id}" method="post" modelAttribute="show" >
	    	<input type="hidden" name="_method" value="put"/>
			<form:hidden path="user"/>
	        <div class="form-group">
	            <form:label path="title"> Title</form:label>
	            <form:input type="text" path="title" class="form-control"/>
	            <form:errors path="title" class="text-danger"/>
	        </div>
	        <div class="form-group">
	            <form:label path="network"> Network</form:label>
	            <form:input type="text" path="network" class="form-control"/>
	            <form:errors path="network" class="text-danger"/>
	        </div>
	        <div class="form-group">
	            <form:label path="releaseDate"> Release Date</form:label>
	            <form:input type="date" path="releaseDate" class="form-control"/>
	            <form:errors path="releaseDate" class="text-danger"/>
	        </div>
	        <div class="form-group">
	            <form:label path="description"> Description</form:label>
	            <form:input type="text" path="description" class="form-control"/>
	            <form:errors path="description" class="text-danger"/>
	        </div>
	        <input type="submit" value="Update" class="btn btn-primary"/>
	        </form:form>
		</div>
</body>
</html>