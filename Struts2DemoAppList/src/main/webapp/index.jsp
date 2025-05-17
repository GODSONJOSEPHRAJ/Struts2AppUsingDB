<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add User</title>
</head>
<body>
    <h1>Add a New User</h1>

    <s:form action="userAdd" method="post">
        <s:textfield name="user.name" label="Name" required="true"/>
        <s:textfield name="user.email" label="Email" required="true"/>
        <s:submit value="Add User"/>
    </s:form>

    <h2>Existing Users</h2>
    <s:a action="userList">View All Users</s:a>
</body>
</html>
