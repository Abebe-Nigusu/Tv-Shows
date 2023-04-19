<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<a href="/">Back to the shows</a>
	<h1><c:out value="${show.title}"/></h1>
	<h4><c:out value="${show.network}"/></h4>
	<h4><c:out value="${show.releaseDate}"/></h4>
	<h4><c:out value="${show.description}"/></h4>
	<h4> Posted by: <c:out value="${show.user.firstName}"/> <c:out value="${show.user.lastName}"/></h4>
</body>
</html>