<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css"/>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css"/>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h1>Welcome to the Dashboard <c:out value="${loggedInUser.firstName}"/> </h1>
		<a href="/shows/new" class="btn btn-success">+Create</a>
		<a href="/users/logout" class="btn btn-primary">logout</a>
		<h1>All Shows from Database</h1>
		
		<table class="table table-dark">
		  <thead>
		    <tr>
		      <th scope="col">Id</th>
		      <th scope="col">Title</th>
		      <th scope="col">Network</th>
		      <th scope="col">Release Date</th>
		      <th scope="col">Description</th>
		      <th scope="col">Actions </th>
		    
		    </tr>
		  </thead>
		  <tbody>
		    <c:forEach items="${allShows}" var="show">
			    <tr>
						<td>${show.id}</td>
						<td>${show.title}</td>
						<td>${show.network}</td>
						<td>${show.releaseDate}</td>
						<td>${show.description}</td>
						
						<td>
							<a href="/shows/display/${show.id}">show</a>
							<c:if test="${user_id == show.user.id}"> 
								||<a href="/shows/edit/${show.id}" class="btn btn-warning">Edit</a>||
								 <form action="/shows/delete/${show.id}" method="post">
									<input type="hidden" name="_method" value="delete"/>
									<input type="submit" value="Delete" class="btn btn-danger"/>
								</form>				
							 </c:if>
						</td>
					
			    </tr>
			</c:forEach>
		  </tbody>
		</table>

	 <h2>All Users</h2>
	<table class="table table-dark">
	  <thead>
	    <tr>
	      <th scope="col">id</th>
	      <th scope="col">User Name</th>
	      <th scope="col">Email</th>
	      <th scope="col">Total Shows</th>
	    </tr>
	  </thead>
	  <tbody>
	    <c:forEach items="${allUsers}" var="user">
		    <tr>
					<td>${user.id}</td>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.email}</td>
		    </tr>
		</c:forEach>
	  </tbody>
	</table> 
</body>
</html> 