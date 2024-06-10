<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brand Management</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 20px;
	background-color: #f8f9fa;
}

h3 {
	color: #007bff;
}

form {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form:input {
	display: block;
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

hr {
	margin: 20px 0;
}

button, a {
	display: inline-block;
	padding: 10px 20px;
	margin: 5px 0;
	text-decoration: none;
	color: white;
	background-color: #007bff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover, a:hover {
	background-color: #0056b3;
}

a {
	background-color: #dc3545;
}

a.reset {
	background-color: #6c757d;
}
</style>
</head>
<body>
	<h3>Brand Management</h3>
<!-- Begin form. action specifies the URL to which the form will submit data when the user clicks the submit button. modelAttribute links the form with the "item" object in the model. -->
<form:form action="/brands/brand" modelAttribute="item">
    <!-- Input field for the name of the Category -->
    <form:input path="name" placeholder="Brand Name?" />
    <hr>
    <!-- Button to create a new Category. When clicked, the form data will be sent to "/categories/create" -->
    <button formaction="/brands/create">Create</button>
    <!-- Button to update a Category. When clicked, the form data will be sent to "/categories/update" -->
    <button formaction="/brands/update">Update</button>
    <!-- Link to delete a Category. When clicked, the user will be redirected to "/categories/delete/{id}" with {id} being the id of the current Category -->
    <a href="/brands/delete/${item.id}">Delete</a>
    <!-- Link to reset the form. When clicked, the user will be redirected to "/categories/category" -->
    <a href="/brands/brand" class="reset">Reset</a>
</form:form>
</body>
</html>
