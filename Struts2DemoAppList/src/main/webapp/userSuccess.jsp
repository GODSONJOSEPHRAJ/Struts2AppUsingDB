<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Success</title>
</head>
<body>
    <h1>Operation Successful!</h1>
    <a href="index.jsp">Go Back to Add New User</a> <br>
    <s:a action="userList">View All Users</s:a>
    
</body>
</html>
