<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update User</title>
</head>
<body>
    <h1>Update User</h1>

    <s:form action="userUpdate" method="post">
        <s:hidden name="user.id" value="%{user.id}"/>
        <s:textfield name="user.name" label="Name" value="%{user.name}" required="true"/>
        <s:textfield name="user.email" label="Email" value="%{user.email}" required="true"/>
        <s:submit value="Update User"/>
    </s:form>

    <br>
    <s:a href="userList">Back to User List</s:a>
</body>
</html>
