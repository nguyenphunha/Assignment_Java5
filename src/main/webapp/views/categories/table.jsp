<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    table, th, td {
        border: 1px solid #ddd;
    }
    th, td {
        padding: 12px;
        text-align: left;
    }
    th {
        background-color: #007bff;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #ddd;
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
    a.edit {
        background-color: #28a745;
    }
</style>
</head>
<body>
    <h3>Category Management</h3>
<table>
    <!-- Table header -->
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Actions</th>
    </tr>
    <!-- Use JSTL forEach loop to iterate through the list of "items" -->
    <c:forEach var="item" items="${items}">
        <tr>
            <td>${item.id}</td>
            <!-- Display the name of the Category -->
            <td>${item.name}</td>
            <td>
                <a class="edit" href="/categories/edit/${item.id}">Edit</a>
                <a class="delete" href="/categories/delete/${item.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
