<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
</head>
<body>
    <h1>User List</h1>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>
                    <a href="userDelete?name=${user.name}">Delete</a> | 
                    <a href="userUpdate?oldName=${user.name}">Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="index.jsp">Back to Add User</a>
</body>
</html>
