<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css"/>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>Register</h1>
				<form:form action="/users/process/register" method="post" modelAttribute="newUser">
				    <div class="form-group">
				        <label>First Name</label>
				        <form:input path="firstName" class="form-control" />
				        <form:errors path="firstName" class="text-danger" />
				    </div>
				    <div class="form-group">
				        <label>Last Name</label>
				        <form:input path="lastName" class="form-control" />
				        <form:errors path="lastName" class="text-danger" />
				    </div>
				    <div class="form-group">
				        <label>Email</label>
				        <form:input path="email" class="form-control" />
				        <form:errors path="email" class="text-danger" />
				    </div>
				    <div class="form-group">
				        <label>Password</label>
				        <form:input path="password" class="form-control" />
				        <form:errors path="password" class="text-danger" />
				    </div>
				    <div class="form-group">
				        <label>Confirm Password</label>
				        <form:input path="confirm" class="form-control" />
				        <form:errors path="confirm" class="text-danger" />
				    </div>
				    <input type="submit" value="Register" class="btn btn-primary" />
				</form:form>
			</div>
			<div class="col">
			<h1>login</h1>
			<form:form action="/users/process/login" method="post" modelAttribute="loginUser">
				    <div class="form-group">
				        <label>Email</label>
				        <form:input path="email" class="form-control" />
				        <form:errors path="email" class="text-danger" />
				    </div>
				    <div class="form-group">
				        <label>Password</label>
				        <form:input path="password" class="form-control" />
				        <form:errors path="password" class="text-danger" />
				    </div>
				    <input type="submit" value="Login" class="btn btn-primary" />
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>