<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add User</title>
</head>
<body>
    <h1>Add a New User</h1>
    <form action="userAdd" method="post">
        Name: <input type="text" name="user.name" required /><br>
        Email: <input type="email" name="user.email" required /><br>
        <input type="submit" value="Add User" />
    </form>

    <h2>Existing Users</h2>
    <a href="userList">View All Users</a>
</body>
</html>
